package android.app.job;

import android.app.Service;
import android.content.Intent;
import android.os.IBinder;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/app/job/JobService.class
 */
public abstract class JobService extends Service {
    public static final String PERMISSION_BIND = "android.permission.BIND_JOB_SERVICE";

    public abstract boolean onStartJob(JobParameters jobParameters);

    public abstract boolean onStopJob(JobParameters jobParameters);

    public JobService() {
        throw new RuntimeException("Stub!");
    }

    public final void jobFinished(JobParameters params, boolean needsReschedule) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public final IBinder onBind(Intent intent) {
        throw new RuntimeException("Stub!");
    }
}
