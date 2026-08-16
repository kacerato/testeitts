package android.telephony;

import android.os.Parcel;
import android.os.Parcelable;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/telephony/CellInfo.class
 */
public abstract class CellInfo implements Parcelable {
    public static final Parcelable.Creator<CellInfo> CREATOR = null;

    @Override
    public abstract void writeToParcel(Parcel parcel, int i10);

    public CellInfo() {
        throw new RuntimeException("Stub!");
    }

    public boolean isRegistered() {
        throw new RuntimeException("Stub!");
    }

    public long getTimeStamp() {
        throw new RuntimeException("Stub!");
    }

    public int hashCode() {
        throw new RuntimeException("Stub!");
    }

    public boolean equals(Object other) {
        throw new RuntimeException("Stub!");
    }

    public String toString() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public int describeContents() {
        throw new RuntimeException("Stub!");
    }
}
