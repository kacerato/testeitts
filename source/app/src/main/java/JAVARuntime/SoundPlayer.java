package JAVARuntime;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/Builder/aab_release.zip:base/assets/javaruntimelibraries.zip:SoundPlayer.class
  base.apk:assets/Editor/Builder/app_release.zip:assets/javaruntimelibraries.zip:SoundPlayer.class
  classes.dex
 */
@ClassCategory(cat = {"Sound", "Components"})
public final class SoundPlayer extends Component {

    /* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/Builder/aab_release.zip:base/assets/javaruntimelibraries.zip:SoundPlayer$Mode.class
  base.apk:assets/Editor/Builder/app_release.zip:assets/javaruntimelibraries.zip:SoundPlayer$Mode.class
  classes.dex
 */
    public enum Mode {
        Play_3D,
        Play_2D;

        public static Mode[] valuesCustom() {
            Mode[] valuesCustom = values();
            int length = valuesCustom.length;
            Mode[] modeArr = new Mode[length];
            java.lang.System.arraycopy(valuesCustom, 0, modeArr, 0, length);
            return modeArr;
        }
    }

    @HideGetSet
    public boolean isLoop() {
        return false;
    }

    @HideGetSet
    public void setLoop(boolean z10) {
    }

    @HideGetSet
    public boolean isDestroyOnFinish() {
        return false;
    }

    @HideGetSet
    public void setDestroyOnFinish(boolean z10) {
    }

    @UnimplementedDoc
    public void setSoundFile(SoundFile soundFile) {
    }

    @UnimplementedDoc
    public void setSoundFile(File file) {
    }

    public void play() {
    }

    public void stop() {
    }

    public void pause() {
    }

    public void unPause() {
    }

    public void seekTo(int i10) {
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

    @HideGetSet
    public float getVolume() {
        return 0.0f;
    }

    @HideGetSet
    public void setVolume(float f10) {
    }

    @HideGetSet
    public float getDiameter() {
        return 0.0f;
    }

    @HideGetSet
    public void setDiameter(float f10) {
    }

    @HideGetSet
    public float getSpeed() {
        return 0.0f;
    }

    @HideGetSet
    public void setSpeed(float f10) {
    }

    @HideGetSet
    public float getPitch() {
        return 0.0f;
    }

    @HideGetSet
    public void setPitch(float f10) {
    }

    @HideGetSet
    public Mode getMode() {
        return null;
    }

    @HideGetSet
    public void setMode(Mode mode) {
    }
}
