package android.telecom;

import android.os.Bundle;
import android.os.Handler;
import java.util.List;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/telecom/RemoteConference.class
 */
public final class RemoteConference {

    /* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/telecom/RemoteConference$Callback.class
 */
    public static abstract class Callback {
        public Callback() {
            throw new RuntimeException("Stub!");
        }

        public void onStateChanged(RemoteConference conference, int oldState, int newState) {
            throw new RuntimeException("Stub!");
        }

        public void onDisconnected(RemoteConference conference, DisconnectCause disconnectCause) {
            throw new RuntimeException("Stub!");
        }

        public void onConnectionAdded(RemoteConference conference, RemoteConnection connection) {
            throw new RuntimeException("Stub!");
        }

        public void onConnectionRemoved(RemoteConference conference, RemoteConnection connection) {
            throw new RuntimeException("Stub!");
        }

        public void onConnectionCapabilitiesChanged(RemoteConference conference, int connectionCapabilities) {
            throw new RuntimeException("Stub!");
        }

        public void onConnectionPropertiesChanged(RemoteConference conference, int connectionProperties) {
            throw new RuntimeException("Stub!");
        }

        public void onConferenceableConnectionsChanged(RemoteConference conference, List<RemoteConnection> conferenceableConnections) {
            throw new RuntimeException("Stub!");
        }

        public void onDestroyed(RemoteConference conference) {
            throw new RuntimeException("Stub!");
        }

        public void onExtrasChanged(RemoteConference conference, Bundle extras) {
            throw new RuntimeException("Stub!");
        }
    }

    RemoteConference() {
        throw new RuntimeException("Stub!");
    }

    public final List<RemoteConnection> getConnections() {
        throw new RuntimeException("Stub!");
    }

    public final int getState() {
        throw new RuntimeException("Stub!");
    }

    public final int getConnectionCapabilities() {
        throw new RuntimeException("Stub!");
    }

    public final int getConnectionProperties() {
        throw new RuntimeException("Stub!");
    }

    public final Bundle getExtras() {
        throw new RuntimeException("Stub!");
    }

    public void disconnect() {
        throw new RuntimeException("Stub!");
    }

    public void separate(RemoteConnection connection) {
        throw new RuntimeException("Stub!");
    }

    public void merge() {
        throw new RuntimeException("Stub!");
    }

    public void swap() {
        throw new RuntimeException("Stub!");
    }

    public void hold() {
        throw new RuntimeException("Stub!");
    }

    public void unhold() {
        throw new RuntimeException("Stub!");
    }

    public DisconnectCause getDisconnectCause() {
        throw new RuntimeException("Stub!");
    }

    public void playDtmfTone(char digit) {
        throw new RuntimeException("Stub!");
    }

    public void stopDtmfTone() {
        throw new RuntimeException("Stub!");
    }

    public void setCallAudioState(CallAudioState state) {
        throw new RuntimeException("Stub!");
    }

    public List<RemoteConnection> getConferenceableConnections() {
        throw new RuntimeException("Stub!");
    }

    public final void registerCallback(Callback callback) {
        throw new RuntimeException("Stub!");
    }

    public final void registerCallback(Callback callback, Handler handler) {
        throw new RuntimeException("Stub!");
    }

    public final void unregisterCallback(Callback callback) {
        throw new RuntimeException("Stub!");
    }
}
