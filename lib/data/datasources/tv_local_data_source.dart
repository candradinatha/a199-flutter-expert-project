import 'package:ditonton/data/datasources/db/database_helper.dart';
import 'package:ditonton/data/datasources/movie_local_data_source.dart';
import 'package:ditonton/data/models/movie_table.dart';
import 'package:ditonton/data/models/tv_table.dart';

abstract class TvLocalDataSource {
  Future<String> insertWatchlist(TvTable tv);
  Future<String> removeWatchlist(TvTable tv);
  Future<TvTable?> getTvById(int id);
  Future<List<TvTable>> getWatchlistTv();
}

class MovieLocalDataSourceImpl implements MovieLocalDataSource {

  final DatabaseHelper databaseHelper;

  MovieLocalDataSourceImpl({required this.databaseHelper});

  @override
  Future<MovieTable?> getMovieById(int id) {
    // TODO: implement getMovieById
    throw UnimplementedError();
  }

  @override
  Future<List<MovieTable>> getWatchlistMovies() {
    // TODO: implement getWatchlistMovies
    throw UnimplementedError();
  }

  @override
  Future<String> insertWatchlist(MovieTable movie) {
    // TODO: implement insertWatchlist
    throw UnimplementedError();
  }

  @override
  Future<String> removeWatchlist(MovieTable movie) {
    // TODO: implement removeWatchlist
    throw UnimplementedError();
  }

}