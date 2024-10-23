import 'package:music_player/model/music.dart';

class Playlist {
  final String name;
  final List<Music> songs;
  const Playlist({
    required this.name,required this.songs
  });
}