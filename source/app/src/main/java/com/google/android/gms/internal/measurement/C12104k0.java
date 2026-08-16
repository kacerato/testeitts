package com.google.android.gms.internal.measurement;

import android.content.Context;
import android.content.SharedPreferences;

public final class C12104k0 {

    public static final ThreadLocal f62339a = new C12095j0();

    public static SharedPreferences a(Context context, String str, int i10, AbstractC12059f0 abstractC12059f0) {
        Z.a();
        SharedPreferencesC12086i0 sharedPreferencesC12086i0 = str.equals("") ? new SharedPreferencesC12086i0() : null;
        if (sharedPreferencesC12086i0 != null) {
            return sharedPreferencesC12086i0;
        }
        ThreadLocal threadLocal = f62339a;
        w2.H.d(((Boolean) threadLocal.get()).booleanValue());
        threadLocal.set(Boolean.FALSE);
        try {
            SharedPreferences sharedPreferences = context.getSharedPreferences(str, 0);
            threadLocal.set(Boolean.TRUE);
            return sharedPreferences;
        } catch (Throwable th2) {
            f62339a.set(Boolean.TRUE);
            throw th2;
        }
    }
}
