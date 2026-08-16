package android.speech.tts;

import android.app.Service;
import android.content.Intent;
import android.os.IBinder;
import java.util.List;
import java.util.Set;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/speech/tts/TextToSpeechService.class
 */
public abstract class TextToSpeechService extends Service {
    protected abstract int onIsLanguageAvailable(String str, String str2, String str3);

    protected abstract String[] onGetLanguage();

    protected abstract int onLoadLanguage(String str, String str2, String str3);

    protected abstract void onStop();

    protected abstract void onSynthesizeText(SynthesisRequest synthesisRequest, SynthesisCallback synthesisCallback);

    public TextToSpeechService() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void onCreate() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void onDestroy() {
        throw new RuntimeException("Stub!");
    }

    protected Set<String> onGetFeaturesForLanguage(String lang, String country, String variant) {
        throw new RuntimeException("Stub!");
    }

    public List<Voice> onGetVoices() {
        throw new RuntimeException("Stub!");
    }

    public String onGetDefaultVoiceNameFor(String lang, String country, String variant) {
        throw new RuntimeException("Stub!");
    }

    public int onLoadVoice(String voiceName) {
        throw new RuntimeException("Stub!");
    }

    public int onIsValidVoiceName(String voiceName) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public IBinder onBind(Intent intent) {
        throw new RuntimeException("Stub!");
    }
}
