package com.google.common.util.concurrent;

import com.google.common.util.concurrent.F;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import javax.annotation.CheckForNull;

@A
@v2.c
public final class TimeoutFuture<V> extends F.a<V> {

    @CheckForNull
    public Z<V> f67343j;

    @CheckForNull
    public ScheduledFuture<?> f67344k;

    public static final class TimeoutFutureException extends TimeoutException {
        @Override
        public synchronized Throwable fillInStackTrace() {
            setStackTrace(new StackTraceElement[0]);
            return this;
        }

        private TimeoutFutureException(String str) {
            super(str);
        }
    }

    public static final class b<V> implements Runnable {

        @CheckForNull
        public TimeoutFuture<V> f67345b;

        public b(TimeoutFuture<V> timeoutFuture) {
            this.f67345b = timeoutFuture;
        }

        @Override
        public void run() {
            Z<? extends V> z10;
            TimeoutFuture<V> timeoutFuture = this.f67345b;
            if (timeoutFuture == null || (z10 = timeoutFuture.f67343j) == null) {
                return;
            }
            this.f67345b = null;
            if (z10.isDone()) {
                timeoutFuture.E(z10);
                return;
            }
            try {
                ScheduledFuture scheduledFuture = timeoutFuture.f67344k;
                timeoutFuture.f67344k = null;
                String str = "Timed out";
                if (scheduledFuture != null) {
                    try {
                        long abs = Math.abs(scheduledFuture.getDelay(TimeUnit.MILLISECONDS));
                        if (abs > 10) {
                            StringBuilder sb2 = new StringBuilder("Timed out".length() + 66);
                            sb2.append("Timed out");
                            sb2.append(" (timeout delayed by ");
                            sb2.append(abs);
                            sb2.append(" ms after scheduled time)");
                            str = sb2.toString();
                        }
                    } catch (Throwable th2) {
                        timeoutFuture.D(new TimeoutFutureException(str));
                        throw th2;
                    }
                }
                String valueOf = String.valueOf(str);
                String valueOf2 = String.valueOf(z10);
                StringBuilder sb3 = new StringBuilder(valueOf.length() + 2 + valueOf2.length());
                sb3.append(valueOf);
                sb3.append(": ");
                sb3.append(valueOf2);
                timeoutFuture.D(new TimeoutFutureException(sb3.toString()));
            } finally {
                z10.cancel(true);
            }
        }
    }

    public TimeoutFuture(Z<V> z10) {
        this.f67343j = (Z) w2.H.E(z10);
    }

    public static <V> Z<V> S(Z<V> z10, long j10, TimeUnit timeUnit, ScheduledExecutorService scheduledExecutorService) {
        TimeoutFuture timeoutFuture = new TimeoutFuture(z10);
        b bVar = new b(timeoutFuture);
        timeoutFuture.f67344k = scheduledExecutorService.schedule(bVar, j10, timeUnit);
        z10.addListener(bVar, C12612g0.c());
        return timeoutFuture;
    }

    @Override
    public void n() {
        y(this.f67343j);
        ScheduledFuture<?> scheduledFuture = this.f67344k;
        if (scheduledFuture != null) {
            scheduledFuture.cancel(false);
        }
        this.f67343j = null;
        this.f67344k = null;
    }

    @Override
    @CheckForNull
    public String z() {
        Z<V> z10 = this.f67343j;
        ScheduledFuture<?> scheduledFuture = this.f67344k;
        if (z10 == null) {
            return null;
        }
        String valueOf = String.valueOf(z10);
        StringBuilder sb2 = new StringBuilder(valueOf.length() + 14);
        sb2.append("inputFuture=[");
        sb2.append(valueOf);
        sb2.append("]");
        String sb3 = sb2.toString();
        if (scheduledFuture == null) {
            return sb3;
        }
        long delay = scheduledFuture.getDelay(TimeUnit.MILLISECONDS);
        if (delay <= 0) {
            return sb3;
        }
        String valueOf2 = String.valueOf(sb3);
        StringBuilder sb4 = new StringBuilder(valueOf2.length() + 43);
        sb4.append(valueOf2);
        sb4.append(", remaining delay=[");
        sb4.append(delay);
        sb4.append(" ms]");
        return sb4.toString();
    }
}
