package android.service.voice;

import android.content.Intent;
import android.media.AudioFormat;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/service/voice/AlwaysOnHotwordDetector.class
 */
public class AlwaysOnHotwordDetector {
    public static final int RECOGNITION_FLAG_ALLOW_MULTIPLE_TRIGGERS = 2;
    public static final int RECOGNITION_FLAG_CAPTURE_TRIGGER_AUDIO = 1;
    public static final int RECOGNITION_MODE_USER_IDENTIFICATION = 2;
    public static final int RECOGNITION_MODE_VOICE_TRIGGER = 1;
    public static final int STATE_HARDWARE_UNAVAILABLE = -2;
    public static final int STATE_KEYPHRASE_ENROLLED = 2;
    public static final int STATE_KEYPHRASE_UNENROLLED = 1;
    public static final int STATE_KEYPHRASE_UNSUPPORTED = -1;

    /* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/service/voice/AlwaysOnHotwordDetector$EventPayload.class
 */
    public static class EventPayload {
        EventPayload() {
            throw new RuntimeException("Stub!");
        }

        public AudioFormat getCaptureAudioFormat() {
            throw new RuntimeException("Stub!");
        }

        public byte[] getTriggerAudio() {
            throw new RuntimeException("Stub!");
        }
    }

    /* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/service/voice/AlwaysOnHotwordDetector$Callback.class
 */
    public static abstract class Callback {
        public abstract void onAvailabilityChanged(int i10);

        public abstract void onDetected(EventPayload eventPayload);

        public abstract void onError();

        public abstract void onRecognitionPaused();

        public abstract void onRecognitionResumed();

        public Callback() {
            throw new RuntimeException("Stub!");
        }
    }

    AlwaysOnHotwordDetector() {
        throw new RuntimeException("Stub!");
    }

    public int getSupportedRecognitionModes() {
        throw new RuntimeException("Stub!");
    }

    public boolean startRecognition(int recognitionFlags) {
        throw new RuntimeException("Stub!");
    }

    public boolean stopRecognition() {
        throw new RuntimeException("Stub!");
    }

    public Intent createEnrollIntent() {
        throw new RuntimeException("Stub!");
    }

    public Intent createUnEnrollIntent() {
        throw new RuntimeException("Stub!");
    }

    public Intent createReEnrollIntent() {
        throw new RuntimeException("Stub!");
    }
}
