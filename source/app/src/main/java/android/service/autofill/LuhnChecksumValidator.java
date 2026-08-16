package android.service.autofill;

import android.os.Parcel;
import android.os.Parcelable;
import android.view.autofill.AutofillId;
import androidx.annotation.RecentlyNonNull;

public final class LuhnChecksumValidator implements Validator, Parcelable {
    public static final Parcelable.Creator<LuhnChecksumValidator> CREATOR = null;

    public LuhnChecksumValidator(@RecentlyNonNull AutofillId... ids) {
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
