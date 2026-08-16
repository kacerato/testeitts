package android.service.autofill;

import android.os.Parcel;
import android.os.Parcelable;
import android.view.autofill.AutofillId;
import androidx.annotation.RecentlyNonNull;
import java.util.regex.Pattern;

public final class RegexValidator implements Validator, Parcelable {
    public static final Parcelable.Creator<RegexValidator> CREATOR = null;

    public RegexValidator(@RecentlyNonNull AutofillId id2, @RecentlyNonNull Pattern regex) {
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
