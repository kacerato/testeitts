package com.android.tools.r8.internal;

import com.android.tools.r8.threading.ThreadingModule;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Future;
import java.util.function.Consumer;

public final class C5582Mr0 implements ThreadingModule {

    public static final boolean f42422a = true;

    @Override
    public final void awaitFutures(List list) {
        if (f42422a) {
            return;
        }
        Iterator it = list.iterator();
        while (it.hasNext()) {
            if (!((Future) it.next()).isDone()) {
                throw new AssertionError();
            }
        }
    }

    @Override
    public final ExecutorService createSingleThreadedExecutorService() {
        return new ZX();
    }

    @Override
    public final ExecutorService createThreadedExecutorService(int i10) {
        return new ZX();
    }

    @Override
    public final void forEach(List list, Consumer consumer) {
        if (!f42422a) {
            Iterator it = list.iterator();
            while (it.hasNext()) {
                if (!((Future) it.next()).isDone()) {
                    throw new AssertionError();
                }
            }
        }
        Iterator it2 = list.iterator();
        while (it2.hasNext()) {
            try {
                consumer.accept(((Future) it2.next()).get());
            } catch (InterruptedException e10) {
                throw new RuntimeException("Interrupted while waiting for future.", e10);
            }
        }
    }

    @Override
    public final boolean isSingleThreaded() {
        return true;
    }

    @Override
    public final Future submit(Callable callable, ExecutorService executorService) {
        try {
            Object call = callable.call();
            return call == null ? SB.f44152c : new SB(call);
        } catch (Exception e10) {
            throw new ExecutionException(e10);
        }
    }
}
