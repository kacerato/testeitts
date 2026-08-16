package android.telecom;

import android.net.Uri;
import android.os.Bundle;
import android.os.Handler;
import android.telecom.VideoProfile;
import android.view.Surface;
import java.util.List;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/telecom/RemoteConnection.class
 */
public final class RemoteConnection {

    /* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/telecom/RemoteConnection$Callback.class
 */
    public static abstract class Callback {
        public Callback() {
            throw new RuntimeException("Stub!");
        }

        public void onStateChanged(RemoteConnection connection, int state) {
            throw new RuntimeException("Stub!");
        }

        public void onDisconnected(RemoteConnection connection, DisconnectCause disconnectCause) {
            throw new RuntimeException("Stub!");
        }

        public void onRingbackRequested(RemoteConnection connection, boolean ringback) {
            throw new RuntimeException("Stub!");
        }

        public void onConnectionCapabilitiesChanged(RemoteConnection connection, int connectionCapabilities) {
            throw new RuntimeException("Stub!");
        }

        public void onConnectionPropertiesChanged(RemoteConnection connection, int connectionProperties) {
            throw new RuntimeException("Stub!");
        }

        public void onPostDialWait(RemoteConnection connection, String remainingPostDialSequence) {
            throw new RuntimeException("Stub!");
        }

        public void onPostDialChar(RemoteConnection connection, char nextChar) {
            throw new RuntimeException("Stub!");
        }

        public void onVoipAudioChanged(RemoteConnection connection, boolean isVoip) {
            throw new RuntimeException("Stub!");
        }

        public void onStatusHintsChanged(RemoteConnection connection, StatusHints statusHints) {
            throw new RuntimeException("Stub!");
        }

        public void onAddressChanged(RemoteConnection connection, Uri address, int presentation) {
            throw new RuntimeException("Stub!");
        }

        public void onCallerDisplayNameChanged(RemoteConnection connection, String callerDisplayName, int presentation) {
            throw new RuntimeException("Stub!");
        }

        public void onVideoStateChanged(RemoteConnection connection, int videoState) {
            throw new RuntimeException("Stub!");
        }

        public void onDestroyed(RemoteConnection connection) {
            throw new RuntimeException("Stub!");
        }

        public void onConferenceableConnectionsChanged(RemoteConnection connection, List<RemoteConnection> conferenceableConnections) {
            throw new RuntimeException("Stub!");
        }

        public void onVideoProviderChanged(RemoteConnection connection, VideoProvider videoProvider) {
            throw new RuntimeException("Stub!");
        }

        public void onConferenceChanged(RemoteConnection connection, RemoteConference conference) {
            throw new RuntimeException("Stub!");
        }

        public void onExtrasChanged(RemoteConnection connection, Bundle extras) {
            throw new RuntimeException("Stub!");
        }

        public void onConnectionEvent(RemoteConnection connection, String event, Bundle extras) {
            throw new RuntimeException("Stub!");
        }
    }

    /* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/telecom/RemoteConnection$VideoProvider.class
 */
    public static class VideoProvider {

        /* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/telecom/RemoteConnection$VideoProvider$Callback.class
 */
        public static abstract class Callback {
            public Callback() {
                throw new RuntimeException("Stub!");
            }

            public void onSessionModifyRequestReceived(VideoProvider videoProvider, VideoProfile videoProfile) {
                throw new RuntimeException("Stub!");
            }

            public void onSessionModifyResponseReceived(VideoProvider videoProvider, int status, VideoProfile requestedProfile, VideoProfile responseProfile) {
                throw new RuntimeException("Stub!");
            }

            public void onCallSessionEvent(VideoProvider videoProvider, int event) {
                throw new RuntimeException("Stub!");
            }

            public void onPeerDimensionsChanged(VideoProvider videoProvider, int width, int height) {
                throw new RuntimeException("Stub!");
            }

            public void onCallDataUsageChanged(VideoProvider videoProvider, long dataUsage) {
                throw new RuntimeException("Stub!");
            }

            public void onCameraCapabilitiesChanged(VideoProvider videoProvider, VideoProfile.CameraCapabilities cameraCapabilities) {
                throw new RuntimeException("Stub!");
            }

