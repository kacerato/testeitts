package com.google.android.gms.internal.auth;

import android.content.Context;
import android.database.ContentObserver;
import android.util.Log;
import androidx.annotation.GuardedBy;
import androidx.core.content.PermissionChecker;
import javax.annotation.Nullable;

public final class C11982s0 implements InterfaceC11971p0 {

    @GuardedBy("GservicesLoader.class")
    public static C11982s0 f61838c;

    @Nullable
    public final Context f61839a;

    @Nullable
    public final ContentObserver f61840b;

    public C11982s0() {
        this.f61839a = null;
        this.f61840b = null;
    }

    public static C11982s0 b(Context context) {
        C11982s0 c11982s0;
        synchronized (C11982s0.class) {
            try {
                if (f61838c == null) {
                    f61838c = PermissionChecker.checkSelfPermission(context, "com.google.android.providers.gsf.permission.READ_GSERVICES") == 0 ? new C11982s0(context) : new C11982s0();
                }
                c11982s0 = f61838c;
            } catch (Throwable th2) {
                throw th2;
            }
        }
        return c11982s0;
    }

    public static synchronized void e() {
        Context context;
        synchronized (C11982s0.class) {
            try {
                C11982s0 c11982s0 = f61838c;
                if (c11982s0 != null && (context = c11982s0.f61839a) != null && c11982s0.f61840b != null) {
                    context.getContentResolver().unregisterContentObserver(f61838c.f61840b);
                }
                f61838c = null;
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    @Override
    @Nullable
    public final String a(final String str) {
        Context context = this.f61839a;
        if (context != null && !C11935g0.a(context)) {
            try {
                return (String) C11963n0.a(new InterfaceC11967o0() {
                    @Override
                    public final Object N1() {
                        return C11982s0.this.d(str);
                    }
                });
            } catch (IllegalStateException | NullPointerException | SecurityException e10) {
                Log.e("GservicesLoader", "Unable to read GServices for: ".concat(String.valueOf(str)), e10);
            }
        }
        return null;
    }

    public final String d(String str) {
        return C11931f0.a(this.f61839a.getContentResolver(), str, null);
    }

    public C11982s0(Context context) {
        this.f61839a = context;
        C11978r0 c11978r0 = new C11978r0(this, null);
        this.f61840b = c11978r0;
        context.getContentResolver().registerContentObserver(C11931f0.f61721a, true, c11978r0);
    }
}
