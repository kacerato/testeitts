package JAVARuntime;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/Builder/aab_release.zip:base/assets/javaruntimelibraries.zip:VideoPlayer.class
  base.apk:assets/Editor/Builder/app_release.zip:assets/javaruntimelibraries.zip:VideoPlayer.class
  classes.dex
 */
@ClassCategory(cat = {"Sound", "Components"})
public final class VideoPlayer extends Component {
    @HideGetSet
    public boolean isLoop() {
        return false;
    }

    @HideGetSet
    public void setLoop(boolean z10) {
    }

    @HideGetSet
    public Color getChromaKeyColor() {
        return null;
    }

    @HideGetSet
    public void setChromaKeyColor(Color color) {
    }

    @HideGetSet
    public boolean isChromaKeyEnabled() {
        return false;
    }

    @HideGetSet
    public void setChromaKeyEnabled(boolean z10) {
    }

    @HideGetSet
    public float getChromaKeyTolerance() {
        return 0.0f;
    }

    @HideGetSet
    public void setChromaKeyTolerance(float f10) {
    }

    @UnimplementedDoc
    public void setVideoFile(VideoFile videoFile) {
    }

    @UnimplementedDoc
    public void setVideoFile(File file) {
    }

    @UnimplementedDoc
    public void setOutputVideoFile(OutputVideoFile outputVideoFile) {
    }

    @UnimplementedDoc
    public void setOutputVideoFile(File file) {
    }

    public void play() {
    }

    public void stop() {
    }

    public void pause() {
    }

    public void unPause() {
    }

    @HideGetSet
    public boolean isPlaying() {
        return false;
    }

    @HideGetSet
    public boolean isPaused() {
        return false;
    }

    @HideGetSet
    public boolean isStopped() {
        return false;
    }

    public void seekTo(int i10) {
    }
}
