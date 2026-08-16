package android.service.autofill;

import android.os.Parcel;
import android.os.Parcelable;
import android.widget.RemoteViews;
import androidx.annotation.RecentlyNonNull;

public final class CustomDescription implements Parcelable {
    public static final Parcelable.Creator<CustomDescription> CREATOR = null;

    CustomDescription(Builder builder) {
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
    public void writeToParcel(Parcel dest, int flags) {
        throw new RuntimeException("Stub!");
    }

    public static class Builder {
        public Builder(@RecentlyNonNull RemoteViews parentPresentation) {
            throw new RuntimeException("Stub!");
        }

        public Builder addChild(int id2, @RecentlyNonNull Transformation transformation) {
            throw new RuntimeException("Stub!");
        }

        public Builder batchUpdate(@RecentlyNonNull Validator condition, @RecentlyNonNull BatchUpdates updates) {
            throw new RuntimeException("Stub!");
        }

        public CustomDescription build() {
            throw new RuntimeException("Stub!");
        }
    }
}
