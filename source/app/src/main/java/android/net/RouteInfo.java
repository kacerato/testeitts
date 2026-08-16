package android.net;

import android.os.Parcel;
import android.os.Parcelable;
import java.net.InetAddress;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/net/RouteInfo.class
 */
public final class RouteInfo implements Parcelable {
    public static final Parcelable.Creator<RouteInfo> CREATOR = null;

    RouteInfo() {
        throw new RuntimeException("Stub!");
    }

    public IpPrefix getDestination() {
        throw new RuntimeException("Stub!");
    }

    public InetAddress getGateway() {
        throw new RuntimeException("Stub!");
    }

    public String getInterface() {
        throw new RuntimeException("Stub!");
    }

    public boolean isDefaultRoute() {
        throw new RuntimeException("Stub!");
    }

    public boolean matches(InetAddress destination) {
        throw new RuntimeException("Stub!");
    }

    public String toString() {
        throw new RuntimeException("Stub!");
    }

    public boolean equals(Object obj) {
        throw new RuntimeException("Stub!");
    }

    public int hashCode() {
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
}
