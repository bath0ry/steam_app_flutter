import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:steam_app/home_page.dart';
import 'package:steam_app/steam_cubit.dart';
import 'package:steam_app/steam_service.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MultiBlocProvider(providers: [
        BlocProvider<SteamCubit>(
            create: (BuildContext context) =>
                SteamCubit(service: SteamService(Dio())))
      ], child: MyHomePage()),
    );
  }
}
