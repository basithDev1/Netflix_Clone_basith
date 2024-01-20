import 'package:dartz/dartz.dart';
import 'package:netflix/Domain/NewandHot/new_hot_models/new_hot_models.dart';
import 'package:netflix/Domain/core/failures/main_failure.dart';

abstract class INewandHotRepo {
  Future<Either<MainFailure, NewHotModel>> getNewandHot();
}
