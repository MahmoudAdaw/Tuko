import 'package:audioplayers/audioplayers.dart';

class Data {
  final String sound;
  final String image;
  final String jpName;
  final String enName;

  const Data(
      {required this.sound,
      required this.image,
      required this.jpName,
      required this.enName});
  playSound() {
    final player = AudioPlayer();
    player.play(AssetSource(sound));
  }
}
