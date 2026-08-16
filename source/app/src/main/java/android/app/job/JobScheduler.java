package android.app.job;

import java.util.List;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/app/job/JobScheduler.class
 */
public abstract class JobScheduler {
    public static final int RESULT_FAILURE = 0;
    public static final int RESULT_SUCCESS = 1;

    public abstract int schedule(JobInfo jobInfo);

    public abstract int enqueue(JobInfo jobInfo, JobWorkItem jobWorkItem);

    public abstract void cancel(int i10);

    public abstract void cancelAll();

    public abstract List<JobInfo> getAllPendingJobs();

    public abstract JobInfo getPendingJob(int i10);

    public JobScheduler() {
        throw new RuntimeException("Stub!");
    }
}
