package android.service.autofill;

import android.icu.text.DateFormat;
import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.RecentlyNonNull;

public final class DateValueSanitizer implements Sanitizer, Parcelable {
    public static final Parcelable.Creator<DateValueSanitizer> CREATOR = null;

    public DateValueSanitizer(@RecentlyNonNull DateFormat dateFormat) {
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
