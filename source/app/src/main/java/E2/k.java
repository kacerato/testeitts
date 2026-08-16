package E2;

import v2.InterfaceC15800a;
import w2.H;

@e
@v2.c
@InterfaceC15800a
public final class k {

    public final o f5416a = new o();

    public final o f5417b = new o();

    public double f5418c = 0.0d;

    public static double d(double d10) {
        return com.google.common.primitives.d.f(d10, -1.0d, 1.0d);
    }

    public void a(double d10, double d11) {
        this.f5416a.a(d10);
        if (!com.google.common.primitives.d.n(d10) || !com.google.common.primitives.d.n(d11)) {
            this.f5418c = Double.NaN;
        } else if (this.f5416a.j() > 1) {
            this.f5418c += (d10 - this.f5416a.l()) * (d11 - this.f5417b.l());
        }
        this.f5417b.a(d11);
    }

    public void b(j jVar) {
        if (jVar.a() == 0) {
            return;
        }
        this.f5416a.b(jVar.k());
        if (this.f5417b.j() == 0) {
            this.f5418c = jVar.i();
        } else {
            this.f5418c += jVar.i() + ((jVar.k().d() - this.f5416a.l()) * (jVar.l().d() - this.f5417b.l()) * jVar.a());
        }
        this.f5417b.b(jVar.l());
    }

    public long c() {
        return this.f5416a.j();
    }

    public final double e(double d10) {
        if (d10 > 0.0d) {
            return d10;
        }
        return Double.MIN_VALUE;
    }

    public final g f() {
        H.g0(c() > 1);
        if (Double.isNaN(this.f5418c)) {
            return g.a();
        }
        double u10 = this.f5416a.u();
        if (u10 > 0.0d) {
            return this.f5417b.u() > 0.0d ? g.f(this.f5416a.l(), this.f5417b.l()).b(this.f5418c / u10) : g.b(this.f5417b.l());
        }
        H.g0(this.f5417b.u() > 0.0d);
        return g.i(this.f5416a.l());
    }

    public final double g() {
        H.g0(c() > 1);
        if (Double.isNaN(this.f5418c)) {
            return Double.NaN;
        }
        double u10 = this.f5416a.u();
        double u11 = this.f5417b.u();
        H.g0(u10 > 0.0d);
        H.g0(u11 > 0.0d);
        return d(this.f5418c / Math.sqrt(e(u10 * u11)));
    }

    public double h() {
        H.g0(c() != 0);
        return this.f5418c / c();
    }

    public final double i() {
        H.g0(c() > 1);
        return this.f5418c / (c() - 1);
    }

    public j j() {
        return new j(this.f5416a.s(), this.f5417b.s(), this.f5418c);
    }

    public n k() {
        return this.f5416a.s();
    }

    public n l() {
        return this.f5417b.s();
    }
}
