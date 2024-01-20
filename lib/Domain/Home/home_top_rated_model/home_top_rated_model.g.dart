// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_top_rated_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

HomeTopRatedModel _$HomeTopRatedModelFromJson(Map<String, dynamic> json) =>
    HomeTopRatedModel(
      results: (json['results'] as List<dynamic>?)
              ?.map(
                  (e) => HomeTopRatedResult.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$HomeTopRatedModelToJson(HomeTopRatedModel instance) =>
    <String, dynamic>{
      'results': instance.results,
    };

HomeTopRatedResult _$HomeTopRatedResultFromJson(Map<String, dynamic> json) =>
    HomeTopRatedResult(
      id: json['id'] as int?,
      originalTitle: json['original_title'] as String?,
      posterPath: json['poster_path'] as String?,
    );

Map<String, dynamic> _$HomeTopRatedResultToJson(HomeTopRatedResult instance) =>
    <String, dynamic>{
      'id': instance.id,
      'original_title': instance.originalTitle,
      'poster_path': instance.posterPath,
    };
