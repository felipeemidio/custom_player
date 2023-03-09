import 'package:custom_player/infra/models/artist_model.dart';
import 'package:flutter_test/flutter_test.dart';

import '../../support/json_loader.dart';

main() {
  test('ArtistModel fromJson', () {
    final rawArtist = JsonLoader.loadAsMap('artist');

    final artist = ArtistModel.fromJson(rawArtist);

    expect(artist.name, rawArtist['name']);
  });

  test('ArtistModel equality', () {
    final artist1 = ArtistModel(
      id: '123',
      name: 'Artist 1',
      genres: [],
      imageUrl: '',
      numOfFollowers: 0,
      popularity: 0,
    );
    final artist2 = ArtistModel(
      id: '123',
      name: 'Artist 2',
      genres: [],
      imageUrl: '',
      numOfFollowers: 0,
      popularity: 0,
    );
    final artist3 = ArtistModel(
      id: '1234',
      name: 'Artist 3',
      genres: [],
      imageUrl: '',
      numOfFollowers: 0,
      popularity: 0,
    );

    expect(artist1 == artist2, isTrue);
    expect(artist1 == artist3, isFalse);
    expect(artist1.hashCode == artist2.hashCode, isTrue);
    expect(artist1.hashCode == artist3.hashCode, isFalse);
  });

}