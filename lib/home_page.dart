import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:steam_app/steam_cubit.dart';
import 'package:steam_app/steam_model.dart';
import 'package:steam_app/steam_states.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          BlocBuilder<SteamCubit, SteamState>(builder: ((context, state) {
            if (state is LoadingState) {
              return const Center(child: CircularProgressIndicator());
            } else if (state is ErrorState) {
              return const Center(child: Text('Erro ao pegar dados'));
            } else if (state is LoadedState) {
              return TestWidget(
                data: state.data,
              );
            } else {
              return const Center(
                child: Text('Error'),
              );
            }
          }))
        ],
      ),
    );
  }
}

class TestWidget extends StatelessWidget {
  const TestWidget({
    Key? key,
    required this.data,
  }) : super(key: key);
  final List<SteamModel> data;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
          itemCount: data.length,
          itemBuilder: (BuildContext context, int index) {
            return Column(children: [
              Padding(
                  padding: const EdgeInsets.only(top: 40, bottom: 5),
                  child: Center(
                      child: Text(
                    '${data[index].title}',
                    style: const TextStyle(
                        color: Color.fromARGB(255, 0, 0, 0),
                        fontSize: 28,
                        fontWeight: FontWeight.w900),
                  )))
            ]);
          }),
    );
  }
}
