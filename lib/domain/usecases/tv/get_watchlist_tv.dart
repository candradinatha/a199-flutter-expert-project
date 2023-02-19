import 'package:ditonton/domain/repositories/tv_repository.dart';

class GetWatchlistTv {
  final TvRepository repository;

  GetWatchlistTv(this.repository);

  execute() {
    return repository.getWatchlistTv();
  }
}