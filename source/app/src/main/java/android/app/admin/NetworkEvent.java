package android.app.admin;

import android.os.Parcel;
import android.os.Parcelable;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/app/admin/NetworkEvent.class
 */
public abstract class NetworkEvent implements Parcelable {
    public static final Parcelable.Creator<NetworkEvent> CREATOR = null;

    @Override
    public abstract void writeToParcel(Parcel parcel, int i10);

    public NetworkEvent() {
        throw new RuntimeException("Stub!");
    }

    public String getPackageName() {
        throw new RuntimeException("Stub!");
    }

    public long getTimestamp() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public int describeContents() {
        throw new RuntimeException("Stub!");
    }
}
