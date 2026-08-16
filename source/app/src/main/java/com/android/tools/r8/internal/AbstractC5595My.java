package com.android.tools.r8.internal;

import java.util.concurrent.Future;

public abstract class AbstractC5595My {
    public static Object a(Future future) {
        Object obj;
        if (!future.isDone()) {
            throw new IllegalStateException(AbstractC4885Aq0.a("Future was expected to be done: %s", future));
        }
        boolean z10 = false;
        while (true) {
            try {
                obj = future.get();
                break;
            } catch (InterruptedException unused) {
                z10 = true;
            } catch (Throwable th2) {
                if (z10) {
                    Thread.currentThread().interrupt();
                }
                throw th2;
            }
        }
        if (z10) {
            Thread.currentThread().interrupt();
        }
        return obj;
    }
}
