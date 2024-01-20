// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'new_hot_models.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

NewHotModel _$NewHotModelFromJson(Map<String, dynamic> json) => NewHotModel(
      results: (json['results'] as List<dynamic>?)
              ?.map((e) => NewandHotResult.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      totalPages: json['total_pages'] as int?,
      totalResults: json['total_results'] as int?,
    );

Map<String, dynamic> _$NewHotModelToJson(NewHotModel instance) =>
    <String, dynamic>{
      'results': instance.results,
      'total_pages': instance.totalPages,
      'total_results': instance.totalResults,
    };

NewandHotResult _$NewandHotResultFromJson(Map<String, dynamic> json) =>
    NewandHotResult(
      adult: json['adult'] as bool?,
      id: json['id'] as int?,
      originalLanguage: json['original_language'] as String?,
      originalTitle: json['original_title'] as String?,
      posterPath: json['poster_path'] as String?,
      releaseDate: json['release_date'] as String?,
    )..overview = json['overview'] as String?;

Map<String, dynamic> _$NewandHotResultToJson(NewandHotResult instance) =>
    <String, dynamic>{
      'adult': instance.adult,
      'id': instance.id,
      'original_language': instance.originalLanguage,
      'overview': instance.overview,
      'original_title': instance.originalTitle,
      'poster_path': instance.posterPath,
      'release_date': instance.releaseDate,
    };

Dates _$DatesFromJson(Map<String, dynamic> json) => Dates(
      maximum: json['maximum'] as String?,
      minimum: json['minimum'] as String?,
    );

Map<String, dynamic> _$DatesToJson(Dates instance) => <String, dynamic>{
      'maximum': instance.maximum,
      'minimum': instance.minimum,
    };
