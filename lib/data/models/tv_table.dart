import 'package:ditonton/domain/entities/movie.dart';
import 'package:ditonton/domain/entities/movie_detail.dart';
import 'package:equatable/equatable.dart';

class TvTable extends Equatable {
  final int id;
  final String? title;
  final String? backdropPath;
  final String? overview;

  TvTable({
    required this.id,
    required this.title,
    required this.backdropPath,
    required this.overview,
  });

  factory TvTable.fromEntity(MovieDetail movie) => TvTable(
        id: movie.id,
        title: movie.title,
        backdropPath: movie.posterPath,
        overview: movie.overview,
      );

  factory TvTable.fromMap(Map<String, dynamic> map) => TvTable(
        id: map['id'],
        title: map['title'],
        backdropPath: map['backdropPath'],
        overview: map['overview'],
      );

  Map<String, dynamic> toJson() => {
        'id': id,
        'title': title,
        'backdropPath': backdropPath,
        'overview': overview,
      };

  Movie toEntity() => Movie.watchlist(
        id: id,
        overview: overview,
        posterPath: backdropPath,
        title: title,
      );

  @override
  // TODO: implement props
  List<Object?> get props => [id, title, backdropPath, overview];
}
