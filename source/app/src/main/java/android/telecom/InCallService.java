package android.telecom;

import android.app.Service;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.os.Handler;
import android.os.IBinder;
import android.telecom.VideoProfile;
import android.view.Surface;
import java.util.List;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/telecom/InCallService.class
 */
public abstract class InCallService extends Service {
    public static final String SERVICE_INTERFACE = "android.telecom.InCallService";

    /* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/telecom/InCallService$VideoCall.class
 */
    public static abstract class VideoCall {
        public abstract void registerCallback(Callback callback);

        public abstract void registerCallback(Callback callback, Handler handler);

        public abstract void unregisterCallback(Callback callback);

        public abstract void setCamera(String str);

        public abstract void setPreviewSurface(Surface surface);

        public abstract void setDisplaySurface(Surface surface);

        public abstract void setDeviceOrientation(int i10);

        public abstract void setZoom(float f10);

        public abstract void sendSessionModifyRequest(VideoProfile videoProfile);

        public abstract void sendSessionModifyResponse(VideoProfile videoProfile);

        public abstract void requestCameraCapabilities();

        public abstract void requestCallDataUsage();

        public abstract void setPauseImage(Uri uri);

        /* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/telecom/InCallService$VideoCall$Callback.class
 */
        public static abstract class Callback {
            public abstract void onSessionModifyRequestReceived(VideoProfile videoProfile);

            public abstract void onSessionModifyResponseReceived(int i10, VideoProfile videoProfile, VideoProfile videoProfile2);

            public abstract void onCallSessionEvent(int i10);

            public abstract void onPeerDimensionsChanged(int i10, int i11);

            public abstract void onVideoQualityChanged(int i10);

            public abstract void onCallDataUsageChanged(long j10);

            public abstract void onCameraCapabilitiesChanged(VideoProfile.CameraCapabilities cameraCapabilities);

            public Callback() {
                throw new RuntimeException("Stub!");
            }
        }

        public VideoCall() {
            throw new RuntimeException("Stub!");
        }
    }

    public InCallService() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public IBinder onBind(Intent intent) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public boolean onUnbind(Intent intent) {
        throw new RuntimeException("Stub!");
    }

    public final List<Call> getCalls() {
        throw new RuntimeException("Stub!");
    }

    public final boolean canAddCall() {
        throw new RuntimeException("Stub!");
    }

    public final CallAudioState getCallAudioState() {
        throw new RuntimeException("Stub!");
    }

    public final void setMuted(boolean state) {
        throw new RuntimeException("Stub!");
    }

    public final void setAudioRoute(int route) {
        throw new RuntimeException("Stub!");
    }

    public void onCallAudioStateChanged(CallAudioState audioState) {
        throw new RuntimeException("Stub!");
    }

    public void onBringToForeground(boolean showDialpad) {
        throw new RuntimeException("Stub!");
    }

    public void onCallAdded(Call call) {
        throw new RuntimeException("Stub!");
    }

    public void onCallRemoved(Call call) {
        throw new RuntimeException("Stub!");
    }

    public void onCanAddCallChanged(boolean canAddCall) {
        throw new RuntimeException("Stub!");
    }

    public void onSilenceRinger() {
        throw new RuntimeException("Stub!");
    }

    public void onConnectionEvent(Call call, String event, Bundle extras) {
        throw new RuntimeException("Stub!");
    }
}
