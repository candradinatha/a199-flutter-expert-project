// To parse this JSON data, do
//
//     final tvModel = tvModelFromJson(jsonString);

import 'dart:convert';

import 'package:ditonton/data/models/genre_model.dart';
import 'package:ditonton/data/models/production_company_model.dart';
import 'package:ditonton/data/models/production_country_model.dart';
import 'package:ditonton/data/models/season_model.dart';
import 'package:ditonton/data/models/spoken_language_model.dart';
import 'package:equatable/equatable.dart';

import 'created_by_model.dart';
import 'last_episode_to_air_model.dart';
import 'network_model.dart';
import 'next_episode_to_air_model.dart';

TvDetailResponse tvModelFromJson(String str) => TvDetailResponse.fromJson(json.decode(str));

String tvModelToJson(TvDetailResponse data) => json.encode(data.toJson());

class TvDetailResponse extends Equatable {
  TvDetailResponse({
    this.adult,
    this.backdropPath,
    this.createdBy,
    this.episodeRunTime,
    this.firstAirDate,
    this.genres,
    this.homepage,
    this.id,
    this.inProduction,
    this.languages,
    this.lastAirDate,
    this.lastEpisodeToAir,
    this.name,
    this.nextEpisodeToAir,
    this.networks,
    this.numberOfEpisodes,
    this.numberOfSeasons,
    this.originCountry,
    this.originalLanguage,
    this.originalName,
    this.overview,
    this.popularity,
    this.posterPath,
    this.productionCompanies,
    this.productionCountries,
    this.seasons,
    this.spokenLanguages,
    this.status,
    this.tagline,
    this.type,
    this.voteAverage,
    this.voteCount,
  });

  final bool? adult;
  final String? backdropPath;
  final List<CreatedByModel>? createdBy;
  final List<int>? episodeRunTime;
  final  DateTime? firstAirDate;
  final List<GenreModel>? genres;
  final String? homepage;
  final int? id;
  final bool? inProduction;
  final  List<String>? languages;
  final DateTime? lastAirDate;
  final LastEpisodeToAirModel? lastEpisodeToAir;
  final String? name;
  final NextEpisodeToAirModel? nextEpisodeToAir;
  final List<NetworkModel>? networks;
  final int? numberOfEpisodes;
  final int? numberOfSeasons;
  final List<String>? originCountry;
  final String? originalLanguage;
  final String? originalName;
  final String? overview;
  final double? popularity;
  final String? posterPath;
  final List<ProductionCompanyModel>? productionCompanies;
  final List<ProductionCountryModel>? productionCountries;
  final List<SeasonModel>? seasons;
  final List<SpokenLanguageModel>? spokenLanguages;
  final String? status;
  final String? tagline;
  final String? type;
  final double? voteAverage;
  final int? voteCount;

  factory TvDetailResponse.fromJson(Map<String, dynamic> json) => TvDetailResponse(
    adult: json["adult"],
    backdropPath: json["backdrop_path"],
    createdBy: json["created_by"] == null ? [] : List<CreatedByModel>.from(json["created_by"]!.map((x) => CreatedByModel.fromJson(x))),
    episodeRunTime: json["episode_run_time"] == null ? [] : List<int>.from(json["episode_run_time"]!.map((x) => x)),
    firstAirDate: json["first_air_date"] == null ? null : DateTime.parse(json["first_air_date"]),
    genres: json["genres"] == null ? [] : List<GenreModel>.from(json["genres"]!.map((x) => GenreModel.fromJson(x))),
    homepage: json["homepage"],
    id: json["id"],
    inProduction: json["in_production"],
    languages: json["languages"] == null ? [] : List<String>.from(json["languages"]!.map((x) => x)),
    lastAirDate: json["last_air_date"] == null ? null : DateTime.parse(json["last_air_date"]),
    lastEpisodeToAir: json["last_episode_to_air"] == null ? null : LastEpisodeToAirModel.fromJson(json["last_episode_to_air"]),
    name: json["name"],
    nextEpisodeToAir: json["next_episode_to_air"] == null ? null : NextEpisodeToAirModel.fromJson(json["next_episode_to_air"]),
    networks: json["networks"] == null ? [] : List<NetworkModel>.from(json["networks"]!.map((x) => NetworkModel.fromJson(x))),
    numberOfEpisodes: json["number_of_episodes"],
    numberOfSeasons: json["number_of_seasons"],
    originCountry: json["origin_country"] == null ? [] : List<String>.from(json["origin_country"]!.map((x) => x)),
    originalLanguage: json["original_language"],
    originalName: json["original_name"],
    overview: json["overview"],
    popularity: json["popularity"]?.toDouble(),
    posterPath: json["poster_path"],
    productionCompanies: json["production_companies"] == null ? [] : List<ProductionCompanyModel>.from(json["production_companies"]!.map((x) => ProductionCompanyModel.fromJson(x))),
    productionCountries: json["production_countries"] == null ? [] : List<ProductionCountryModel>.from(json["production_countries"]!.map((x) => ProductionCountryModel.fromJson(x))),
    seasons: json["seasons"] == null ? [] : List<SeasonModel>.from(json["seasons"]!.map((x) => SeasonModel.fromJson(x))),
    spokenLanguages: json["spoken_languages"] == null ? [] : List<SpokenLanguageModel>.from(json["spoken_languages"]!.map((x) => SpokenLanguageModel.fromJson(x))),
    status: json["status"],
    tagline: json["tagline"],
    type: json["type"],
    voteAverage: json["vote_average"]?.toDouble(),
    voteCount: json["vote_count"],
  );

