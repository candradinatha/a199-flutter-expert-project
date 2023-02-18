import 'package:equatable/equatable.dart';

class LastEpisodeToAirModel extends Equatable {
  LastEpisodeToAirModel({
    this.airDate,
    this.episodeNumber,
    this.id,
    this.name,
    this.overview,
    this.productionCode,
    this.runtime,
    this.seasonNumber,
    this.showId,
    this.stillPath,
    this.voteAverage,
    this.voteCount,
  });

  final DateTime? airDate;
  final int? episodeNumber;
  final int? id;
  final String? name;
  final String? overview;
  final String? productionCode;
  final int? runtime;
  final int? seasonNumber;
  final int? showId;
  final String? stillPath;
  final double? voteAverage;
  final int? voteCount;

  factory LastEpisodeToAirModel.fromJson(Map<String, dynamic> json) => LastEpisodeToAirModel(
    airDate: json["air_date"] == null ? null : DateTime.parse(json["air_date"]),
    episodeNumber: json["episode_number"],
    id: json["id"],
    name: json["name"],
    overview: json["overview"],
    productionCode: json["production_code"],
    runtime: json["runtime"],
    seasonNumber: json["season_number"],
    showId: json["show_id"],
    stillPath: json["still_path"],
    voteAverage: json["vote_average"]?.toDouble(),
    voteCount: json["vote_count"],
  );

  Map<String, dynamic> toJson() => {
    "air_date": "${airDate!.year.toString().padLeft(4, '0')}-${airDate!.month.toString().padLeft(2, '0')}-${airDate!.day.toString().padLeft(2, '0')}",
    "episode_number": episodeNumber,
    "id": id,
    "name": name,
    "overview": overview,
    "production_code": productionCode,
    "runtime": runtime,
    "season_number": seasonNumber,
    "show_id": showId,
    "still_path": stillPath,
    "vote_average": voteAverage,
    "vote_count": voteCount,
  };

  @override
  List<Object?> get props => [airDate, episodeNumber, id, name, overview, productionCode, runtime, seasonNumber, showId, stillPath, voteAverage, voteCount];
}