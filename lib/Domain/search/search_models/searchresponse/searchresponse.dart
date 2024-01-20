import 'package:json_annotation/json_annotation.dart';

part 'searchresponse.g.dart';

@JsonSerializable()
class Searchresponse {
  @JsonKey(name: 'results')
  List<SearchResultData> results;

  Searchresponse({
    this.results = const [],
  });

  factory Searchresponse.fromJson(Map<String, dynamic> json) {
    return _$SearchresponseFromJson(json);
  }

  Map<String, dynamic> toJson() => _$SearchresponseToJson(this);
}

@JsonSerializable()
class SearchResultData {
  @JsonKey(name: 'id')
  int? id;

  @JsonKey(name: 'original_title')
  String? originalTitle;

  @JsonKey(name: 'poster_path')
  String? posterPath;

  SearchResultData({
    this.id,
    this.originalTitle,
    this.posterPath,
  });

  factory SearchResultData.fromJson(Map<String, dynamic> json) {
    return _$SearchResultDataFromJson(json);
  }

  Map<String, dynamic> toJson() => _$SearchResultDataToJson(this);
}
