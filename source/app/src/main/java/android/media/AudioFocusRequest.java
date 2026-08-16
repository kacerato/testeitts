package android.media;

import android.media.AudioManager;
import android.os.Handler;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/media/AudioFocusRequest.class
 */
public final class AudioFocusRequest {

    /* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/media/AudioFocusRequest$Builder.class
 */
    public static final class Builder {
        public Builder(int focusGain) {
            throw new RuntimeException("Stub!");
        }

        public Builder(AudioFocusRequest requestToCopy) {
            throw new RuntimeException("Stub!");
        }

        public Builder setFocusGain(int focusGain) {
            throw new RuntimeException("Stub!");
        }

        public Builder setOnAudioFocusChangeListener(AudioManager.OnAudioFocusChangeListener listener) {
            throw new RuntimeException("Stub!");
        }

        public Builder setOnAudioFocusChangeListener(AudioManager.OnAudioFocusChangeListener listener, Handler handler) {
            throw new RuntimeException("Stub!");
        }

        public Builder setAudioAttributes(AudioAttributes attributes) {
            throw new RuntimeException("Stub!");
        }

        public Builder setWillPauseWhenDucked(boolean pauseOnDuck) {
            throw new RuntimeException("Stub!");
        }

        public Builder setAcceptsDelayedFocusGain(boolean acceptsDelayedFocusGain) {
            throw new RuntimeException("Stub!");
        }

        public AudioFocusRequest build() {
            throw new RuntimeException("Stub!");
        }
    }

    AudioFocusRequest() {
        throw new RuntimeException("Stub!");
    }

    public AudioAttributes getAudioAttributes() {
        throw new RuntimeException("Stub!");
    }

    public int getFocusGain() {
        throw new RuntimeException("Stub!");
    }

    public boolean willPauseWhenDucked() {
        throw new RuntimeException("Stub!");
    }

    public boolean acceptsDelayedFocusGain() {
        throw new RuntimeException("Stub!");
    }
}
