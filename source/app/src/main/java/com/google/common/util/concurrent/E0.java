package com.google.common.util.concurrent;

import java.util.concurrent.Callable;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import v2.InterfaceC15800a;

@A
@v2.c
@I2.f("Use FakeTimeLimiter")
@InterfaceC15800a
public interface E0 {
    void a(Runnable runnable, long j10, TimeUnit timeUnit) throws TimeoutException;

    @I2.a
    <T> T b(Callable<T> callable, long j10, TimeUnit timeUnit) throws TimeoutException, ExecutionException;

    @I2.a
    <T> T c(Callable<T> callable, long j10, TimeUnit timeUnit) throws TimeoutException, InterruptedException, ExecutionException;

    void d(Runnable runnable, long j10, TimeUnit timeUnit) throws TimeoutException, InterruptedException;

    <T> T e(T t10, Class<T> cls, long j10, TimeUnit timeUnit);
}
