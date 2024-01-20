import 'package:dartz/dartz.dart';
import 'package:netflix/Domain/core/failures/main_failure.dart';
import 'package:netflix/Domain/search/search_models/searchresponse/searchresponse.dart';

abstract class ISearchRepo {
  Future<Either<MainFailure, Searchresponse>> getSearch({
    required String movieQuery,
  });
}
