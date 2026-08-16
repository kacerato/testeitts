package android.service.autofill;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.RecentlyNonNull;
import androidx.annotation.RecentlyNullable;

public final class UserData implements Parcelable {
    public static final Parcelable.Creator<UserData> CREATOR = null;

    UserData(Builder builder) {
        throw new RuntimeException("Stub!");
    }

    @RecentlyNullable
    public String getFieldClassificationAlgorithm() {
        throw new RuntimeException("Stub!");
    }

    public String getId() {
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

    public static int getMaxUserDataSize() {
        throw new RuntimeException("Stub!");
    }

    public static int getMaxFieldClassificationIdsSize() {
        throw new RuntimeException("Stub!");
    }

    public static int getMaxCategoryCount() {
        throw new RuntimeException("Stub!");
    }

    public static int getMinValueLength() {
        throw new RuntimeException("Stub!");
    }

    public static int getMaxValueLength() {
        throw new RuntimeException("Stub!");
    }

    public static final class Builder {
        public Builder(@RecentlyNonNull String id2, @RecentlyNonNull String value, @RecentlyNonNull String categoryId) {
            throw new RuntimeException("Stub!");
        }

        public Builder setFieldClassificationAlgorithm(@RecentlyNullable String name, @RecentlyNullable Bundle args) {
            throw new RuntimeException("Stub!");
        }

        public Builder add(@RecentlyNonNull String value, @RecentlyNonNull String categoryId) {
            throw new RuntimeException("Stub!");
        }

        public UserData build() {
            throw new RuntimeException("Stub!");
        }
    }
}
