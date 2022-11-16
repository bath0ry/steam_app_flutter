import 'package:bloc/bloc.dart';
import 'package:steam_app/src/data/model/steam_model.dart';
import 'package:steam_app/src/data/service/steam_service.dart';
import 'package:steam_app/src/data/states/steam_states.dart';

class SteamCubit extends Cubit<SteamState> {
  SteamCubit({required this.service}) : super(InitialState()) {
    getSteamItems();
  }
  final SteamService service;
  void getSteamItems() async {
    try {
      emit(LoadingState());
      List<SteamModel> data = await service.getSteam();
      emit(LoadedState(data));
    } catch (e) {
      emit(ErrorState());
    }
  }
}
