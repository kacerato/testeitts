package com.google.common.util.concurrent;

import java.util.concurrent.Callable;
import java.util.concurrent.Future;

@I2.a
@A
@v2.c
public abstract class N extends J implements InterfaceExecutorServiceC12606d0 {
    @Override
    public abstract InterfaceExecutorServiceC12606d0 k0();

    @Override
    public Future submit(Runnable runnable, @InterfaceC12618j0 Object obj) {
        return submit(runnable, (Runnable) obj);
    }

    @Override
    public <T> Z<T> submit(Callable<T> callable) {
        return k0().submit((Callable) callable);
    }

    @Override
    public Z<?> submit(Runnable runnable) {
        return k0().submit(runnable);
    }

    @Override
    public <T> Z<T> submit(Runnable runnable, @InterfaceC12618j0 T t10) {
        return k0().submit(runnable, (Runnable) t10);
    }
}
