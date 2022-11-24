import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:lottie/lottie.dart';

import 'package:steam_app/src/home/view/widgets/home_game_list.dart';
import 'package:steam_app/src/data/cubit/steam_cubit.dart';
import 'package:steam_app/src/data/states/steam_states.dart';

class HomePageWidgets extends StatelessWidget {
  const HomePageWidgets({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              color: Color.fromARGB(255, 255, 255, 255)),
          width: 600,
          height: 200,
          child: Image.asset(
            'assets/images/imagem_2022-11-16_112157890-removebg-preview.png',
            scale: 2.5,
          ),
        ),
        Text(
          'Games on sale!',
          style: TextStyle(
              fontSize: 30, fontWeight: FontWeight.w500, color: Colors.white),
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
                        color: Color.fromARGB(255, 0, 0, 0)),
                  ),
                ),
              ],
            );
          } else if (state is LoadedState) {
            return HomePageGameList(data: state.data);
          } else {
            return IconButton(
                onPressed: () {
                  state;
                },
                icon: Icon(
                  Icons.change_circle,
                  size: 50,
                  color: Color.fromARGB(255, 54, 38, 32),
                ));
          }
        })),
      ],
    );
  }
}
