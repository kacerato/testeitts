package com.google.android.gms.measurement.internal;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.net.ConnectivityManager;
import androidx.annotation.MainThread;
import androidx.annotation.WorkerThread;

public final class J2 extends BroadcastReceiver {

    public final c7 f62741a;

    public boolean f62742b;

    public boolean f62743c;

    public J2(c7 c7Var) {
        G0.A.r(c7Var);
        this.f62741a = c7Var;
    }

    @WorkerThread
    public final void a() {
        c7 c7Var = this.f62741a;
        c7Var.O0();
        c7Var.b().h();
        if (this.f62742b) {
            return;
        }
        c7Var.d().registerReceiver(this, new IntentFilter(ConnectivityManager.CONNECTIVITY_ACTION));
        this.f62743c = c7Var.E0().m();
        c7Var.a().w().b("Registering connectivity change receiver. Network connected", Boolean.valueOf(this.f62743c));
        this.f62742b = true;
    }

    @WorkerThread
    public final void b() {
        c7 c7Var = this.f62741a;
        c7Var.O0();
        c7Var.b().h();
        c7Var.b().h();
        if (this.f62742b) {
            c7Var.a().w().a("Unregistering connectivity change receiver");
            this.f62742b = false;
            this.f62743c = false;
            try {
                c7Var.d().unregisterReceiver(this);
            } catch (IllegalArgumentException e10) {
                this.f62741a.a().o().b("Failed to unregister the network broadcast receiver", e10);
            }
        }
    }

    public final c7 c() {
        return this.f62741a;
    }

    @Override
    @MainThread
    public final void onReceive(Context context, Intent intent) {
        c7 c7Var = this.f62741a;
        c7Var.O0();
        String action = intent.getAction();
        c7Var.a().w().b("NetworkBroadcastReceiver received action", action);
        if (!ConnectivityManager.CONNECTIVITY_ACTION.equals(action)) {
            c7Var.a().r().b("NetworkBroadcastReceiver received unknown action", action);
            return;
        }
        boolean m10 = c7Var.E0().m();
        if (this.f62743c != m10) {
            this.f62743c = m10;
            c7Var.b().t(new H2(this, m10));
        }
    }
}
