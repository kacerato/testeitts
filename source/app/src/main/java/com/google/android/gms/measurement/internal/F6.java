package com.google.android.gms.measurement.internal;

import android.annotation.TargetApi;
import android.app.AlarmManager;
import android.app.PendingIntent;
import android.app.job.JobInfo;
import android.app.job.JobScheduler;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.os.PersistableBundle;
import com.google.android.gms.internal.measurement.C12113l0;
import com.google.android.gms.internal.measurement.C12122m0;

public final class F6 extends N6 {

    public final AlarmManager f62645d;

    public AbstractC12445z f62646e;

    public Integer f62647f;

    public F6(c7 c7Var) {
        super(c7Var);
        this.f62645d = (AlarmManager) this.f62917a.d().getSystemService("alarm");
    }

    @TargetApi(24)
    private final void p() {
        JobScheduler jobScheduler = (JobScheduler) this.f62917a.d().getSystemService(Context.JOB_SCHEDULER_SERVICE);
        if (jobScheduler != null) {
            jobScheduler.cancel(q());
        }
    }

    private final int q() {
        if (this.f62647f == null) {
            this.f62647f = Integer.valueOf("measurement".concat(String.valueOf(this.f62917a.d().getPackageName())).hashCode());
        }
        return this.f62647f.intValue();
    }

    @Override
    public final boolean l() {
        AlarmManager alarmManager = this.f62645d;
        if (alarmManager != null) {
            alarmManager.cancel(r());
        }
        p();
        return false;
    }

    public final void m(long j10) {
        j();
        C12370p3 c12370p3 = this.f62917a;
        c12370p3.c();
        Context d10 = c12370p3.d();
        if (!m7.j0(d10)) {
            c12370p3.a().v().a("Receiver not registered/enabled");
        }
        if (!m7.E(d10, false)) {
            c12370p3.a().v().a("Service not registered/enabled");
        }
        n();
        c12370p3.a().w().b("Scheduling upload, millis", Long.valueOf(j10));
        c12370p3.e().c();
        c12370p3.w();
        if (j10 < Math.max(0L, ((Long) C12281e2.f63160M.b(null)).longValue()) && !o().c()) {
            o().b(j10);
        }
        c12370p3.c();
        Context d11 = c12370p3.d();
        ComponentName componentName = new ComponentName(d11, "com.google.android.gms.measurement.AppMeasurementJobService");
        int q10 = q();
        PersistableBundle persistableBundle = new PersistableBundle();
        persistableBundle.putString("action", "com.google.android.gms.measurement.UPLOAD");
        C12122m0.a(d11, new JobInfo.Builder(q10, componentName).setMinimumLatency(j10).setOverrideDeadline(j10 + j10).setExtras(persistableBundle).build(), "com.google.android.gms", "UploadAlarm");
    }

    public final void n() {
        j();
        this.f62917a.a().w().a("Unscheduling upload");
        AlarmManager alarmManager = this.f62645d;
        if (alarmManager != null) {
            alarmManager.cancel(r());
        }
        o().d();
        p();
    }

    public final AbstractC12445z o() {
        if (this.f62646e == null) {
            this.f62646e = new E6(this, this.f62657b.f0());
        }
        return this.f62646e;
    }

    public final PendingIntent r() {
        Context d10 = this.f62917a.d();
        return PendingIntent.getBroadcast(d10, 0, new Intent().setClassName(d10, "com.google.android.gms.measurement.AppMeasurementReceiver").setAction("com.google.android.gms.measurement.UPLOAD"), C12113l0.f62349a);
    }
}
