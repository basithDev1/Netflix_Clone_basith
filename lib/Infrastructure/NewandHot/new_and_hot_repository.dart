import 'dart:developer';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:netflix/Domain/NewandHot/i_new_and_hot_repo.dart';
import 'package:netflix/Domain/NewandHot/new_hot_models/new_hot_models.dart';
import 'package:netflix/Domain/core/api_end_points.dart';
import 'package:netflix/Domain/core/failures/main_failure.dart';

@LazySingleton(as: INewandHotRepo)
class NewandHotRepository implements INewandHotRepo {
  @override
  Future<Either<MainFailure, NewHotModel>> getNewandHot() async {
    try {
      final response = await Dio(BaseOptions()).get(ApiEndPoints.newAndHot);
      // log(response.data.toString());
      if (response.statusCode == 200 || response.statusCode == 201) {
        final result = NewHotModel.fromJson(response.data);
        print("Api resuult is ${result.results}");

        return right(result);
      }
      return left(const MainFailure.serverFailure());
    } catch (e) {
      print("Error is $e");
      return left(const MainFailure.clientFailure());
    }
  }
}
