package com.google.android.gms.measurement.internal;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import androidx.annotation.MainThread;
import com.google.android.gms.internal.measurement.C12227x7;
import java.util.Objects;

public final class t7 extends BroadcastReceiver {

    public final C12370p3 f63603a;

    public t7(C12370p3 c12370p3) {
        this.f63603a = c12370p3;
    }

    public final void a() {
        this.f63603a.N().o(((Long) C12281e2.f63142D.b(null)).longValue());
    }

    @Override
    @MainThread
    public final void onReceive(Context context, Intent intent) {
        char c10;
        if (intent == null) {
            this.f63603a.a().r().a("App receiver called with null intent");
            return;
        }
        String action = intent.getAction();
        if (action == null) {
            this.f63603a.a().r().a("App receiver called with null action");
            return;
        }
        int hashCode = action.hashCode();
        if (hashCode != -1928239649) {
            if (hashCode == 1279883384 && action.equals("com.google.android.gms.measurement.BATCHES_AVAILABLE")) {
                c10 = 1;
            }
            c10 = '\uffff';
        } else {
            if (action.equals("com.google.android.gms.measurement.TRIGGERS_AVAILABLE")) {
                c10 = 0;
            }
            c10 = '\uffff';
        }
        if (c10 != 0) {
            if (c10 != 1) {
                this.f63603a.a().r().a("App receiver called with unknown action");
                return;
            }
            C12370p3 c12370p3 = this.f63603a;
            c12370p3.a().w().a("[sgtm] App Receiver notified batches are available");
            c12370p3.b().t(new Runnable() {
                @Override
                public final void run() {
                    t7.this.a();
                }
            });
            return;
        }
        final C12370p3 c12370p32 = this.f63603a;
        C12227x7.a();
        if (c12370p32.w().H(null, C12281e2.f63171R0)) {
            c12370p32.a().w().a("App receiver notified triggers are available");
            c12370p32.b().t(new Runnable() {
                @Override
                public final void run() {
                    C12370p3 c12370p33 = C12370p3.this;
                    if (!c12370p33.C().G()) {
                        c12370p33.a().r().a("registerTrigger called but app not eligible");
                        return;
                    }
                    c12370p33.B().t0();
                    final C12260b5 B10 = c12370p33.B();
                    Objects.requireNonNull(B10);
                    new Thread(new Runnable() {
                        @Override
                        public final void run() {
                            C12260b5.this.u0();
                        }
                    }).start();
                }
            });
        }
    }
}