  Map<String, dynamic> toJson() => {
    "adult": adult,
    "backdrop_path": backdropPath,
    "created_by": createdBy == null ? [] : List<dynamic>.from(createdBy!.map((x) => x.toJson())),
    "episode_run_time": episodeRunTime == null ? [] : List<dynamic>.from(episodeRunTime!.map((x) => x)),
    "first_air_date": "${firstAirDate!.year.toString().padLeft(4, '0')}-${firstAirDate!.month.toString().padLeft(2, '0')}-${firstAirDate!.day.toString().padLeft(2, '0')}",
    "genres": genres == null ? [] : List<dynamic>.from(genres!.map((x) => x.toJson())),
    "homepage": homepage,
    "id": id,
    "in_production": inProduction,
    "languages": languages == null ? [] : List<dynamic>.from(languages!.map((x) => x)),
    "last_air_date": "${lastAirDate!.year.toString().padLeft(4, '0')}-${lastAirDate!.month.toString().padLeft(2, '0')}-${lastAirDate!.day.toString().padLeft(2, '0')}",
    "last_episode_to_air": lastEpisodeToAir?.toJson(),
    "name": name,
    "next_episode_to_air": nextEpisodeToAir?.toJson(),
    "networks": networks == null ? [] : List<dynamic>.from(networks!.map((x) => x.toJson())),
    "number_of_episodes": numberOfEpisodes,
    "number_of_seasons": numberOfSeasons,
    "origin_country": originCountry == null ? [] : List<dynamic>.from(originCountry!.map((x) => x)),
    "original_language": originalLanguage,
    "original_name": originalName,
    "overview": overview,
    "popularity": popularity,
    "poster_path": posterPath,
    "production_companies": productionCompanies == null ? [] : List<dynamic>.from(productionCompanies!.map((x) => x.toJson())),
    "production_countries": productionCountries == null ? [] : List<dynamic>.from(productionCountries!.map((x) => x.toJson())),
    "seasons": seasons == null ? [] : List<dynamic>.from(seasons!.map((x) => x.toJson())),
    "spoken_languages": spokenLanguages == null ? [] : List<dynamic>.from(spokenLanguages!.map((x) => x.toJson())),
    "status": status,
    "tagline": tagline,
    "type": type,
    "vote_average": voteAverage,
    "vote_count": voteCount,
  };

  @override
  List<Object?> get props => [
    adult,
    backdropPath,
    createdBy,
    episodeRunTime,
    firstAirDate,
    genres,
    homepage,
    id,
    inProduction,
    languages,
    lastAirDate,
    lastEpisodeToAir,
    name,
    nextEpisodeToAir,
    numberOfEpisodes,
    numberOfSeasons,
    originCountry,
    originalLanguage,
    originalName,
    overview,
    popularity,
    posterPath,
    productionCompanies,
    productionCountries,
    seasons,
    spokenLanguages,
    status,
    tagline,
    type,
    voteAverage,
    voteCount,
  ];
}

















