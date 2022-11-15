// To parse this JSON data, do
//
//     final steamModel = steamModelFromJson(jsonString);

import 'package:meta/meta.dart';
import 'dart:convert';

List<SteamModel> steamModelFromJson(String str) =>
    List<SteamModel>.from(json.decode(str).map((x) => SteamModel.fromJson(x)));

String steamModelToJson(List<SteamModel> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class SteamModel {
  SteamModel({
    required this.internalName,
    required this.title,
    required this.salePrice,
    required this.normalPrice,
    required this.metacriticScore,
    required this.releaseDate,
    required this.thumb,
  });

  String internalName;
  String title;

  String salePrice;
  String normalPrice;

  String metacriticScore;

  int releaseDate;

  String thumb;

  factory SteamModel.fromJson(Map<String, dynamic> json) => SteamModel(
        internalName: json["internalName"],
        title: json["title"],
        salePrice: json["salePrice"],
        normalPrice: json["normalPrice"],
        metacriticScore: json["metacriticScore"],
        releaseDate: json["releaseDate"],
        thumb: json["thumb"],
      );

  Map<String, dynamic> toJson() => {
        "internalName": internalName,
        "title": title,
        "salePrice": salePrice,
        "normalPrice": normalPrice,
        "metacriticScore": metacriticScore,
        "releaseDate": releaseDate,
        "thumb": thumb,
      };
}
