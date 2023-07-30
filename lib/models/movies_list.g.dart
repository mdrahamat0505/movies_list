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
      movies: (fields[1] as List?)?.cast<Movie>(),
    );
  }

  @override
  void write(BinaryWriter writer, MoviesList obj) {
    writer
      ..writeByte(1)
      ..writeByte(1)
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
      empty: (fields[5] as List?)?.cast<String>(),
      director: fields[6] as String?,
      actors: fields[7] as String?,
      plot: fields[8] as String?,
      posterUrl: fields[9] as String?,
      genres: (fields[10] as List?)?.cast<String>(),
    );
  }

  @override
  void write(BinaryWriter writer, Movie obj) {
    writer
      ..writeByte(10)
      ..writeByte(1)
      ..write(obj.id)
      ..writeByte(2)
      ..write(obj.title)
      ..writeByte(3)
      ..write(obj.year)
      ..writeByte(4)
      ..write(obj.runtime)
      ..writeByte(5)
      ..write(obj.empty)
      ..writeByte(6)
      ..write(obj.director)
      ..writeByte(7)
      ..write(obj.actors)
      ..writeByte(8)
      ..write(obj.plot)
      ..writeByte(9)
      ..write(obj.posterUrl)
      ..writeByte(10)
      ..write(obj.genres);
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

class GenresListAdapter extends TypeAdapter<GenresList> {
  @override
  final int typeId = 3;

  @override
  GenresList read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return GenresList(
      genres: (fields[1] as List?)?.cast<String>(),
    );
  }

  @override
  void write(BinaryWriter writer, GenresList obj) {
    writer
      ..writeByte(1)
      ..writeByte(1)
      ..write(obj.genres);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is GenresListAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MoviesList _$MoviesListFromJson(Map<String, dynamic> json) => MoviesList(
      movies: (json['movies'] as List<dynamic>?)
          ?.map((e) => Movie.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$MoviesListToJson(MoviesList instance) =>
    <String, dynamic>{
      'movies': instance.movies,
    };

Movie _$MovieFromJson(Map<String, dynamic> json) => Movie(
      id: json['id'] as int?,
      title: json['title'] as String?,
      year: json['year'] as String?,
      runtime: json['runtime'] as String?,
      empty:
          (json['empty'] as List<dynamic>?)?.map((e) => e as String).toList(),
      director: json['director'] as String?,
      actors: json['actors'] as String?,
      plot: json['plot'] as String?,
      posterUrl: json['posterUrl'] as String?,
      genres:
          (json['genres'] as List<dynamic>?)?.map((e) => e as String).toList(),
    );

Map<String, dynamic> _$MovieToJson(Movie instance) => <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'year': instance.year,
      'runtime': instance.runtime,
      'empty': instance.empty,
      'director': instance.director,
      'actors': instance.actors,
      'plot': instance.plot,
      'posterUrl': instance.posterUrl,
      'genres': instance.genres,
    };

GenresList _$GenresListFromJson(Map<String, dynamic> json) => GenresList(
      genres:
          (json['genres'] as List<dynamic>?)?.map((e) => e as String).toList(),
    );

Map<String, dynamic> _$GenresListToJson(GenresList instance) =>
    <String, dynamic>{
      'genres': instance.genres,
    };
