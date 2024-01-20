import 'package:json_annotation/json_annotation.dart';

part 'new_hot_models.g.dart';

@JsonSerializable()
class NewHotModel {
  @JsonKey(name: 'results')
  List<NewandHotResult> results;
  @JsonKey(name: 'total_pages')
  int? totalPages;
  @JsonKey(name: 'total_results')
  int? totalResults;

  NewHotModel({
    this.results = const [],
    this.totalPages,
    this.totalResults,
  });

  factory NewHotModel.fromJson(Map<String, dynamic> json) {
    return _$NewHotModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$NewHotModelToJson(this);
}

@JsonSerializable()
class NewandHotResult {
  bool? adult;
  @JsonKey(name: 'id')
  int? id;
  @JsonKey(name: 'original_language')
  String? originalLanguage;
  @JsonKey(name: 'overview')
  String? overview;
  @JsonKey(name: 'original_title')
  String? originalTitle;
  @JsonKey(name: 'poster_path')
  String? posterPath;
  @JsonKey(name: 'release_date')
  String? releaseDate;

  NewandHotResult({
    this.adult,
    this.id,
    this.originalLanguage,
    this.originalTitle,
    this.posterPath,
    this.releaseDate,
  });

  factory NewandHotResult.fromJson(Map<String, dynamic> json) {
    return _$NewandHotResultFromJson(json);
  }

  Map<String, dynamic> toJson() => _$NewandHotResultToJson(this);
}

@JsonSerializable()
class Dates {
  String? maximum;
  String? minimum;

  Dates({this.maximum, this.minimum});

  factory Dates.fromJson(Map<String, dynamic> json) => _$DatesFromJson(json);

  Map<String, dynamic> toJson() => _$DatesToJson(this);
}
