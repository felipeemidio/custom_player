import 'package:custom_player/domain/entities/artist_enitity.dart';

class ArtistModel extends ArtistEntity {
  final String id;
  final String name;
  final int numOfFollowers;
  final List<String> genres;
  final int popularity;
  final String imageUrl;

  ArtistModel({
    required this.id,
    required this.name,
    required this.numOfFollowers,
    required this.genres,
    required this.popularity,
    required this.imageUrl,
  });

  factory ArtistModel.fromJson(Map json) {
    return ArtistModel(
      id: json['id'],
      name: json['name'],
      numOfFollowers: json['followers']['total'],
      genres: List<String>.from(json['genres']),
      popularity: json['popularity'],
      imageUrl: json['images'][0]['url'],
    );
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ArtistModel &&
          runtimeType == other.runtimeType &&
          id == other.id;

  @override
  int get hashCode => id.hashCode;
}