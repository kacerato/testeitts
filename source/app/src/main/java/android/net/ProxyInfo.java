package android.net;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.List;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/net/ProxyInfo.class
 */
public class ProxyInfo implements Parcelable {
    public static final Parcelable.Creator<ProxyInfo> CREATOR = null;

    ProxyInfo() {
        throw new RuntimeException("Stub!");
    }

    public static ProxyInfo buildDirectProxy(String host, int port) {
        throw new RuntimeException("Stub!");
    }

    public static ProxyInfo buildDirectProxy(String host, int port, List<String> exclList) {
        throw new RuntimeException("Stub!");
    }

    public static ProxyInfo buildPacProxy(Uri pacUri) {
        throw new RuntimeException("Stub!");
    }

    public Uri getPacFileUrl() {
        throw new RuntimeException("Stub!");
    }

    public String getHost() {
        throw new RuntimeException("Stub!");
    }

    public int getPort() {
        throw new RuntimeException("Stub!");
    }

    public String[] getExclusionList() {
        throw new RuntimeException("Stub!");
    }

    public String toString() {
        throw new RuntimeException("Stub!");
    }

    public boolean equals(Object o10) {
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
