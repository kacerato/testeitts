package com.google.common.util.concurrent;

import java.util.concurrent.Callable;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.TimeUnit;
import v2.InterfaceC15800a;

@I2.a
@A
@v2.c
@InterfaceC15800a
public final class E implements E0 {
    @Override
    public void a(Runnable runnable, long j10, TimeUnit timeUnit) {
        d(runnable, j10, timeUnit);
    }

    @Override
    @InterfaceC12618j0
    public <T> T b(Callable<T> callable, long j10, TimeUnit timeUnit) throws ExecutionException {
        return (T) c(callable, j10, timeUnit);
    }

    @Override
    @InterfaceC12618j0
    public <T> T c(Callable<T> callable, long j10, TimeUnit timeUnit) throws ExecutionException {
        w2.H.E(callable);
        w2.H.E(timeUnit);
        try {
            return callable.call();
        } catch (Error e10) {
            throw new ExecutionError(e10);
        } catch (RuntimeException e11) {
            throw new UncheckedExecutionException(e11);
        } catch (Exception e12) {
            throw new ExecutionException(e12);
        } catch (Throwable th2) {
            throw new ExecutionException(th2);
        }
    }

    @Override
    public void d(Runnable runnable, long j10, TimeUnit timeUnit) {
        w2.H.E(runnable);
        w2.H.E(timeUnit);
        try {
            runnable.run();
        } catch (Error e10) {
            throw new ExecutionError(e10);
        } catch (RuntimeException e11) {
            throw new UncheckedExecutionException(e11);
        } catch (Throwable th2) {
            throw new UncheckedExecutionException(th2);
        }
    }

    @Override
    public <T> T e(T t10, Class<T> cls, long j10, TimeUnit timeUnit) {
        w2.H.E(t10);
        w2.H.E(cls);
        w2.H.E(timeUnit);
        return t10;
    }
}
