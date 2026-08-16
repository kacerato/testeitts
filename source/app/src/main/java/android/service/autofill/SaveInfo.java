package android.service.autofill;

import android.content.IntentSender;
import android.os.Parcel;
import android.os.Parcelable;
import android.view.autofill.AutofillId;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/service/autofill/SaveInfo.class
 */
public final class SaveInfo implements Parcelable {
    public static final Parcelable.Creator<SaveInfo> CREATOR = null;
    public static final int FLAG_SAVE_ON_ALL_VIEWS_INVISIBLE = 1;
    public static final int NEGATIVE_BUTTON_STYLE_CANCEL = 0;
    public static final int NEGATIVE_BUTTON_STYLE_REJECT = 1;
    public static final int SAVE_DATA_TYPE_ADDRESS = 2;
    public static final int SAVE_DATA_TYPE_CREDIT_CARD = 4;
    public static final int SAVE_DATA_TYPE_EMAIL_ADDRESS = 16;
    public static final int SAVE_DATA_TYPE_GENERIC = 0;
    public static final int SAVE_DATA_TYPE_PASSWORD = 1;
    public static final int SAVE_DATA_TYPE_USERNAME = 8;

    /* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/service/autofill/SaveInfo$Builder.class
 */
    public static final class Builder {
        public Builder(int type, AutofillId[] requiredIds) {
            throw new RuntimeException("Stub!");
        }

        public Builder setFlags(int flags) {
            throw new RuntimeException("Stub!");
        }

        public Builder setOptionalIds(AutofillId[] ids) {
            throw new RuntimeException("Stub!");
        }

        public Builder setDescription(CharSequence description) {
            throw new RuntimeException("Stub!");
        }

        public Builder setNegativeAction(int style, IntentSender listener) {
            throw new RuntimeException("Stub!");
        }

        public SaveInfo build() {
            throw new RuntimeException("Stub!");
        }
    }

    SaveInfo() {
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
