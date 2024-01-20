import 'package:netflix/Core/strings.dart';
import 'package:netflix/Infrastructure/api_key.dart';

class ApiEndPoints {
  static const downloads = '$kbaseUrl/trending/movie/day?api_key=$apiKey';
  static const search = '$kbaseUrl/search/movie?api_key=$apiKey';
  static const newAndHot = '$kbaseUrl/movie/upcoming?api_key=$apiKey';
  static const homeTopRated = '$kbaseUrl/movie/top_rated?api_key=$apiKey';
  static const homeTvShow = '$kbaseUrl/discover/tv?api_key=$apiKey';
}
