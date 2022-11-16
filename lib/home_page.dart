import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lottie/lottie.dart';
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
      backgroundColor: Color.fromARGB(255, 40, 98, 146),
      body: Column(
        children: [
          Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                color: Color.fromARGB(255, 38, 78, 138)),
            width: 600,
            height: 200,
            child: Image.asset(
              'assets/images/imagem_2022-11-16_112157890-removebg-preview.png',
              scale: 2.5,
            ),
          ),
          BlocBuilder<SteamCubit, SteamState>(builder: ((context, state) {
            if (state is LoadingState) {
              return Center(
                  child: Lottie.network(
                      'https://assets10.lottiefiles.com/packages/lf20_lit5uqwc.json'));
            } else if (state is ErrorState) {
              return Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 100),
                    child: Center(
                        child: Lottie.network(
                            'https://assets7.lottiefiles.com/packages/lf20_g94pyiq4.json')),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      'Erro 500: Falha com a comunicação com o servidor',
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w600,
                          color: Colors.white),
                    ),
                  )
                ],
              );
            } else if (state is LoadedState) {
              return TestWidget(
                data: state.data,
              );
            } else {
              return const Center(
                child: Text('Error'),
              );
            }
          })),
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
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: GridView.builder(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              childAspectRatio: 2 / 4,
              crossAxisCount: 2,
              mainAxisSpacing: 5,
              crossAxisSpacing: 5,
            ),
            itemCount: data.length,
            itemBuilder: (BuildContext context, int index) {
              return Column(children: [
                Center(
                  child: Text(
                    '${data[index].title}',
                    style: const TextStyle(
                        color: Color.fromARGB(255, 0, 0, 0),
                        fontSize: 20,
                        fontWeight: FontWeight.w900),
                  ),
                ),
                Icon(Icons.sports_esports),
                Image.network(
                  data[index].thumb,
                  width: 250,
                  height: 250,
                )
              ]);
            }),
      ),
    );
  }
}
