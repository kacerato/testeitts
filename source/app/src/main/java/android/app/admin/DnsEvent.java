package android.app.admin;

import android.os.Parcel;
import android.os.Parcelable;
import java.net.InetAddress;
import java.util.List;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/app/admin/DnsEvent.class
 */
public final class DnsEvent extends NetworkEvent implements Parcelable {
    public static final Parcelable.Creator<DnsEvent> CREATOR = null;

    DnsEvent() {
        throw new RuntimeException("Stub!");
    }

    public String getHostname() {
        throw new RuntimeException("Stub!");
    }

    public List<InetAddress> getInetAddresses() {
        throw new RuntimeException("Stub!");
    }

    public int getTotalResolvedAddressCount() {
        throw new RuntimeException("Stub!");
    }

    public String toString() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public int describeContents() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void writeToParcel(Parcel out, int flags) {
        throw new RuntimeException("Stub!");
    }
}
