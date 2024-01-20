import 'dart:convert';
import 'dart:developer';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

import 'package:injectable/injectable.dart';
import 'package:netflix/Core/strings.dart';
import 'package:netflix/Domain/core/failures/main_failure.dart';
import 'package:netflix/Domain/fastlaughf/FastLaughfModels/fastlaughf/fastlaughf.dart';
import 'package:netflix/Domain/fastlaughf/i_fastlaughf_repo.dart';

@LazySingleton(as: IFastLaughRepo)
class FastLaughfRepository implements IFastLaughRepo {
  @override
  Future<Either<MainFailure, Fastlaughf>> getVideos() async {
    try {
      final response = await Dio(BaseOptions()).get(kvideoUrl);
      if (response.statusCode == 200 || response.statusCode == 201) {
        if (response.data != null && response.data.isNotEmpty) {
          print('Video Not Empty');
        } else {
          print(' Video API Response is empty or null');
        }
        print("Video response is${response.data.toString()}");

        final mediaJson = jsonDecode(response.data);
        // log("media json${mediaJson.toString()}");

        Fastlaughf fastlaughf = Fastlaughf.fromJson(mediaJson);

        print("result json${fastlaughf.toString()}");

        return Right(fastlaughf);
      } else {
        return const Left(MainFailure.serverFailure());
      }
    } catch (e) {
      print("Error is $e");
      return const Left(MainFailure.clientFailure());
    }
  }
}
