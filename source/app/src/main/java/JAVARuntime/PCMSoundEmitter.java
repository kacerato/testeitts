package JAVARuntime;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/Builder/aab_release.zip:base/assets/javaruntimelibraries.zip:PCMSoundEmitter.class
  base.apk:assets/Editor/Builder/app_release.zip:assets/javaruntimelibraries.zip:PCMSoundEmitter.class
  classes.dex
 */
@ClassCategory(cat = {"Sound"})
public class PCMSoundEmitter {
    public PCMSoundEmitter(NativeShortBuffer nativeShortBuffer, int i10) {
    }

    public PCMSoundEmitter(short[] sArr, int i10) {
    }

    public PCMSoundEmitter(NativeShortBuffer nativeShortBuffer) {
        this(nativeShortBuffer, Device.getAudioSampleRate());
    }

    public PCMSoundEmitter(short[] sArr) {
        this(sArr, Device.getAudioSampleRate());
    }

    @HideGetSet
    public float getLeftVolume() {
        return 0.0f;
    }

    @HideGetSet
    public void setLeftVolume(float f10) {
    }

    @HideGetSet
    public float getRightVolume() {
        return 0.0f;
    }

    @HideGetSet
    public void setRightVolume(float f10) {
    }

    public void setVolumes(float f10, float f11) {
    }

    public void setVolumes(float f10, float f11, float f12) {
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
    public float getVolume() {
        return 0.0f;
    }

    @HideGetSet
    public void setVolume(float f10) {
    }

    private int getStepsCount() {
        return 0;
    }

    public float getCurrentSecond() {
        return 0.0f;
    }

    public float getTotalSeconds() {
        return 0.0f;
    }

    public void seekToSecond(float f10) {
    }

    public void seekTo(int i10) {
    }

    @HideGetSet
    public boolean isLoop() {
        return false;
    }

    @HideGetSet
    public void setLoop(boolean z10) {
    }

    public void play() {
    }

    public void pause() {
    }

    public void stop() {
    }

    public void destroy() {
    }

    @HideGetSet
    public boolean isPaused() {
        return false;
    }

    @HideGetSet
    public boolean isPlaying() {
        return false;
    }

    @HideGetSet
    public boolean isStopped() {
        return false;
    }
}
