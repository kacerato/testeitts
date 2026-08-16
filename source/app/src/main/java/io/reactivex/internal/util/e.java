package io.reactivex.internal.util;

import java.util.concurrent.CountDownLatch;

public final class e {
    public e() {
        throw new IllegalStateException("No instances!");
    }

    public static void a(CountDownLatch countDownLatch, De.c cVar) {
        if (countDownLatch.getCount() == 0) {
            return;
        }
        try {
            b();
            countDownLatch.await();
        } catch (InterruptedException e10) {
            cVar.dispose();
            Thread.currentThread().interrupt();
            throw new IllegalStateException("Interrupted while waiting for subscription to complete.", e10);
        }
    }

    public static void b() {
        if (Ye.a.L()) {
            if ((Thread.currentThread() instanceof Se.j) || Ye.a.W()) {
                throw new IllegalStateException("Attempt to block on a Scheduler " + Thread.currentThread().getName() + " that doesn't support blocking operators as they may lead to deadlock");
            }
        }
    }
}
