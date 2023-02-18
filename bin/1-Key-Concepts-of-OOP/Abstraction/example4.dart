abstract class MediaPlayer {
  void play();
  void stop() {
    print("Media stopped");
  }

  void pause() {
    print("Media paused");
  }
}

class AudioPlayer extends MediaPlayer {
  @override
  void play() {
    print("Playing audio file");
    // code to play audio file
  }
}

class VideoPlayer extends MediaPlayer {
  @override
  void play() {
    print("Playing video file");
    // code to play video file
  }
}

void main() {
  AudioPlayer audio = AudioPlayer();
  audio.play();
  audio.pause();
  audio.stop();

  VideoPlayer video = VideoPlayer();
  video.play();
  video.pause();
  video.stop();
}
