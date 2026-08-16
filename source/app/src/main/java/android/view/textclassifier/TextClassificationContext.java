package android.view.textclassifier;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.RecentlyNonNull;
import androidx.annotation.RecentlyNullable;

public final class TextClassificationContext implements Parcelable {
    public static final Parcelable.Creator<TextClassificationContext> CREATOR = null;

    TextClassificationContext(Parcel in2) {
        throw new RuntimeException("Stub!");
    }

    @RecentlyNonNull
    public String getPackageName() {
        throw new RuntimeException("Stub!");
    }

    @RecentlyNonNull
    public String getWidgetType() {
        throw new RuntimeException("Stub!");
    }

    @RecentlyNullable
    public String getWidgetVersion() {
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

    public static final class Builder {
        public Builder(@RecentlyNonNull String packageName, @RecentlyNonNull String widgetType) {
            throw new RuntimeException("Stub!");
        }

        public Builder setWidgetVersion(@RecentlyNullable String widgetVersion) {
            throw new RuntimeException("Stub!");
        }

        @RecentlyNonNull
        public TextClassificationContext build() {
            throw new RuntimeException("Stub!");
        }
    }
}
