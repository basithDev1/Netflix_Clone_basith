import 'package:dartz/dartz.dart';
import 'package:netflix/Domain/core/failures/main_failure.dart';
import 'package:netflix/Domain/fastlaughf/FastLaughfModels/fastlaughf/fastlaughf.dart';

abstract class IFastLaughRepo {
  Future<Either<MainFailure, Fastlaughf>> getVideos();
}
