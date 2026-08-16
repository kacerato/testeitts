package com.android.tools.r8.internal;

import java.util.concurrent.locks.AbstractOwnableSynchronizer;

public final class RunnableC10573zJ extends AbstractOwnableSynchronizer implements Runnable {

    public final C8662nt0 f54352b;

    public RunnableC10573zJ(C8662nt0 c8662nt0) {
        this.f54352b = c8662nt0;
    }

    public static void a(RunnableC10573zJ runnableC10573zJ, Thread thread) {
        runnableC10573zJ.setExclusiveOwnerThread(thread);
    }

    @Override
    public final void run() {
    }

    public final String toString() {
        return this.f54352b.toString();
    }
}
