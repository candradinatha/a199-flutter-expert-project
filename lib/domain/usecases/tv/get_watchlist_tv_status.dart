import 'package:dartz/dartz.dart';
import 'package:ditonton/common/failure.dart';
import 'package:ditonton/domain/repositories/tv_repository.dart';

class GetWatchlistTvStatus {
  final TvRepository repository;

  GetWatchlistTvStatus(this.repository);

  Future<bool> execute(int id) {
    return repository.isAddedToWatchlist(id);
  }

}