import 'package:json_annotation/json_annotation.dart';

part 'home_top_rated_model.g.dart';

@JsonSerializable()
class HomeTopRatedModel {
  @JsonKey(name: 'results')
  List<HomeTopRatedResult> results;

  HomeTopRatedModel({
    this.results = const [],
  });

  factory HomeTopRatedModel.fromJson(Map<String, dynamic> json) {
    return _$HomeTopRatedModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$HomeTopRatedModelToJson(this);
}

@JsonSerializable()
class HomeTopRatedResult {
  @JsonKey(name: 'id')
  int? id;

  @JsonKey(name: 'original_title')
  String? originalTitle;

  @JsonKey(name: 'poster_path')
  String? posterPath;

  HomeTopRatedResult({
    this.id,
    this.originalTitle,
    this.posterPath,
  });

  factory HomeTopRatedResult.fromJson(Map<String, dynamic> json) {
    return _$HomeTopRatedResultFromJson(json);
  }

  Map<String, dynamic> toJson() => _$HomeTopRatedResultToJson(this);
}
