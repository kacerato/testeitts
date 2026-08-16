package android.app.job;

import android.content.ClipData;
import android.content.ComponentName;
import android.net.Uri;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.PersistableBundle;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/app/job/JobInfo.class
 */
public class JobInfo implements Parcelable {
    public static final int BACKOFF_POLICY_EXPONENTIAL = 1;
    public static final int BACKOFF_POLICY_LINEAR = 0;
    public static final Parcelable.Creator<JobInfo> CREATOR = null;
    public static final long DEFAULT_INITIAL_BACKOFF_MILLIS = 30000;
    public static final long MAX_BACKOFF_DELAY_MILLIS = 18000000;
    public static final int NETWORK_TYPE_ANY = 1;
    public static final int NETWORK_TYPE_METERED = 4;
    public static final int NETWORK_TYPE_NONE = 0;
    public static final int NETWORK_TYPE_NOT_ROAMING = 3;
    public static final int NETWORK_TYPE_UNMETERED = 2;

    /* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/app/job/JobInfo$TriggerContentUri.class
 */
    public static final class TriggerContentUri implements Parcelable {
        public static final Parcelable.Creator<TriggerContentUri> CREATOR = null;
        public static final int FLAG_NOTIFY_FOR_DESCENDANTS = 1;

        public TriggerContentUri(Uri uri, int flags) {
            throw new RuntimeException("Stub!");
        }

        public Uri getUri() {
            throw new RuntimeException("Stub!");
        }

        public int getFlags() {
            throw new RuntimeException("Stub!");
        }

        public boolean equals(Object o10) {
            throw new RuntimeException("Stub!");
        }

        public int hashCode() {
            throw new RuntimeException("Stub!");
        }

        @Override
        public int describeContents() {
            throw new RuntimeException("Stub!");
        }

        @Override
        public void writeToParcel(Parcel out, int flags) {
            throw new RuntimeException("Stub!");
        }
    }

    /* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/app/job/JobInfo$Builder.class
 */
    public static final class Builder {
        public Builder(int jobId, ComponentName jobService) {
            throw new RuntimeException("Stub!");
        }

        public Builder setExtras(PersistableBundle extras) {
            throw new RuntimeException("Stub!");
        }

        public Builder setTransientExtras(Bundle extras) {
            throw new RuntimeException("Stub!");
        }

        public Builder setClipData(ClipData clip, int grantFlags) {
            throw new RuntimeException("Stub!");
        }

        public Builder setRequiredNetworkType(int networkType) {
            throw new RuntimeException("Stub!");
        }

        public Builder setRequiresCharging(boolean requiresCharging) {
            throw new RuntimeException("Stub!");
        }

        public Builder setRequiresBatteryNotLow(boolean batteryNotLow) {
            throw new RuntimeException("Stub!");
        }

        public Builder setRequiresDeviceIdle(boolean requiresDeviceIdle) {
            throw new RuntimeException("Stub!");
        }

        public Builder setRequiresStorageNotLow(boolean storageNotLow) {
            throw new RuntimeException("Stub!");
        }

        public Builder addTriggerContentUri(TriggerContentUri uri) {
            throw new RuntimeException("Stub!");
        }

        public Builder setTriggerContentUpdateDelay(long durationMs) {
            throw new RuntimeException("Stub!");
        }

        public Builder setTriggerContentMaxDelay(long durationMs) {
            throw new RuntimeException("Stub!");
        }

        public Builder setPeriodic(long intervalMillis) {
            throw new RuntimeException("Stub!");
        }

        public Builder setPeriodic(long intervalMillis, long flexMillis) {
            throw new RuntimeException("Stub!");
        }

        public Builder setMinimumLatency(long minLatencyMillis) {
            throw new RuntimeException("Stub!");
        }

        public Builder setOverrideDeadline(long maxExecutionDelayMillis) {
            throw new RuntimeException("Stub!");
        }

        public Builder setBackoffCriteria(long initialBackoffMillis, int backoffPolicy) {
            throw new RuntimeException("Stub!");
        }

        public Builder setPersisted(boolean isPersisted) {
            throw new RuntimeException("Stub!");
        }

        public JobInfo build() {
            throw new RuntimeException("Stub!");
        }
    }

    JobInfo() {
        throw new RuntimeException("Stub!");
    }

    public static final long getMinPeriodMillis() {
        throw new RuntimeException("Stub!");
    }

    public static final long getMinFlexMillis() {
        throw new RuntimeException("Stub!");
    }

    public int getId() {
        throw new RuntimeException("Stub!");
    }

    public PersistableBundle getExtras() {
        throw new RuntimeException("Stub!");
    }

    public Bundle getTransientExtras() {
        throw new RuntimeException("Stub!");
    }

    public ClipData getClipData() {
        throw new RuntimeException("Stub!");
    }

    public int getClipGrantFlags() {
        throw new RuntimeException("Stub!");
    }

    public ComponentName getService() {
        throw new RuntimeException("Stub!");
    }

    public boolean isRequireCharging() {
        throw new RuntimeException("Stub!");
    }

    public boolean isRequireBatteryNotLow() {
        throw new RuntimeException("Stub!");
    }

    public boolean isRequireDeviceIdle() {
        throw new RuntimeException("Stub!");
    }

    public boolean isRequireStorageNotLow() {
        throw new RuntimeException("Stub!");
    }

    public TriggerContentUri[] getTriggerContentUris() {
        throw new RuntimeException("Stub!");
    }

    public long getTriggerContentUpdateDelay() {
        throw new RuntimeException("Stub!");
    }

    public long getTriggerContentMaxDelay() {
        throw new RuntimeException("Stub!");
    }

    public int getNetworkType() {
        throw new RuntimeException("Stub!");
    }

    public long getMinLatencyMillis() {
        throw new RuntimeException("Stub!");
    }

    public long getMaxExecutionDelayMillis() {
        throw new RuntimeException("Stub!");
    }

    public boolean isPeriodic() {
        throw new RuntimeException("Stub!");
    }

    public boolean isPersisted() {
        throw new RuntimeException("Stub!");
    }

    public long getIntervalMillis() {
        throw new RuntimeException("Stub!");
    }

    public long getFlexMillis() {
        throw new RuntimeException("Stub!");
    }

    public long getInitialBackoffMillis() {
        throw new RuntimeException("Stub!");
    }

    public int getBackoffPolicy() {
        throw new RuntimeException("Stub!");
    }

    public boolean equals(Object o10) {
        throw new RuntimeException("Stub!");
    }

    public int hashCode() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public int describeContents() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void writeToParcel(Parcel out, int flags) {
        throw new RuntimeException("Stub!");
    }

    public String toString() {
        throw new RuntimeException("Stub!");
    }
}
