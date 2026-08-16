package android.service.autofill;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.RecentlyNonNull;
import java.util.regex.Pattern;

public final class TextValueSanitizer implements Sanitizer, Parcelable {
    public static final Parcelable.Creator<TextValueSanitizer> CREATOR = null;

    public TextValueSanitizer(@RecentlyNonNull Pattern regex, @RecentlyNonNull String subst) {
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
