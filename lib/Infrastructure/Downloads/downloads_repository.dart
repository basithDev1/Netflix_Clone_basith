import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:netflix/Domain/core/api_end_points.dart';
import 'package:netflix/Domain/core/failures/main_failure.dart';
import 'package:netflix/Domain/downloads/download_models/downloads.dart';
import 'package:netflix/Domain/downloads/i_downloads_repo.dart';
import 'package:dio/dio.dart';

@LazySingleton(as: IDownloadsRepo)
class DownloadsRepository implements IDownloadsRepo {
  @override
  Future<Either<MainFailure, List<Downloads>>> getDownloadsImage() async {
    try {
      final response = await Dio(BaseOptions()).get(ApiEndPoints.downloads);
      if (response.statusCode == 200 || response.statusCode == 201) {
        // print("full data${response.data}");
        if (response.data != null && response.data.isNotEmpty) {
          print('Not Empty');
        } else {
          print('API Response is empty or null');
        }

        final downloadlist = (response.data['results'] as List).map((e) {
          return Downloads.fromJson(e);
        }).toList();

        final length = downloadlist.length;
        print(length.toString());

        final firstelement = downloadlist[0].posterPath;
        print("your first element is$firstelement");

        // print(downloadlist);
        return Right(downloadlist);
      } else {
        return const Left(MainFailure.serverFailure());
      }
    } catch (e) {
      print(e.toString());
      return const Left(MainFailure.clientFailure());
    }
  }
}
