package E2;

import java.util.Iterator;
import v2.InterfaceC15800a;
import w2.H;

@e
@v2.c
@InterfaceC15800a
public final class o {

    public long f5431a = 0;

    public double f5432b = 0.0d;

    public double f5433c = 0.0d;

    public double f5434d = Double.NaN;

    public double f5435e = Double.NaN;

    public static double i(double d10, double d11) {
        if (com.google.common.primitives.d.n(d10)) {
            return d11;
        }
        if (com.google.common.primitives.d.n(d11) || d10 == d11) {
            return d10;
        }
        return Double.NaN;
    }

    public void a(double d10) {
        long j10 = this.f5431a;
        if (j10 == 0) {
            this.f5431a = 1L;
            this.f5432b = d10;
            this.f5434d = d10;
            this.f5435e = d10;
            if (com.google.common.primitives.d.n(d10)) {
                return;
            }
            this.f5433c = Double.NaN;
            return;
        }
        this.f5431a = j10 + 1;
        if (com.google.common.primitives.d.n(d10) && com.google.common.primitives.d.n(this.f5432b)) {
            double d11 = this.f5432b;
            double d12 = d10 - d11;
            double d13 = d11 + (d12 / this.f5431a);
            this.f5432b = d13;
            this.f5433c += d12 * (d10 - d13);
        } else {
            this.f5432b = i(this.f5432b, d10);
            this.f5433c = Double.NaN;
        }
        this.f5434d = Math.min(this.f5434d, d10);
        this.f5435e = Math.max(this.f5435e, d10);
    }

    public void b(n nVar) {
        if (nVar.a() == 0) {
            return;
        }
        m(nVar.a(), nVar.d(), nVar.w(), nVar.j(), nVar.c());
    }

    public void c(o oVar) {
        if (oVar.j() == 0) {
            return;
        }
        m(oVar.j(), oVar.l(), oVar.u(), oVar.n(), oVar.k());
    }

    public void d(Iterable<? extends Number> iterable) {
        Iterator<? extends Number> it = iterable.iterator();
        while (it.hasNext()) {
            a(it.next().doubleValue());
        }
    }

    public void e(Iterator<? extends Number> it) {
        while (it.hasNext()) {
            a(it.next().doubleValue());
        }
    }

    public void f(double... dArr) {
        for (double d10 : dArr) {
            a(d10);
        }
    }

    public void g(int... iArr) {
        for (int i10 : iArr) {
            a(i10);
        }
    }

    public void h(long... jArr) {
        for (long j10 : jArr) {
            a(j10);
        }
    }

    public long j() {
        return this.f5431a;
    }

    public double k() {
        H.g0(this.f5431a != 0);
        return this.f5435e;
    }

    public double l() {
        H.g0(this.f5431a != 0);
        return this.f5432b;
    }

    public final void m(long j10, double d10, double d11, double d12, double d13) {
        long j11 = this.f5431a;
        if (j11 == 0) {
            this.f5431a = j10;
            this.f5432b = d10;
            this.f5433c = d11;
            this.f5434d = d12;
            this.f5435e = d13;
            return;
        }
        this.f5431a = j11 + j10;
        if (com.google.common.primitives.d.n(this.f5432b) && com.google.common.primitives.d.n(d10)) {
            double d14 = this.f5432b;
            double d15 = d10 - d14;
            double d16 = j10;
            double d17 = d14 + ((d15 * d16) / this.f5431a);
            this.f5432b = d17;
            this.f5433c += d11 + (d15 * (d10 - d17) * d16);
        } else {
            this.f5432b = i(this.f5432b, d10);
            this.f5433c = Double.NaN;
        }
        this.f5434d = Math.min(this.f5434d, d12);
        this.f5435e = Math.max(this.f5435e, d13);
    }

    public double n() {
        H.g0(this.f5431a != 0);
        return this.f5434d;
    }

    public final double o() {
        return Math.sqrt(p());
    }

    public final double p() {
        H.g0(this.f5431a != 0);
        if (Double.isNaN(this.f5433c)) {
            return Double.NaN;
        }
        if (this.f5431a == 1) {
            return 0.0d;
        }
        return d.b(this.f5433c) / this.f5431a;
    }

    public final double q() {
        return Math.sqrt(r());
    }

    public final double r() {
        H.g0(this.f5431a > 1);
        if (Double.isNaN(this.f5433c)) {
            return Double.NaN;
        }
        return d.b(this.f5433c) / (this.f5431a - 1);
    }

    public n s() {
        return new n(this.f5431a, this.f5432b, this.f5433c, this.f5434d, this.f5435e);
    }

    public final double t() {
        return this.f5432b * this.f5431a;
    }

    public double u() {
        return this.f5433c;
    }
}
