import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:steam_app/src/data/cubit/steam_cubit.dart';
import 'package:steam_app/src/data/service/steam_service.dart';
import 'package:steam_app/src/home/view/home_page.dart';
import 'package:steam_app/src/home/view/widgets/home_page_widgets.dart';

void main() {
  testWidgets('My widget has Games on Sale', (tester) async {
    await tester.pumpWidget(MaterialApp(
      home: MultiBlocProvider(providers: [
        BlocProvider<SteamCubit>(
            create: (BuildContext context) =>
                SteamCubit(service: SteamService(Dio())))
      ], child: const SafeArea(child: HomePageWidgets())),
    ));
    await tester.pumpAndSettle(const Duration(seconds: 1));
    final saleFinder = find.text('Games on sale');
    expect(saleFinder, findsOneWidget);
  });
  testWidgets('My widget has IMAGE', (tester) async {
    await tester.pumpWidget(MaterialApp(
      home: MultiBlocProvider(providers: [
        BlocProvider<SteamCubit>(
            create: (BuildContext context) =>
                SteamCubit(service: SteamService(Dio())))
      ], child: const SafeArea(child: MyHomePage())),
    ));
    expect(
        find.image(FileImage(File(
            'assets/images/imagem_2022-11-16_112157890-removebg-preview.png'))),
        findsOneWidget);
  });
}
