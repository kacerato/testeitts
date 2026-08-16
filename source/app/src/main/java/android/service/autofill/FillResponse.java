package android.service.autofill;

import android.content.IntentSender;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.view.autofill.AutofillId;
import android.widget.RemoteViews;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/service/autofill/FillResponse.class
 */
public final class FillResponse implements Parcelable {
    public static final Parcelable.Creator<FillResponse> CREATOR = null;

    /* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/service/autofill/FillResponse$Builder.class
 */
    public static final class Builder {
        public Builder() {
            throw new RuntimeException("Stub!");
        }

        public Builder setAuthentication(AutofillId[] ids, IntentSender authentication, RemoteViews presentation) {
            throw new RuntimeException("Stub!");
        }

        public Builder setIgnoredIds(AutofillId... ids) {
            throw new RuntimeException("Stub!");
        }

        public Builder addDataset(Dataset dataset) {
            throw new RuntimeException("Stub!");
        }

        public Builder setSaveInfo(SaveInfo saveInfo) {
            throw new RuntimeException("Stub!");
        }

        public Builder setClientState(Bundle clientState) {
            throw new RuntimeException("Stub!");
        }

        public FillResponse build() {
            throw new RuntimeException("Stub!");
        }
    }

    FillResponse() {
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
    public void writeToParcel(Parcel parcel, int flags) {
        throw new RuntimeException("Stub!");
    }
}
