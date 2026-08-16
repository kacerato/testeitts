package android.media.tv;

import android.content.Context;
import android.net.Uri;
import android.os.Bundle;
import android.os.Handler;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/media/tv/TvRecordingClient.class
 */
public class TvRecordingClient {

    /* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/media/tv/TvRecordingClient$RecordingCallback.class
 */
    public static abstract class RecordingCallback {
        public RecordingCallback() {
            throw new RuntimeException("Stub!");
        }

        public void onConnectionFailed(String inputId) {
            throw new RuntimeException("Stub!");
        }

        public void onDisconnected(String inputId) {
            throw new RuntimeException("Stub!");
        }

        public void onTuned(Uri channelUri) {
            throw new RuntimeException("Stub!");
        }

        public void onRecordingStopped(Uri recordedProgramUri) {
            throw new RuntimeException("Stub!");
        }

        public void onError(int error) {
            throw new RuntimeException("Stub!");
        }
    }

    public TvRecordingClient(Context context, String tag, RecordingCallback callback, Handler handler) {
        throw new RuntimeException("Stub!");
    }

    public void tune(String inputId, Uri channelUri) {
        throw new RuntimeException("Stub!");
    }

    public void tune(String inputId, Uri channelUri, Bundle params) {
        throw new RuntimeException("Stub!");
    }

    public void release() {
        throw new RuntimeException("Stub!");
    }

    public void startRecording(Uri programUri) {
        throw new RuntimeException("Stub!");
    }

    public void stopRecording() {
        throw new RuntimeException("Stub!");
    }

    public void sendAppPrivateCommand(String action, Bundle data) {
        throw new RuntimeException("Stub!");
    }
}
