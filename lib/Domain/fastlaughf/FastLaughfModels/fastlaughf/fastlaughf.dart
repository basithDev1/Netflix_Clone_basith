import 'package:json_annotation/json_annotation.dart';

part 'fastlaughf.g.dart';

@JsonSerializable()
class Fastlaughf {
  List<Category>? categories;

  Fastlaughf({this.categories});

  factory Fastlaughf.fromJson(Map<String, dynamic> json) {
    return _$FastlaughfFromJson(json);
  }

  Map<String, dynamic> toJson() => _$FastlaughfToJson(this);
}

@JsonSerializable()
class Category {
  List<Video>? videos;

  Category({this.videos});

  factory Category.fromJson(Map<String, dynamic> json) {
    return _$CategoryFromJson(json);
  }

  Map<String, dynamic> toJson() => _$CategoryToJson(this);
}

@JsonSerializable()
class Video {
  List<String>? sources;

  Video({
    this.sources,
  });

  factory Video.fromJson(Map<String, dynamic> json) => _$VideoFromJson(json);

  Map<String, dynamic> toJson() => _$VideoToJson(this);
}
