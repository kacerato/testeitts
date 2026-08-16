package android.service.autofill;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import java.util.List;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/service/autofill/FillRequest.class
 */
public final class FillRequest implements Parcelable {
    public static final Parcelable.Creator<FillRequest> CREATOR = null;
    public static final int FLAG_MANUAL_REQUEST = 1;

    FillRequest() {
        throw new RuntimeException("Stub!");
    }

    public int getId() {
        throw new RuntimeException("Stub!");
    }

    public int getFlags() {
        throw new RuntimeException("Stub!");
    }

    public List<FillContext> getFillContexts() {
        throw new RuntimeException("Stub!");
    }

    public Bundle getClientState() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public int describeContents() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void writeToParcel(Parcel parcel, int flags) {
        throw new RuntimeException("Stub!");
    }
}
