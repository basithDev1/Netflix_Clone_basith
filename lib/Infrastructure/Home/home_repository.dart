import 'dart:developer';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:netflix/Domain/Home/home_top_rated_model/home_top_rated_model.dart';
import 'package:netflix/Domain/Home/home_tv_model/home_tv_model.dart';
import 'package:netflix/Domain/Home/i_home_repo.dart';

import 'package:netflix/Domain/core/api_end_points.dart';
import 'package:netflix/Domain/core/failures/main_failure.dart';

@LazySingleton(as: IHomeRepo)
class HomeRepository implements IHomeRepo {
  @override
  Future<Either<MainFailure, HomeTopRatedModel>> getTopRated() async {
    try {
      final response = await Dio(BaseOptions()).get(ApiEndPoints.homeTopRated);
      if (response.statusCode == 200 || response.statusCode == 201) {
        final result = HomeTopRatedModel.fromJson(response.data);
        // log(result.toString());
        // print(" Api Result is Fetched$result");
        return right(result);
      }
      return left(const MainFailure.serverFailure());
    } catch (e) {
      print('Failure is $e');

      return left(const MainFailure.clientFailure());
    }
  }

  @override
  Future<Either<MainFailure, HomeTvModel>> getTv() async {
    try {
      final response = await Dio(BaseOptions()).get(ApiEndPoints.homeTvShow);
      if (response.statusCode == 200 || response.statusCode == 201) {
        final result = HomeTvModel.fromJson(response.data);

        print(" Api Result Tv is Fetched$result");
        return right(result);
      }
      return left(const MainFailure.serverFailure());
    } catch (e) {
      print('Failure tv is $e');
      return left(const MainFailure.clientFailure());
    }
  }
}
