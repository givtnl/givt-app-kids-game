// ignore_for_file: prefer_single_quotes

import 'package:audioplayers/audioplayers.dart';

class AudioPlayerHelper {
  static final Future<AudioPlayer> _playerHeavyClickFuture =
      _initAudioPlayer("audio/click_heavy.wav");
  static final Future<AudioPlayer> _playerLightClickFuture =
      _initAudioPlayer("audio/click_light.wav");
  static final Future<AudioPlayer> _playerEffectFuture =
      _initAudioPlayer("audio/effect.mp3");

  static Future<AudioPlayer> _initAudioPlayer(String asset) async {
    final player = AudioPlayer();
    await player.setSourceAsset(asset);
    return player;
  }

  static Future<void> playHeavyClick() async {
    final player = await _playerHeavyClickFuture;
    await player.resume();
  }

  static Future<void> playLightClick() async {
    final player = await _playerLightClickFuture;
    await player.resume();
  }

  static Future<void> playEffect() async {
    final player = await _playerEffectFuture;
    await player.resume();
  }
}
