package android.service.autofill;

import android.os.Parcel;
import android.os.Parcelable;
import android.view.autofill.AutofillId;
import androidx.annotation.RecentlyNonNull;
import java.util.regex.Pattern;

public final class CharSequenceTransformation implements Transformation, Parcelable {
    public static final Parcelable.Creator<CharSequenceTransformation> CREATOR = null;

    CharSequenceTransformation(Builder builder) {
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

    public static class Builder {
        public Builder(@RecentlyNonNull AutofillId id2, @RecentlyNonNull Pattern regex, @RecentlyNonNull String subst) {
            throw new RuntimeException("Stub!");
        }

        public Builder addField(@RecentlyNonNull AutofillId id2, @RecentlyNonNull Pattern regex, @RecentlyNonNull String subst) {
            throw new RuntimeException("Stub!");
        }

        public CharSequenceTransformation build() {
            throw new RuntimeException("Stub!");
        }
    }
}
