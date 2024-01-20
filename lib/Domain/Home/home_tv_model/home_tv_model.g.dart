// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_tv_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

HomeTvModel _$HomeTvModelFromJson(Map<String, dynamic> json) => HomeTvModel(
      results: (json['results'] as List<dynamic>?)
              ?.map((e) => HomeTvResult.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$HomeTvModelToJson(HomeTvModel instance) =>
    <String, dynamic>{
      'results': instance.results,
    };

HomeTvResult _$HomeTvResultFromJson(Map<String, dynamic> json) => HomeTvResult(
      id: json['id'] as int?,
      originalName: json['original_name'] as String?,
      posterPath: json['poster_path'] as String?,
    );

Map<String, dynamic> _$HomeTvResultToJson(HomeTvResult instance) =>
    <String, dynamic>{
      'id': instance.id,
      'original_name': instance.originalName,
      'poster_path': instance.posterPath,
    };
