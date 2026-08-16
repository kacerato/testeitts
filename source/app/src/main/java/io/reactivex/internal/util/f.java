package io.reactivex.internal.util;

import java.util.concurrent.CountDownLatch;

public final class f extends CountDownLatch implements Fe.g<Throwable>, Fe.a {

    public Throwable f92440b;

    public f() {
        super(1);
    }

    @Override
    public void accept(Throwable th2) {
        this.f92440b = th2;
        countDown();
    }

    @Override
    public void run() {
        countDown();
    }
}
