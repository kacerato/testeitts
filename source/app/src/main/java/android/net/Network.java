package android.net;

import android.os.Parcel;
import android.os.Parcelable;
import java.io.FileDescriptor;
import java.io.IOException;
import java.net.DatagramSocket;
import java.net.InetAddress;
import java.net.Socket;
import java.net.URL;
import java.net.URLConnection;
import java.net.UnknownHostException;
import javax.net.SocketFactory;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/net/Network.class
 */
public class Network implements Parcelable {
    public static final Parcelable.Creator<Network> CREATOR = null;

    Network() {
        throw new RuntimeException("Stub!");
    }

    public InetAddress[] getAllByName(String host) throws UnknownHostException {
        throw new RuntimeException("Stub!");
    }

    public InetAddress getByName(String host) throws UnknownHostException {
        throw new RuntimeException("Stub!");
    }

    public SocketFactory getSocketFactory() {
        throw new RuntimeException("Stub!");
    }

    public URLConnection openConnection(URL url) throws IOException {
        throw new RuntimeException("Stub!");
    }

    public URLConnection openConnection(URL url, java.net.Proxy proxy) throws IOException {
        throw new RuntimeException("Stub!");
    }

    public void bindSocket(DatagramSocket socket) throws IOException {
        throw new RuntimeException("Stub!");
    }

    public void bindSocket(Socket socket) throws IOException {
        throw new RuntimeException("Stub!");
    }

    public void bindSocket(FileDescriptor fd2) throws IOException {
        throw new RuntimeException("Stub!");
    }

    public long getNetworkHandle() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public int describeContents() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void writeToParcel(Parcel dest, int flags) {
        throw new RuntimeException("Stub!");
    }

    public boolean equals(Object obj) {
        throw new RuntimeException("Stub!");
    }

    public int hashCode() {
        throw new RuntimeException("Stub!");
    }

    public String toString() {
        throw new RuntimeException("Stub!");
    }
}
