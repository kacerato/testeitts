package com.google.android.gms.internal.measurement;

import android.content.Context;
import android.database.ContentObserver;
import android.util.Log;
import androidx.annotation.GuardedBy;
import androidx.core.content.PermissionChecker;

public final class C12081h4 implements InterfaceC12054e4 {

    @GuardedBy("GservicesLoader.class")
    public static C12081h4 f62315d;

    public final Context f62316a;

    public final ContentObserver f62317b;

    @GuardedBy("GservicesLoader.class")
    public boolean f62318c;

    public C12081h4() {
        this.f62318c = false;
        this.f62316a = null;
        this.f62317b = null;
    }

    public static C12081h4 c(Context context) {
        C12081h4 c12081h4;
        synchronized (C12081h4.class) {
            try {
                if (f62315d == null) {
                    f62315d = PermissionChecker.checkSelfPermission(context, "com.google.android.providers.gsf.permission.READ_GSERVICES") == 0 ? new C12081h4(context) : new C12081h4();
                }
                C12081h4 c12081h42 = f62315d;
                if (c12081h42 != null && c12081h42.f62317b != null && !c12081h42.f62318c) {
                    try {
                        context.getContentResolver().registerContentObserver(R3.f62103a, true, f62315d.f62317b);
                        ((C12081h4) w2.H.E(f62315d)).f62318c = true;
                    } catch (SecurityException e10) {
                        Log.e("GservicesLoader", "Unable to register Gservices content observer", e10);
                    }
                }
                c12081h4 = (C12081h4) w2.H.E(f62315d);
            } catch (Throwable th2) {
                throw th2;
            }
        }
        return c12081h4;
    }

    public static synchronized void e() {
        Context context;
        synchronized (C12081h4.class) {
            try {
                C12081h4 c12081h4 = f62315d;
                if (c12081h4 != null && (context = c12081h4.f62316a) != null && c12081h4.f62317b != null && c12081h4.f62318c) {
                    context.getContentResolver().unregisterContentObserver(f62315d.f62317b);
                }
                f62315d = null;
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    @Override
    public final String a(final String str) {
        Context context = this.f62316a;
        if (context != null && !W3.b(context)) {
            try {
                return (String) InterfaceC12054e4.b(new InterfaceC12045d4() {
                    @Override
                    public final Object N1() {
                        return C12081h4.this.f(str);
                    }
                });
            } catch (IllegalStateException | NullPointerException | SecurityException e10) {
                Log.e("GservicesLoader", "Unable to read GServices for: ".concat(str), e10);
            }
        }
        return null;
    }

    public final String f(String str) {
        return Q3.a(((Context) w2.H.E(this.f62316a)).getContentResolver(), str, null);
    }

    public C12081h4(Context context) {
        this.f62318c = false;
        this.f62316a = context;
        this.f62317b = new C12063f4(this, null);
    }
}
