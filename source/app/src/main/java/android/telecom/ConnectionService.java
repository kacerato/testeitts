package android.telecom;

import android.app.Service;
import android.content.Intent;
import android.os.IBinder;
import java.util.Collection;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/telecom/ConnectionService.class
 */
public abstract class ConnectionService extends Service {
    public static final String SERVICE_INTERFACE = "android.telecom.ConnectionService";

    public ConnectionService() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public final IBinder onBind(Intent intent) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public boolean onUnbind(Intent intent) {
        throw new RuntimeException("Stub!");
    }

    public final RemoteConnection createRemoteIncomingConnection(PhoneAccountHandle connectionManagerPhoneAccount, ConnectionRequest request) {
        throw new RuntimeException("Stub!");
    }

    public final RemoteConnection createRemoteOutgoingConnection(PhoneAccountHandle connectionManagerPhoneAccount, ConnectionRequest request) {
        throw new RuntimeException("Stub!");
    }

    public final void conferenceRemoteConnections(RemoteConnection remoteConnection1, RemoteConnection remoteConnection2) {
        throw new RuntimeException("Stub!");
    }

    public final void addConference(Conference conference) {
        throw new RuntimeException("Stub!");
    }

    public final void addExistingConnection(PhoneAccountHandle phoneAccountHandle, Connection connection) {
        throw new RuntimeException("Stub!");
    }

    public final Collection<Connection> getAllConnections() {
        throw new RuntimeException("Stub!");
    }

    public final Collection<Conference> getAllConferences() {
        throw new RuntimeException("Stub!");
    }

    public Connection onCreateIncomingConnection(PhoneAccountHandle connectionManagerPhoneAccount, ConnectionRequest request) {
        throw new RuntimeException("Stub!");
    }

    public void onCreateIncomingConnectionFailed(PhoneAccountHandle connectionManagerPhoneAccount, ConnectionRequest request) {
        throw new RuntimeException("Stub!");
    }

    public void onCreateOutgoingConnectionFailed(PhoneAccountHandle connectionManagerPhoneAccount, ConnectionRequest request) {
        throw new RuntimeException("Stub!");
    }

    public Connection onCreateOutgoingConnection(PhoneAccountHandle connectionManagerPhoneAccount, ConnectionRequest request) {
        throw new RuntimeException("Stub!");
    }

    public void onConference(Connection connection1, Connection connection2) {
        throw new RuntimeException("Stub!");
    }

    public void onRemoteConferenceAdded(RemoteConference conference) {
        throw new RuntimeException("Stub!");
    }

    public void onRemoteExistingConnectionAdded(RemoteConnection connection) {
        throw new RuntimeException("Stub!");
    }
}
