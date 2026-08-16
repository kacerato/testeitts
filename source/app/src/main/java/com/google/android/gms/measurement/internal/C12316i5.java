package com.google.android.gms.measurement.internal;

import android.annotation.TargetApi;
import android.app.job.JobInfo;
import android.app.job.JobScheduler;
import android.content.ComponentName;
import android.content.Context;
import android.os.PersistableBundle;
import androidx.annotation.VisibleForTesting;
import androidx.annotation.WorkerThread;
import com.google.android.gms.internal.measurement.EnumC12223x3;

public final class C12316i5 extends AbstractC12305h2 {

    public JobScheduler f63354c;

    public C12316i5(C12370p3 c12370p3) {
        super(c12370p3);
    }

    @Override
    public final boolean m() {
        return true;
    }

    @Override
    @TargetApi(24)
    @WorkerThread
    public final void n() {
        this.f63354c = (JobScheduler) this.f62917a.d().getSystemService(Context.JOB_SCHEDULER_SERVICE);
    }

    @TargetApi(24)
    @WorkerThread
    public final void o(long j10) {
        j();
        h();
        JobScheduler jobScheduler = this.f63354c;
        if (jobScheduler != null && jobScheduler.getPendingJob(p()) != null) {
            this.f62917a.a().w().a("[sgtm] There's an existing pending job, skip this schedule.");
            return;
        }
        EnumC12223x3 q10 = q();
        if (q10 != EnumC12223x3.CLIENT_UPLOAD_ELIGIBLE) {
            this.f62917a.a().w().b("[sgtm] Not eligible for Scion upload", q10.name());
            return;
        }
        C12370p3 c12370p3 = this.f62917a;
        c12370p3.a().w().b("[sgtm] Scheduling Scion upload, millis", Long.valueOf(j10));
        PersistableBundle persistableBundle = new PersistableBundle();
        persistableBundle.putString("action", "com.google.android.gms.measurement.SCION_UPLOAD");
        c12370p3.a().w().b("[sgtm] Scion upload job scheduled with result", ((JobScheduler) G0.A.r(this.f63354c)).schedule(new JobInfo.Builder(p(), new ComponentName(c12370p3.d(), "com.google.android.gms.measurement.AppMeasurementJobService")).setRequiredNetworkType(1).setMinimumLatency(j10).setOverrideDeadline(j10 + j10).setExtras(persistableBundle).build()) == 1 ? "SUCCESS" : "FAILURE");
    }

    @VisibleForTesting
    public final int p() {
        return "measurement-client".concat(String.valueOf(this.f62917a.d().getPackageName())).hashCode();
    }

    @WorkerThread
    public final EnumC12223x3 q() {
        j();
        h();
        if (this.f63354c == null) {
            return EnumC12223x3.MISSING_JOB_SCHEDULER;
        }
        C12370p3 c12370p3 = this.f62917a;
        if (!c12370p3.w().P()) {
            return EnumC12223x3.NOT_ENABLED_IN_MANIFEST;
        }
        C12370p3 c12370p32 = this.f62917a;
        return c12370p32.L().u() >= 119000 ? !m7.F(c12370p3.d(), "com.google.android.gms.measurement.AppMeasurementJobService") ? EnumC12223x3.MEASUREMENT_SERVICE_NOT_ENABLED : !c12370p32.J().y() ? EnumC12223x3.NON_PLAY_MODE : EnumC12223x3.CLIENT_UPLOAD_ELIGIBLE : EnumC12223x3.SDK_TOO_OLD;
    }
}
