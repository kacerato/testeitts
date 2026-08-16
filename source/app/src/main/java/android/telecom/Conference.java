package android.telecom;

import android.os.Bundle;
import android.telecom.Connection;
import java.util.List;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/telecom/Conference.class
 */
public abstract class Conference extends Conferenceable {
    public static final long CONNECT_TIME_NOT_SPECIFIED = 0;

    public Conference(PhoneAccountHandle phoneAccount) {
        throw new RuntimeException("Stub!");
    }

    public final PhoneAccountHandle getPhoneAccountHandle() {
        throw new RuntimeException("Stub!");
    }

    public final List<Connection> getConnections() {
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

    public final CallAudioState getCallAudioState() {
        throw new RuntimeException("Stub!");
    }

    public Connection.VideoProvider getVideoProvider() {
        throw new RuntimeException("Stub!");
    }

    public int getVideoState() {
        throw new RuntimeException("Stub!");
    }

    public void onDisconnect() {
        throw new RuntimeException("Stub!");
    }

    public void onSeparate(Connection connection) {
        throw new RuntimeException("Stub!");
    }

    public void onMerge(Connection connection) {
        throw new RuntimeException("Stub!");
    }

    public void onHold() {
        throw new RuntimeException("Stub!");
    }

    public void onUnhold() {
        throw new RuntimeException("Stub!");
    }

    public void onMerge() {
        throw new RuntimeException("Stub!");
    }

    public void onSwap() {
        throw new RuntimeException("Stub!");
    }

    public void onPlayDtmfTone(char c10) {
        throw new RuntimeException("Stub!");
    }

    public void onStopDtmfTone() {
        throw new RuntimeException("Stub!");
    }

    public void onCallAudioStateChanged(CallAudioState state) {
        throw new RuntimeException("Stub!");
    }

    public void onConnectionAdded(Connection connection) {
        throw new RuntimeException("Stub!");
    }

    public final void setOnHold() {
        throw new RuntimeException("Stub!");
    }

    public final void setDialing() {
        throw new RuntimeException("Stub!");
    }

    public final void setActive() {
        throw new RuntimeException("Stub!");
    }

    public final void setDisconnected(DisconnectCause disconnectCause) {
        throw new RuntimeException("Stub!");
    }

    public final DisconnectCause getDisconnectCause() {
        throw new RuntimeException("Stub!");
    }

    public final void setConnectionCapabilities(int connectionCapabilities) {
        throw new RuntimeException("Stub!");
    }

    public final void setConnectionProperties(int connectionProperties) {
        throw new RuntimeException("Stub!");
    }

    public final boolean addConnection(Connection connection) {
        throw new RuntimeException("Stub!");
    }

    public final void removeConnection(Connection connection) {
        throw new RuntimeException("Stub!");
    }

    public final void setConferenceableConnections(List<Connection> conferenceableConnections) {
        throw new RuntimeException("Stub!");
    }

    public final void setVideoState(Connection c10, int videoState) {
        throw new RuntimeException("Stub!");
    }

    public final void setVideoProvider(Connection c10, Connection.VideoProvider videoProvider) {
        throw new RuntimeException("Stub!");
    }

    public final List<Connection> getConferenceableConnections() {
        throw new RuntimeException("Stub!");
    }

    public final void destroy() {
        throw new RuntimeException("Stub!");
    }

    public final void setConnectionTime(long connectionTimeMillis) {
        throw new RuntimeException("Stub!");
    }

    public final long getConnectionTime() {
        throw new RuntimeException("Stub!");
    }

    public String toString() {
        throw new RuntimeException("Stub!");
    }

    public final void setStatusHints(StatusHints statusHints) {
        throw new RuntimeException("Stub!");
    }

    public final StatusHints getStatusHints() {
        throw new RuntimeException("Stub!");
    }

    public final void setExtras(Bundle extras) {
        throw new RuntimeException("Stub!");
    }

    public final void putExtras(Bundle extras) {
        throw new RuntimeException("Stub!");
    }

    public final void removeExtras(List<String> keys) {
        throw new RuntimeException("Stub!");
    }

    public final void removeExtras(String... keys) {
        throw new RuntimeException("Stub!");
    }

    public final Bundle getExtras() {
        throw new RuntimeException("Stub!");
    }

    public void onExtrasChanged(Bundle extras) {
        throw new RuntimeException("Stub!");
    }
}
