package android.telecom;

import android.net.Uri;
import android.os.Parcel;
import android.os.Parcelable;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/telecom/GatewayInfo.class
 */
public class GatewayInfo implements Parcelable {
    public static final Parcelable.Creator<GatewayInfo> CREATOR = null;

    public GatewayInfo(String packageName, Uri gatewayUri, Uri originalAddress) {
        throw new RuntimeException("Stub!");
    }

    public String getGatewayProviderPackageName() {
        throw new RuntimeException("Stub!");
    }

    public Uri getGatewayAddress() {
        throw new RuntimeException("Stub!");
    }

    public Uri getOriginalAddress() {
        throw new RuntimeException("Stub!");
    }

    public boolean isEmpty() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public int describeContents() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void writeToParcel(Parcel destination, int flags) {
        throw new RuntimeException("Stub!");
    }
}
