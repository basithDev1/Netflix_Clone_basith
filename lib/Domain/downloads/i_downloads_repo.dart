import 'package:dartz/dartz.dart';

import 'package:netflix/Domain/downloads/download_models/downloads.dart';

import '../core/failures/main_failure.dart';

abstract class IDownloadsRepo {
  Future<Either<MainFailure, List<Downloads>>> getDownloadsImage();
}
