package com.google.android.gms.measurement;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import androidx.annotation.MainThread;
import androidx.annotation.NonNull;
import androidx.legacy.content.WakefulBroadcastReceiver;
import com.google.android.gms.measurement.internal.T2;
import com.google.android.gms.measurement.internal.U2;

public final class AppMeasurementReceiver extends WakefulBroadcastReceiver implements T2 {

    public U2 f62519a;

    @Override
    @MainThread
    public void a(@NonNull Context context, @NonNull Intent intent) {
        WakefulBroadcastReceiver.startWakefulService(context, intent);
    }

    @NonNull
    public BroadcastReceiver.PendingResult b() {
        return goAsync();
    }

    @Override
    @MainThread
    public void onReceive(@NonNull Context context, @NonNull Intent intent) {
        if (this.f62519a == null) {
            this.f62519a = new U2(this);
        }
        this.f62519a.a(context, intent);
    }
}
