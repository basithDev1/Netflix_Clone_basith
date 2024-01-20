import 'package:dartz/dartz.dart';
import 'package:netflix/Domain/Home/home_top_rated_model/home_top_rated_model.dart';
import 'package:netflix/Domain/Home/home_tv_model/home_tv_model.dart';
import 'package:netflix/Domain/core/failures/main_failure.dart';

abstract class IHomeRepo {
  Future<Either<MainFailure, HomeTopRatedModel>> getTopRated();

  Future<Either<MainFailure, HomeTvModel>> getTv();
}
