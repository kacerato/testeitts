package android.app.job;

import android.app.Service;
import android.os.IBinder;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/app/job/JobServiceEngine.class
 */
public abstract class JobServiceEngine {
    public abstract boolean onStartJob(JobParameters jobParameters);

    public abstract boolean onStopJob(JobParameters jobParameters);

    public JobServiceEngine(Service service) {
        throw new RuntimeException("Stub!");
    }

    public final IBinder getBinder() {
        throw new RuntimeException("Stub!");
    }

    public void jobFinished(JobParameters params, boolean needsReschedule) {
        throw new RuntimeException("Stub!");
    }
}
