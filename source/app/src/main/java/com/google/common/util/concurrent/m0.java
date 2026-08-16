package com.google.common.util.concurrent;

import com.google.common.util.concurrent.u0;
import java.util.Locale;
import java.util.concurrent.TimeUnit;
import javax.annotation.CheckForNull;
import v2.InterfaceC15800a;

@A
@v2.c
@InterfaceC15800a
public abstract class m0 {

    public final a f67485a;

    @CheckForNull
    public volatile Object f67486b;

    public static abstract class a {

        public class C1023a extends a {

            public final w2.O f67487a = w2.O.c();

            @Override
            public long b() {
                return this.f67487a.g(TimeUnit.MICROSECONDS);
            }

            @Override
            public void c(long j10) {
                if (j10 > 0) {
                    H0.k(j10, TimeUnit.MICROSECONDS);
                }
            }
        }

        public static a a() {
            return new C1023a();
        }

        public abstract long b();

        public abstract void c(long j10);
    }

    public m0(a aVar) {
        this.f67485a = (a) w2.H.E(aVar);
    }

    public static void d(int i10) {
        w2.H.k(i10 > 0, "Requested permits (%s) must be positive", i10);
    }

    public static m0 e(double d10) {
        return h(d10, a.a());
    }

    public static m0 f(double d10, long j10, TimeUnit timeUnit) {
        w2.H.p(j10 >= 0, "warmupPeriod must not be negative: %s", j10);
        return g(d10, j10, timeUnit, 3.0d, a.a());
    }

    @v2.d
    public static m0 g(double d10, long j10, TimeUnit timeUnit, double d11, a aVar) {
        u0.c cVar = new u0.c(aVar, j10, timeUnit, d11);
        cVar.q(d10);
        return cVar;
    }

    @v2.d
    public static m0 h(double d10, a aVar) {
        u0.b bVar = new u0.b(aVar, 1.0d);
        bVar.q(d10);
        return bVar;
    }

    @I2.a
    public double a() {
        return b(1);
    }

    @I2.a
    public double b(int i10) {
        long n10 = n(i10);
        this.f67485a.c(n10);
        return (n10 * 1.0d) / TimeUnit.SECONDS.toMicros(1L);
    }

    public final boolean c(long j10, long j11) {
        return m(j10) - j11 <= j10;
    }

    public abstract double i();

    public abstract void j(double d10, long j10);

    public final double k() {
        double i10;
        synchronized (l()) {
            i10 = i();
        }
        return i10;
    }

    public final Object l() {
        Object obj = this.f67486b;
        if (obj == null) {
            synchronized (this) {
                try {
                    obj = this.f67486b;
                    if (obj == null) {
                        obj = new Object();
                        this.f67486b = obj;
                    }
                } finally {
                }
            }
        }
        return obj;
    }

    public abstract long m(long j10);

    public final long n(int i10) {
        long o10;
        d(i10);
        synchronized (l()) {
            o10 = o(i10, this.f67485a.b());
        }
        return o10;
    }

    public final long o(int i10, long j10) {
        return Math.max(p(i10, j10) - j10, 0L);
    }

    public abstract long p(int i10, long j10);

    public final void q(double d10) {
        w2.H.e(d10 > 0.0d && !Double.isNaN(d10), "rate must be positive");
        synchronized (l()) {
            j(d10, this.f67485a.b());
        }
    }

    public boolean r() {
        return t(1, 0L, TimeUnit.MICROSECONDS);
    }

    public boolean s(int i10) {
        return t(i10, 0L, TimeUnit.MICROSECONDS);
    }

    public boolean t(int i10, long j10, TimeUnit timeUnit) {
        long max = Math.max(timeUnit.toMicros(j10), 0L);
        d(i10);
        synchronized (l()) {
            try {
                long b10 = this.f67485a.b();
                if (!c(b10, max)) {
                    return false;
                }
                this.f67485a.c(o(i10, b10));
                return true;
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public String toString() {
        return String.format(Locale.ROOT, "RateLimiter[stableRate=%3.1fqps]", Double.valueOf(k()));
    }

    public boolean u(long j10, TimeUnit timeUnit) {
        return t(1, j10, timeUnit);
    }
}
