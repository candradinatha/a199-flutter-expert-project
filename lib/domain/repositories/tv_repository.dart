import 'package:dartz/dartz.dart';
import 'package:ditonton/common/failure.dart';

import '../entities/tv.dart';
import '../entities/tv_detail.dart';

abstract class TvRepository {
  Future<Either<Failure, List<Tv>>> getNowPlayingTv();
  Future<Either<Failure, List<Tv>>> getPopularTv();
  Future<Either<Failure, List<Tv>>> getTopRatedTv();
  Future<Either<Failure, List<Tv>>> getTvRecommendations(int id);
  Future<Either<Failure, List<Tv>>> searchTv(String query);
  Future<Either<Failure, TvDetail>> getTvDetail(int id);
  Future<Either<Failure, String>> insertWatchlist(TvDetail tv);
  Future<Either<Failure, String>> removeWatchlist(TvDetail tv);
  Future<bool> isAddedToWatchlist(int id);
  Future<List<Tv>> getWatchlistTv();
}