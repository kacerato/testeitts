package android.service.autofill;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import java.util.List;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/service/autofill/SaveRequest.class
 */
public final class SaveRequest implements Parcelable {
    public static final Parcelable.Creator<SaveRequest> CREATOR = null;

    SaveRequest() {
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
