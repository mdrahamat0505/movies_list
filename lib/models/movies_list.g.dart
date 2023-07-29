// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'movies_list.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class MoviesListAdapter extends TypeAdapter<MoviesList> {
  @override
  final int typeId = 1;

  @override
  MoviesList read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return MoviesList(
      genres: (fields[1] as List?)?.cast<String>(),
      movies: (fields[2] as List?)?.cast<Movie>(),
    );
  }

  @override
  void write(BinaryWriter writer, MoviesList obj) {
    writer
      ..writeByte(2)
      ..writeByte(1)
      ..write(obj.genres)
      ..writeByte(2)
      ..write(obj.movies);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is MoviesListAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class MovieAdapter extends TypeAdapter<Movie> {
  @override
  final int typeId = 2;

  @override
  Movie read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Movie(
      id: fields[1] as int?,
      title: fields[2] as String?,
      year: fields[3] as String?,
      runtime: fields[4] as String?,
      genres: (fields[5] as List?)?.cast<String>(),
      director: fields[6] as String?,
      actors: fields[7] as String?,
      plot: fields[8] as String?,
      posterUrl: fields[9] as String?,
    );
  }

  @override
  void write(BinaryWriter writer, Movie obj) {
    writer
      ..writeByte(9)
      ..writeByte(1)
      ..write(obj.id)
      ..writeByte(2)
      ..write(obj.title)
      ..writeByte(3)
      ..write(obj.year)
      ..writeByte(4)
      ..write(obj.runtime)
      ..writeByte(5)
      ..write(obj.genres)
      ..writeByte(6)
      ..write(obj.director)
      ..writeByte(7)
      ..write(obj.actors)
      ..writeByte(8)
      ..write(obj.plot)
      ..writeByte(9)
      ..write(obj.posterUrl);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is MovieAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MoviesList _$MoviesListFromJson(Map<String, dynamic> json) => MoviesList(
      genres:
          (json['genres'] as List<dynamic>?)?.map((e) => e as String).toList(),
      movies: (json['movies'] as List<dynamic>?)
          ?.map((e) => Movie.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$MoviesListToJson(MoviesList instance) =>
    <String, dynamic>{
      'genres': instance.genres,
      'movies': instance.movies,
    };

Movie _$MovieFromJson(Map<String, dynamic> json) => Movie(
      id: json['id'] as int?,
      title: json['title'] as String?,
      year: json['year'] as String?,
      runtime: json['runtime'] as String?,
      genres:
          (json['genres'] as List<dynamic>?)?.map((e) => e as String).toList(),
      director: json['director'] as String?,
      actors: json['actors'] as String?,
      plot: json['plot'] as String?,
      posterUrl: json['posterUrl'] as String?,
    );

Map<String, dynamic> _$MovieToJson(Movie instance) => <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'year': instance.year,
      'runtime': instance.runtime,
      'genres': instance.genres,
      'director': instance.director,
      'actors': instance.actors,
      'plot': instance.plot,
      'posterUrl': instance.posterUrl,
    };
