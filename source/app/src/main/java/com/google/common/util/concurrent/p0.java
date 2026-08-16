package com.google.common.util.concurrent;

import java.util.concurrent.Executor;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;

@A
@v2.c
@I2.f("Create an AbstractIdleService")
public interface p0 {

    public static abstract class a {
        public void a(b bVar, Throwable th2) {
        }

        public void b() {
        }

        public void c() {
        }

        public void d(b bVar) {
        }

        public void e(b bVar) {
        }
    }

    public enum b {
        NEW,
        STARTING,
        RUNNING,
        STOPPING,
        TERMINATED,
        FAILED
    }

    void a(a aVar, Executor executor);

    void b(long j10, TimeUnit timeUnit) throws TimeoutException;

    void c(long j10, TimeUnit timeUnit) throws TimeoutException;

    void d();

    Throwable e();

    void f();

    @I2.a
    p0 g();

    @I2.a
    p0 h();

    boolean isRunning();

    b state();
}
