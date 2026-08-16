package android.net;

import android.os.Parcel;
import android.os.Parcelable;
import java.net.InetAddress;
import java.util.List;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/net/LinkProperties.class
 */
public final class LinkProperties implements Parcelable {
    public static final Parcelable.Creator<LinkProperties> CREATOR = null;

    LinkProperties() {
        throw new RuntimeException("Stub!");
    }

    public String getInterfaceName() {
        throw new RuntimeException("Stub!");
    }

    public List<LinkAddress> getLinkAddresses() {
        throw new RuntimeException("Stub!");
    }

    public List<InetAddress> getDnsServers() {
        throw new RuntimeException("Stub!");
    }

    public String getDomains() {
        throw new RuntimeException("Stub!");
    }

    public List<RouteInfo> getRoutes() {
        throw new RuntimeException("Stub!");
    }

    public ProxyInfo getHttpProxy() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public int describeContents() {
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
    public void writeToParcel(Parcel dest, int flags) {
        throw new RuntimeException("Stub!");
    }
}
