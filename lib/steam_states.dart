import 'package:equatable/equatable.dart';
import 'package:steam_app/steam_model.dart';

abstract class SteamState extends Equatable {}

class InitialState extends SteamState {
  @override
  List<Object> get props => [];
}

class LoadingState extends SteamState {
  @override
  List<Object> get props => [];
}

class LoadedState extends SteamState {
  LoadedState(this.data);

  final List<SteamModel> data;

  @override
  List<Object> get props => [data];
}

class ErrorState extends SteamState {
  @override
  List<Object> get props => [];
}
