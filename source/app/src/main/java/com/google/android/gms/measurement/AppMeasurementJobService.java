package com.google.android.gms.measurement;

import android.annotation.TargetApi;
import android.app.job.JobParameters;
import android.app.job.JobService;
import android.content.Intent;
import androidx.annotation.MainThread;
import androidx.annotation.NonNull;
import com.google.android.gms.measurement.internal.C12357n6;
import com.google.android.gms.measurement.internal.InterfaceC12325j6;

@TargetApi(24)
public final class AppMeasurementJobService extends JobService implements InterfaceC12325j6 {

    public C12357n6 f62518b;

    @Override
    public final boolean a(int i10) {
        throw new UnsupportedOperationException();
    }

    @Override
    public final void b(@NonNull Intent intent) {
    }

    @Override
    @TargetApi(24)
    public final void c(@NonNull JobParameters jobParameters, boolean z10) {
        jobFinished(jobParameters, false);
    }

    public final C12357n6 d() {
        if (this.f62518b == null) {
            this.f62518b = new C12357n6(this);
        }
        return this.f62518b;
    }

    @Override
    @MainThread
    public void onCreate() {
        super.onCreate();
        d().a();
    }

    @Override
    @MainThread
    public void onDestroy() {
        d().b();
        super.onDestroy();
    }

    @Override
    @MainThread
    public void onRebind(@NonNull Intent intent) {
        d();
        C12357n6.i(intent);
    }

    @Override
    public boolean onStartJob(@NonNull JobParameters jobParameters) {
        d().e(jobParameters);
        return true;
    }

    @Override
    public boolean onStopJob(@NonNull JobParameters jobParameters) {
        return false;
    }

    @Override
    @MainThread
    public boolean onUnbind(@NonNull Intent intent) {
        d();
        C12357n6.j(intent);
        return true;
    }
}
