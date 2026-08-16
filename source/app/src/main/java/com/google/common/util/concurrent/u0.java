package com.google.common.util.concurrent;

import com.google.common.util.concurrent.m0;
import java.util.concurrent.TimeUnit;

@A
@v2.c
public abstract class u0 extends m0 {

    public double f67520c;

    public double f67521d;

    public double f67522e;

    public long f67523f;

    public static final class b extends u0 {

        public final double f67524g;

        public b(m0.a aVar, double d10) {
            super(aVar);
            this.f67524g = d10;
        }

        @Override
        public double v() {
            return this.f67522e;
        }

        @Override
        public void w(double d10, double d11) {
            double d12 = this.f67521d;
            double d13 = this.f67524g * d10;
            this.f67521d = d13;
            if (d12 == Double.POSITIVE_INFINITY) {
                this.f67520c = d13;
            } else {
                this.f67520c = d12 != 0.0d ? (this.f67520c * d13) / d12 : 0.0d;
            }
        }

        @Override
        public long y(double d10, double d11) {
            return 0L;
        }
    }

    public static final class c extends u0 {

        public final long f67525g;

        public double f67526h;

        public double f67527i;

        public double f67528j;

        public c(m0.a aVar, long j10, TimeUnit timeUnit, double d10) {
            super(aVar);
            this.f67525g = timeUnit.toMicros(j10);
            this.f67528j = d10;
        }

        @Override
        public double v() {
            return this.f67525g / this.f67521d;
        }

        @Override
        public void w(double d10, double d11) {
            double d12 = this.f67521d;
            double d13 = this.f67528j * d11;
            long j10 = this.f67525g;
            double d14 = (j10 * 0.5d) / d11;
            this.f67527i = d14;
            double d15 = ((j10 * 2.0d) / (d11 + d13)) + d14;
            this.f67521d = d15;
            this.f67526h = (d13 - d11) / (d15 - d14);
            if (d12 == Double.POSITIVE_INFINITY) {
                this.f67520c = 0.0d;
                return;
            }
            if (d12 != 0.0d) {
                d15 = (this.f67520c * d15) / d12;
            }
            this.f67520c = d15;
        }

        @Override
        public long y(double d10, double d11) {
            long j10;
            double d12 = d10 - this.f67527i;
            if (d12 > 0.0d) {
                double min = Math.min(d12, d11);
                j10 = (long) (((z(d12) + z(d12 - min)) * min) / 2.0d);
                d11 -= min;
            } else {
                j10 = 0;
            }
            return j10 + ((long) (this.f67522e * d11));
        }

        public final double z(double d10) {
            return this.f67522e + (d10 * this.f67526h);
        }
    }

    @Override
    public final double i() {
        return TimeUnit.SECONDS.toMicros(1L) / this.f67522e;
    }

    @Override
    public final void j(double d10, long j10) {
        x(j10);
        double micros = TimeUnit.SECONDS.toMicros(1L) / d10;
        this.f67522e = micros;
        w(d10, micros);
    }

    @Override
    public final long m(long j10) {
        return this.f67523f;
    }

    @Override
    public final long p(int i10, long j10) {
        x(j10);
        long j11 = this.f67523f;
        double d10 = i10;
        double min = Math.min(d10, this.f67520c);
        this.f67523f = E2.h.x(this.f67523f, y(this.f67520c, min) + ((long) ((d10 - min) * this.f67522e)));
        this.f67520c -= min;
        return j11;
    }

    public abstract double v();

    public abstract void w(double d10, double d11);

    public void x(long j10) {
        if (j10 > this.f67523f) {
            this.f67520c = Math.min(this.f67521d, this.f67520c + ((j10 - r0) / v()));
            this.f67523f = j10;
        }
    }

    public abstract long y(double d10, double d11);

    public u0(m0.a aVar) {
        super(aVar);
        this.f67523f = 0L;
    }
}
