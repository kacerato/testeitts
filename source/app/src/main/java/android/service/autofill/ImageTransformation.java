package android.service.autofill;

import android.os.Parcel;
import android.os.Parcelable;
import android.view.autofill.AutofillId;
import androidx.annotation.RecentlyNonNull;
import java.util.regex.Pattern;

public final class ImageTransformation implements Transformation, Parcelable {
    public static final Parcelable.Creator<ImageTransformation> CREATOR = null;

    ImageTransformation(Builder builder) {
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
        @Deprecated
        public Builder(@RecentlyNonNull AutofillId id2, @RecentlyNonNull Pattern regex, int resId) {
            throw new RuntimeException("Stub!");
        }

        public Builder(@RecentlyNonNull AutofillId id2, @RecentlyNonNull Pattern regex, int resId, @RecentlyNonNull CharSequence contentDescription) {
            throw new RuntimeException("Stub!");
        }

        @Deprecated
        public Builder addOption(@RecentlyNonNull Pattern regex, int resId) {
            throw new RuntimeException("Stub!");
        }

        public Builder addOption(@RecentlyNonNull Pattern regex, int resId, @RecentlyNonNull CharSequence contentDescription) {
            throw new RuntimeException("Stub!");
        }

        public ImageTransformation build() {
            throw new RuntimeException("Stub!");
        }
    }
}
