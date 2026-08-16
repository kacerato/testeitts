package android.content;

import android.accounts.Account;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/content/SyncRequest.class
 */
public class SyncRequest implements Parcelable {
    public static final Parcelable.Creator<SyncRequest> CREATOR = null;

    /* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/content/SyncRequest$Builder.class
 */
    public static class Builder {
        public Builder() {
            throw new RuntimeException("Stub!");
        }

        public Builder syncOnce() {
            throw new RuntimeException("Stub!");
        }

        public Builder syncPeriodic(long pollFrequency, long beforeSeconds) {
            throw new RuntimeException("Stub!");
        }

        public Builder setDisallowMetered(boolean disallow) {
            throw new RuntimeException("Stub!");
        }

        public Builder setRequiresCharging(boolean requiresCharging) {
            throw new RuntimeException("Stub!");
        }

        public Builder setSyncAdapter(Account account, String authority) {
            throw new RuntimeException("Stub!");
        }

        public Builder setExtras(Bundle bundle) {
            throw new RuntimeException("Stub!");
        }

        public Builder setNoRetry(boolean noRetry) {
            throw new RuntimeException("Stub!");
        }

        public Builder setIgnoreSettings(boolean ignoreSettings) {
            throw new RuntimeException("Stub!");
        }

        public Builder setIgnoreBackoff(boolean ignoreBackoff) {
            throw new RuntimeException("Stub!");
        }

        public Builder setManual(boolean isManual) {
            throw new RuntimeException("Stub!");
        }

        public Builder setExpedited(boolean expedited) {
            throw new RuntimeException("Stub!");
        }

        public SyncRequest build() {
            throw new RuntimeException("Stub!");
        }
    }

    SyncRequest() {
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
