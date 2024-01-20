// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'fastlaughf.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Fastlaughf _$FastlaughfFromJson(Map<String, dynamic> json) => Fastlaughf(
      categories: (json['categories'] as List<dynamic>?)
          ?.map((e) => Category.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$FastlaughfToJson(Fastlaughf instance) =>
    <String, dynamic>{
      'categories': instance.categories,
    };

Category _$CategoryFromJson(Map<String, dynamic> json) => Category(
      videos: (json['videos'] as List<dynamic>?)
          ?.map((e) => Video.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$CategoryToJson(Category instance) => <String, dynamic>{
      'videos': instance.videos,
    };

Video _$VideoFromJson(Map<String, dynamic> json) => Video(
      sources:
          (json['sources'] as List<dynamic>?)?.map((e) => e as String).toList(),
    );

Map<String, dynamic> _$VideoToJson(Video instance) => <String, dynamic>{
      'sources': instance.sources,
    };
