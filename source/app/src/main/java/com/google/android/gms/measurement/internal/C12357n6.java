package com.google.android.gms.measurement.internal;

import android.annotation.TargetApi;
import android.app.job.JobParameters;
import android.content.Context;
import android.content.Intent;
import android.os.IBinder;
import android.util.Log;
import androidx.annotation.MainThread;
import java.util.Objects;

public final class C12357n6 {

    public final Context f63423a;

    public C12357n6(Context context) {
        G0.A.r(context);
        this.f63423a = context;
    }

    @MainThread
    public static final void i(Intent intent) {
        if (intent == null) {
            Log.e("FA", "onRebind called with null intent");
        } else {
            Log.v("FA", "onRebind called. action: ".concat(String.valueOf(intent.getAction())));
        }
    }

    @MainThread
    public static final boolean j(Intent intent) {
        if (intent == null) {
            Log.e("FA", "onUnbind called with null intent");
            return true;
        }
        Log.v("FA", "onUnbind called for intent. action: ".concat(String.valueOf(intent.getAction())));
        return true;
    }

    @MainThread
    public final void a() {
        Log.v("FA", this.f63423a.getClass().getSimpleName().concat(" is starting up."));
    }

    @MainThread
    public final void b() {
        Log.v("FA", this.f63423a.getClass().getSimpleName().concat(" is shutting down."));
    }

    @MainThread
    public final int c(final Intent intent, int i10, final int i11) {
        if (intent == null) {
            Log.w("FA", "AppMeasurementService started with null intent");
            return 2;
        }
        Context context = this.f63423a;
        C12370p3 O10 = C12370p3.O(context, null, null);
        final B2 a10 = O10.a();
        String action = intent.getAction();
        O10.c();
        a10.w().c("Local AppMeasurementService called. startId, action", Integer.valueOf(i11), action);
        if ("com.google.android.gms.measurement.UPLOAD".equals(action)) {
            k(c7.F(context), new Runnable() {
                @Override
                public final void run() {
                    C12357n6.this.f(i11, a10, intent);
                }
            });
        }
        return 2;
    }

    @MainThread
    public final IBinder d(Intent intent) {
        if (intent == null) {
            Log.e("FA", "onBind called with null intent");
            return null;
        }
        String action = intent.getAction();
        if ("com.google.android.gms.measurement.START".equals(action)) {
            return new R3(c7.F(this.f63423a), null);
        }
        Log.w("FA", "onBind received unknown action: ".concat(String.valueOf(action)));
        return null;
    }

    @TargetApi(24)
    @MainThread
    public final boolean e(final JobParameters jobParameters) {
        String string = jobParameters.getExtras().getString("action");
        Log.v("FA", "onStartJob received action: ".concat(String.valueOf(string)));
        if (Objects.equals(string, "com.google.android.gms.measurement.UPLOAD")) {
            String str = (String) G0.A.r(string);
            c7 F10 = c7.F(this.f63423a);
            final B2 a10 = F10.a();
            F10.c();
            a10.w().b("Local AppMeasurementJobService called. action", str);
            k(F10, new Runnable() {
                @Override
                public final void run() {
                    C12357n6.this.g(a10, jobParameters);
                }
            });
        }
        if (!Objects.equals(string, "com.google.android.gms.measurement.SCION_UPLOAD")) {
            return true;
        }
        com.google.android.gms.internal.measurement.I1.v(this.f63423a, null).R(new Runnable() {
            @Override
            public final void run() {
                C12357n6.this.h(jobParameters);
            }
        });
        return true;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final void f(int i10, B2 b22, Intent intent) {
        Context context = this.f63423a;
        InterfaceC12325j6 interfaceC12325j6 = (InterfaceC12325j6) context;
        if (interfaceC12325j6.a(i10)) {
            b22.w().b("Local AppMeasurementService processed last upload request. StartId", Integer.valueOf(i10));
            C12370p3.O(context, null, null).a().w().a("Completed wakeful intent.");
            interfaceC12325j6.b(intent);
        }
    }

    public final void g(B2 b22, JobParameters jobParameters) {
        b22.w().a("AppMeasurementJobService processed last upload request.");
        ((InterfaceC12325j6) this.f63423a).c(jobParameters, false);
    }

    public final void h(JobParameters jobParameters) {
        Log.v("FA", "[sgtm] AppMeasurementJobService processed last Scion upload request.");
        ((InterfaceC12325j6) this.f63423a).c(jobParameters, false);
    }

    public final void k(c7 c7Var, Runnable runnable) {
        c7Var.b().t(new RunnableC12317i6(this, c7Var, runnable));
    }
}
