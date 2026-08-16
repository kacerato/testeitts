package android.service.autofill;

import android.os.Parcel;
import android.os.Parcelable;
import android.widget.RemoteViews;
import androidx.annotation.RecentlyNonNull;

public final class BatchUpdates implements Parcelable {
    public static final Parcelable.Creator<BatchUpdates> CREATOR = null;

    BatchUpdates(Builder builder) {
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
        public Builder() {
            throw new RuntimeException("Stub!");
        }

        public Builder updateTemplate(@RecentlyNonNull RemoteViews updates) {
            throw new RuntimeException("Stub!");
        }

        public Builder transformChild(int id2, @RecentlyNonNull Transformation transformation) {
            throw new RuntimeException("Stub!");
        }

        public BatchUpdates build() {
            throw new RuntimeException("Stub!");
        }
    }
}
