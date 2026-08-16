package android.speech;

import android.os.Bundle;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/speech/RecognitionListener.class
 */
public interface RecognitionListener {
    void onReadyForSpeech(Bundle bundle);

    void onBeginningOfSpeech();

    void onRmsChanged(float f10);

    void onBufferReceived(byte[] bArr);

    void onEndOfSpeech();

    void onError(int i10);

    void onResults(Bundle bundle);

    void onPartialResults(Bundle bundle);

    void onEvent(int i10, Bundle bundle);
}
