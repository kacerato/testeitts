package com.google.android.gms.internal.measurement;

import java.util.Objects;
import java.util.concurrent.Executors;
import java.util.concurrent.ThreadFactory;

public final class ThreadFactoryC12096j1 implements ThreadFactory {

    public final ThreadFactory f62331b;

    public ThreadFactoryC12096j1(I1 i12) {
        Objects.requireNonNull(i12);
        this.f62331b = Executors.defaultThreadFactory();
    }

    @Override
    public final Thread newThread(Runnable runnable) {
        Thread newThread = this.f62331b.newThread(runnable);
        newThread.setName("ScionFrontendApi");
        return newThread;
    }
}
