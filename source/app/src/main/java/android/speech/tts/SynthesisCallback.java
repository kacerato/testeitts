package android.speech.tts;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/speech/tts/SynthesisCallback.class
 */
public interface SynthesisCallback {
    int getMaxBufferSize();

    int start(int i10, int i11, int i12);

    int audioAvailable(byte[] bArr, int i10, int i11);

    int done();

    void error();

    void error(int i10);

    boolean hasStarted();

    boolean hasFinished();

    default void rangeStart(int markerInFrames, int start, int end) {
        throw new RuntimeException("Stub!");
    }
}
