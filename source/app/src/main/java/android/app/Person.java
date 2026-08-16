package android.app;

import android.graphics.drawable.Icon;
import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.RecentlyNonNull;
import androidx.annotation.RecentlyNullable;

public final class Person implements Parcelable {
    public static final Parcelable.Creator<Person> CREATOR = null;

    Person(Parcel in2) {
        throw new RuntimeException("Stub!");
    }

    public Builder toBuilder() {
        throw new RuntimeException("Stub!");
    }

    @RecentlyNullable
    public String getUri() {
        throw new RuntimeException("Stub!");
    }

    @RecentlyNullable
    public CharSequence getName() {
        throw new RuntimeException("Stub!");
    }

    @RecentlyNullable
    public Icon getIcon() {
        throw new RuntimeException("Stub!");
    }

    @RecentlyNullable
    public String getKey() {
        throw new RuntimeException("Stub!");
    }

    public boolean isBot() {
        throw new RuntimeException("Stub!");
    }

    public boolean isImportant() {
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

        @RecentlyNonNull
        public Builder setName(@RecentlyNullable CharSequence name) {
            throw new RuntimeException("Stub!");
        }

        @RecentlyNonNull
        public Builder setIcon(@RecentlyNullable Icon icon) {
            throw new RuntimeException("Stub!");
        }

        @RecentlyNonNull
        public Builder setUri(@RecentlyNullable String uri) {
            throw new RuntimeException("Stub!");
        }

        @RecentlyNonNull
        public Builder setKey(@RecentlyNullable String key) {
            throw new RuntimeException("Stub!");
        }

        @RecentlyNonNull
        public Builder setImportant(boolean isImportant) {
            throw new RuntimeException("Stub!");
        }

        @RecentlyNonNull
        public Builder setBot(boolean isBot) {
            throw new RuntimeException("Stub!");
        }

        @RecentlyNonNull
        public Person build() {
            throw new RuntimeException("Stub!");
        }
    }
}