            public void onVideoQualityChanged(VideoProvider videoProvider, int videoQuality) {
                throw new RuntimeException("Stub!");
            }
        }

        VideoProvider() {
            throw new RuntimeException("Stub!");
        }

        public void registerCallback(Callback l10) {
            throw new RuntimeException("Stub!");
        }

        public void unregisterCallback(Callback l10) {
            throw new RuntimeException("Stub!");
        }

        public void setCamera(String cameraId) {
            throw new RuntimeException("Stub!");
        }

        public void setPreviewSurface(Surface surface) {
            throw new RuntimeException("Stub!");
        }

        public void setDisplaySurface(Surface surface) {
            throw new RuntimeException("Stub!");
        }

        public void setDeviceOrientation(int rotation) {
            throw new RuntimeException("Stub!");
        }

        public void setZoom(float value) {
            throw new RuntimeException("Stub!");
        }

        public void sendSessionModifyRequest(VideoProfile fromProfile, VideoProfile toProfile) {
            throw new RuntimeException("Stub!");
        }

        public void sendSessionModifyResponse(VideoProfile responseProfile) {
            throw new RuntimeException("Stub!");
        }

        public void requestCameraCapabilities() {
            throw new RuntimeException("Stub!");
        }

        public void requestCallDataUsage() {
            throw new RuntimeException("Stub!");
        }

        public void setPauseImage(Uri uri) {
            throw new RuntimeException("Stub!");
        }
    }

    RemoteConnection() {
        throw new RuntimeException("Stub!");
    }

    public void registerCallback(Callback callback) {
        throw new RuntimeException("Stub!");
    }

    public void registerCallback(Callback callback, Handler handler) {
        throw new RuntimeException("Stub!");
    }

    public void unregisterCallback(Callback callback) {
        throw new RuntimeException("Stub!");
    }

    public int getState() {
        throw new RuntimeException("Stub!");
    }

    public DisconnectCause getDisconnectCause() {
        throw new RuntimeException("Stub!");
    }

    public int getConnectionCapabilities() {
        throw new RuntimeException("Stub!");
    }

    public int getConnectionProperties() {
        throw new RuntimeException("Stub!");
    }

    public boolean isVoipAudioMode() {
        throw new RuntimeException("Stub!");
    }

    public StatusHints getStatusHints() {
        throw new RuntimeException("Stub!");
    }

    public Uri getAddress() {
        throw new RuntimeException("Stub!");
    }

    public int getAddressPresentation() {
        throw new RuntimeException("Stub!");
    }

    public CharSequence getCallerDisplayName() {
        throw new RuntimeException("Stub!");
    }

    public int getCallerDisplayNamePresentation() {
        throw new RuntimeException("Stub!");
    }

    public int getVideoState() {
        throw new RuntimeException("Stub!");
    }

    public final VideoProvider getVideoProvider() {
        throw new RuntimeException("Stub!");
    }

    public final Bundle getExtras() {
        throw new RuntimeException("Stub!");
    }

    public boolean isRingbackRequested() {
        throw new RuntimeException("Stub!");
    }

    public void abort() {
        throw new RuntimeException("Stub!");
    }

    public void answer() {
        throw new RuntimeException("Stub!");
    }

    public void reject() {
        throw new RuntimeException("Stub!");
    }

    public void hold() {
        throw new RuntimeException("Stub!");
    }

    public void unhold() {
        throw new RuntimeException("Stub!");
    }

    public void disconnect() {
        throw new RuntimeException("Stub!");
    }

    public void playDtmfTone(char digit) {
        throw new RuntimeException("Stub!");
    }

    public void stopDtmfTone() {
        throw new RuntimeException("Stub!");
    }

    public void postDialContinue(boolean proceed) {
        throw new RuntimeException("Stub!");
    }

    public void pullExternalCall() {
        throw new RuntimeException("Stub!");
    }

    public void setCallAudioState(CallAudioState state) {
        throw new RuntimeException("Stub!");
    }

    public List<RemoteConnection> getConferenceableConnections() {
        throw new RuntimeException("Stub!");
    }

    public RemoteConference getConference() {
        throw new RuntimeException("Stub!");
    }
}
