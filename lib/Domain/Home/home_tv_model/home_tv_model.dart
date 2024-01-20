import 'package:json_annotation/json_annotation.dart';

part 'home_tv_model.g.dart';

@JsonSerializable()
class HomeTvModel {
  @JsonKey(name: 'results')
  List<HomeTvResult> results;

  HomeTvModel({
    this.results = const [],
  });

  factory HomeTvModel.fromJson(Map<String, dynamic> json) {
    return _$HomeTvModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$HomeTvModelToJson(this);
}

@JsonSerializable()
class HomeTvResult {
  @JsonKey(name: 'id')
  int? id;

  @JsonKey(name: 'original_name')
  String? originalName;

  @JsonKey(name: 'poster_path')
  String? posterPath;

  HomeTvResult({
    this.id,
    this.originalName,
    this.posterPath,
  });

  factory HomeTvResult.fromJson(Map<String, dynamic> json) {
    return _$HomeTvResultFromJson(json);
  }

  Map<String, dynamic> toJson() => _$HomeTvResultToJson(this);
}
