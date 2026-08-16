package com.google.android.gms.measurement;

import android.app.Service;
import android.app.job.JobParameters;
import android.content.Intent;
import android.os.IBinder;
import androidx.annotation.MainThread;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.legacy.content.WakefulBroadcastReceiver;
import com.google.android.gms.measurement.internal.C12357n6;
import com.google.android.gms.measurement.internal.InterfaceC12325j6;

public final class AppMeasurementService extends Service implements InterfaceC12325j6 {

    public C12357n6 f62520b;

    private final C12357n6 d() {
        if (this.f62520b == null) {
            this.f62520b = new C12357n6(this);
        }
        return this.f62520b;
    }

    @Override
    public final boolean a(int i10) {
        return stopSelfResult(i10);
    }

    @Override
    public final void b(@NonNull Intent intent) {
        WakefulBroadcastReceiver.completeWakefulIntent(intent);
    }

    @Override
    public final void c(@NonNull JobParameters jobParameters, boolean z10) {
        throw new UnsupportedOperationException();
    }

    @Override
    @Nullable
    @MainThread
    public IBinder onBind(@NonNull Intent intent) {
        return d().d(intent);
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
    @MainThread
    public int onStartCommand(@NonNull Intent intent, int i10, int i11) {
        d().c(intent, i10, i11);
        return 2;
    }

    @Override
    @MainThread
    public boolean onUnbind(@NonNull Intent intent) {
        d();
        C12357n6.j(intent);
        return true;
    }
}
