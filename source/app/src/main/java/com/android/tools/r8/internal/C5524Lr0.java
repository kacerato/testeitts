package com.android.tools.r8.internal;

import com.android.tools.r8.threading.ThreadingModule;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.Future;
import java.util.function.Consumer;

public final class C5524Lr0 implements ThreadingModule {
    public static void a(Object obj) {
    }

    @Override
    public final void awaitFutures(List list) {
        forEach(list, new Consumer() {
            @Override
            public final void accept(Object obj) {
                C5524Lr0.a(obj);
            }
        });
    }

    @Override
    public final ExecutorService createSingleThreadedExecutorService() {
        return Executors.newSingleThreadExecutor();
    }

    @Override
    public final ExecutorService createThreadedExecutorService(int i10) {
        return Executors.newWorkStealingPool(i10);
    }

    @Override
    public final void forEach(List list, Consumer consumer) {
        Iterator it = list.iterator();
        while (it.hasNext()) {
            try {
                try {
                    consumer.accept(((Future) it.next()).get());
                } finally {
                    while (it.hasNext()) {
                        try {
                            ((Future) it.next()).get();
                        } catch (Throwable unused) {
                        }
                    }
                }
            } catch (InterruptedException e10) {
                throw new RuntimeException("Interrupted while waiting for future.", e10);
            }
        }
    }

    @Override
    public final boolean isSingleThreaded() {
        return false;
    }

    @Override
    public final Future submit(Callable callable, ExecutorService executorService) {
        return executorService.submit(callable);
    }
}
