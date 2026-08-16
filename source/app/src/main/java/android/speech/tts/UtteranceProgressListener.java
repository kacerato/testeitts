package android.speech.tts;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/speech/tts/UtteranceProgressListener.class
 */
public abstract class UtteranceProgressListener {
    public abstract void onStart(String str);

    public abstract void onDone(String str);

    @Deprecated
    public abstract void onError(String str);

    public UtteranceProgressListener() {
        throw new RuntimeException("Stub!");
    }

    public void onError(String utteranceId, int errorCode) {
        throw new RuntimeException("Stub!");
    }

    public void onStop(String utteranceId, boolean interrupted) {
        throw new RuntimeException("Stub!");
    }

    public void onBeginSynthesis(String utteranceId, int sampleRateInHz, int audioFormat, int channelCount) {
        throw new RuntimeException("Stub!");
    }

    public void onAudioAvailable(String utteranceId, byte[] audio) {
        throw new RuntimeException("Stub!");
    }

    public void onRangeStart(String utteranceId, int start, int end, int frame) {
        throw new RuntimeException("Stub!");
    }
}
