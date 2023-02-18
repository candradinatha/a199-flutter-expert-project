import 'package:dartz/dartz.dart';
import 'package:ditonton/common/failure.dart';

import '../../data/models/tv_table.dart';
import '../entities/tv.dart';
import '../entities/tv_detail.dart';

abstract class TvRepository {
  Future<Either<Failure, List<Tv>>> getNowPlayingTv();
  Future<Either<Failure, List<Tv>>> getPopularTv();
  Future<Either<Failure, List<Tv>>> getTopRatedTv();
  Future<Either<Failure, List<Tv>>> getTvRecommendations(int id);
  Future<Either<Failure, List<Tv>>> searchTv(String query);
  Future<Either<Failure, TvDetail>> getTvDetail(int id);
  Future<Either<Failure, String>> insertWatchlist(TvTable tv);
  Future<Either<Failure, String>> removeWatchlist(TvTable tv);
  Future<bool> isAddedToWatchlist(int id);
  Future<List<Tv>> getWatchlistTv();
}