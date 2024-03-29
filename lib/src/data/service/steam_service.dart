import 'package:dio/dio.dart';
import 'package:mockito/annotations.dart';
import 'package:steam_app/src/data/model/steam_model.dart';
@GenerateMocks([SteamService])

class SteamService {
  SteamService(this.dio);
  final Dio dio;
  Future<List<SteamModel>> getSteam() async {
    const url = 'https://www.cheapshark.com/api/1.0/deals';
    try {
      final response = await dio.get(url);
      final data = List<SteamModel>.from(
          response.data.map((e) => SteamModel.fromJson(e)));
      return data;
    } catch (e) {
      throw Exception('');
    }
  }
}
