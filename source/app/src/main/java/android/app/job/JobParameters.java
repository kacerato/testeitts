package android.app.job;

import android.content.ClipData;
import android.net.Uri;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.PersistableBundle;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/app/job/JobParameters.class
 */
public class JobParameters implements Parcelable {
    public static final Parcelable.Creator<JobParameters> CREATOR = null;

    JobParameters() {
        throw new RuntimeException("Stub!");
    }

    public int getJobId() {
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

    public boolean isOverrideDeadlineExpired() {
        throw new RuntimeException("Stub!");
    }

    public Uri[] getTriggeredContentUris() {
        throw new RuntimeException("Stub!");
    }

    public String[] getTriggeredContentAuthorities() {
        throw new RuntimeException("Stub!");
    }

    public JobWorkItem dequeueWork() {
        throw new RuntimeException("Stub!");
    }

    public void completeWork(JobWorkItem work) {
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
}
