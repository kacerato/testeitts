package com.google.common.util.concurrent;

import java.lang.Thread;
import java.util.Locale;
import java.util.Objects;
import java.util.concurrent.Executors;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.atomic.AtomicLong;
import javax.annotation.CheckForNull;

@I2.a
@A
@v2.c
public final class D0 {

    @CheckForNull
    public String f67279a = null;

    @CheckForNull
    public Boolean f67280b = null;

    @CheckForNull
    public Integer f67281c = null;

    @CheckForNull
    public Thread.UncaughtExceptionHandler f67282d = null;

    @CheckForNull
    public ThreadFactory f67283e = null;

    public class a implements ThreadFactory {

        public final ThreadFactory f67284b;

        public final String f67285c;

        public final AtomicLong f67286d;

        public final Boolean f67287e;

        public final Integer f67288f;

        public final Thread.UncaughtExceptionHandler f67289g;

        public a(ThreadFactory threadFactory, String str, AtomicLong atomicLong, Boolean bool, Integer num, Thread.UncaughtExceptionHandler uncaughtExceptionHandler) {
            this.f67284b = threadFactory;
            this.f67285c = str;
            this.f67286d = atomicLong;
            this.f67287e = bool;
            this.f67288f = num;
            this.f67289g = uncaughtExceptionHandler;
        }

        @Override
        public Thread newThread(Runnable runnable) {
            Thread newThread = this.f67284b.newThread(runnable);
            String str = this.f67285c;
            if (str != null) {
                AtomicLong atomicLong = this.f67286d;
                Objects.requireNonNull(atomicLong);
                newThread.setName(D0.d(str, Long.valueOf(atomicLong.getAndIncrement())));
            }
            Boolean bool = this.f67287e;
            if (bool != null) {
                newThread.setDaemon(bool.booleanValue());
            }
            Integer num = this.f67288f;
            if (num != null) {
                newThread.setPriority(num.intValue());
            }
            Thread.UncaughtExceptionHandler uncaughtExceptionHandler = this.f67289g;
            if (uncaughtExceptionHandler != null) {
                newThread.setUncaughtExceptionHandler(uncaughtExceptionHandler);
            }
            return newThread;
        }
    }

    public static ThreadFactory c(D0 d02) {
        String str = d02.f67279a;
        Boolean bool = d02.f67280b;
        Integer num = d02.f67281c;
        Thread.UncaughtExceptionHandler uncaughtExceptionHandler = d02.f67282d;
        ThreadFactory threadFactory = d02.f67283e;
        if (threadFactory == null) {
            threadFactory = Executors.defaultThreadFactory();
        }
        return new a(threadFactory, str, str != null ? new AtomicLong(0L) : null, bool, num, uncaughtExceptionHandler);
    }

    public static String d(String str, Object... objArr) {
        return String.format(Locale.ROOT, str, objArr);
    }

    @I2.b
    public ThreadFactory b() {
        return c(this);
    }

    public D0 e(boolean z10) {
        this.f67280b = Boolean.valueOf(z10);
        return this;
    }

    public D0 f(String str) {
        d(str, 0);
        this.f67279a = str;
        return this;
    }

    public D0 g(int i10) {
        w2.H.m(i10 >= 1, "Thread priority (%s) must be >= %s", i10, 1);
        w2.H.m(i10 <= 10, "Thread priority (%s) must be <= %s", i10, 10);
        this.f67281c = Integer.valueOf(i10);
        return this;
    }

    public D0 h(ThreadFactory threadFactory) {
        this.f67283e = (ThreadFactory) w2.H.E(threadFactory);
        return this;
    }

    public D0 i(Thread.UncaughtExceptionHandler uncaughtExceptionHandler) {
        this.f67282d = (Thread.UncaughtExceptionHandler) w2.H.E(uncaughtExceptionHandler);
        return this;
    }
}
