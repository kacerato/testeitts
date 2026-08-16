package com.google.android.gms.internal.measurement;

import androidx.annotation.GuardedBy;
import androidx.annotation.Nullable;

public final class T3 {

    @Nullable
    @GuardedBy("GservicesDelegateSupplier.class")
    public static S3 f62121a;

    public static synchronized void a(S3 s32) {
        synchronized (T3.class) {
            if (f62121a != null) {
                throw new IllegalStateException("init() already called");
            }
            f62121a = s32;
        }
    }

    public static synchronized S3 b() {
        S3 s32;
        synchronized (T3.class) {
            try {
                if (f62121a == null) {
                    a(new V3());
                }
                s32 = f62121a;
            } catch (Throwable th2) {
                throw th2;
            }
        }
        return s32;
    }
}
