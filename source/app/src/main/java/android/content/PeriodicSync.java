package android.content;

import android.accounts.Account;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/content/PeriodicSync.class
 */
public class PeriodicSync implements Parcelable {
    public static final Parcelable.Creator<PeriodicSync> CREATOR = null;
    public final Account account;
    public final String authority;
    public final Bundle extras;
    public final long period;

    public PeriodicSync(Account account, String authority, Bundle extras, long periodInSeconds) {
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

    public boolean equals(Object o10) {
        throw new RuntimeException("Stub!");
    }

    public String toString() {
        throw new RuntimeException("Stub!");
    }
}
