import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:steam_app/src/data/cubit/steam_cubit.dart';
import 'package:steam_app/src/data/service/steam_service.dart';
import 'package:steam_app/src/home/view/home_page.dart';

void main() {
  group('Widget tests', () {
    testWidgets('My widget has title', (tester) async {
      await tester.pumpWidget(
        MaterialApp(home: SafeArea(child: MyHomePage())),
      );
      final titleFinder = find.text('data[index].title');
      expect(titleFinder, findsOneWidget);
    });
  });
}
