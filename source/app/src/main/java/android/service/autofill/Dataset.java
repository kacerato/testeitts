package android.service.autofill;

import android.content.IntentSender;
import android.os.Parcel;
import android.os.Parcelable;
import android.view.autofill.AutofillId;
import android.view.autofill.AutofillValue;
import android.widget.RemoteViews;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/service/autofill/Dataset.class
 */
public final class Dataset implements Parcelable {
    public static final Parcelable.Creator<Dataset> CREATOR = null;

    /* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/service/autofill/Dataset$Builder.class
 */
    public static final class Builder {
        public Builder(RemoteViews presentation) {
            throw new RuntimeException("Stub!");
        }

        public Builder() {
            throw new RuntimeException("Stub!");
        }

        public Builder setAuthentication(IntentSender authentication) {
            throw new RuntimeException("Stub!");
        }

        public Builder setId(String id2) {
            throw new RuntimeException("Stub!");
        }

        public Builder setValue(AutofillId id2, AutofillValue value) {
            throw new RuntimeException("Stub!");
        }

        public Builder setValue(AutofillId id2, AutofillValue value, RemoteViews presentation) {
            throw new RuntimeException("Stub!");
        }

        public Dataset build() {
            throw new RuntimeException("Stub!");
        }
    }

    Dataset() {
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
