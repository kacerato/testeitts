package com.android.tools.r8.internal;

import java.lang.reflect.Method;

public abstract class LK extends AbstractC8869p60 {
    public final void a(Throwable th2, Throwable th3) {
        GJ.c(th2, "cause");
        Integer num = KK.f41638a;
        if (num == null || num.intValue() >= 19) {
            th2.addSuppressed(th3);
            return;
        }
        Method method = AbstractC8702o60.f51169a;
        if (method != null) {
            method.invoke(th2, th3);
        }
    }
}
