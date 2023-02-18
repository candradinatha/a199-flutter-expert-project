// To parse this JSON data, do
//
//     final tvResponse = tvResponseFromJson(jsonString);

import 'dart:convert';

import 'package:ditonton/data/models/tv_detail_model.dart';
import 'package:ditonton/data/models/tv_model.dart';
import 'package:equatable/equatable.dart';

TvResponse tvResponseFromJson(String str) => TvResponse.fromJson(json.decode(str));

String tvResponseToJson(TvResponse data) => json.encode(data.toJson());

class TvResponse extends Equatable {
  TvResponse({
    this.page,
    this.results,
    this.totalPages,
    this.totalResults,
  });

  int? page;
  List<TvModel>? results;
  int? totalPages;
  int? totalResults;

  factory TvResponse.fromJson(Map<String, dynamic> json) => TvResponse(
    page: json["page"],
    results: json["results"] == null ? [] : List<TvModel>.from(json["results"]!.map((x) => TvModel.fromJson(x))),
    totalPages: json["total_pages"],
    totalResults: json["total_results"],
  );

  Map<String, dynamic> toJson() => {
    "page": page,
    "results": results == null ? [] : List<dynamic>.from(results!.map((x) => x.toJson())),
    "total_pages": totalPages,
    "total_results": totalResults,
  };

  @override
  List<Object?> get props => [
    page,
    results,
    totalPages,
    totalResults,
  ];
}
