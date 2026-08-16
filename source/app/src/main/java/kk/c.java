package kk;

import java.math.BigInteger;
import jk.f;
import sk.AbstractC15323i;

public class c extends f.b {

    public static final BigInteger f95378h = AbstractC15323i.Y(b.f95374b);

    public static final int[] f95379i = {1242472624, -991028441, -1389370248, 792926214, 1039914919, 726466713, 1338105611, 730014848};

    public int[] f95380g;

    public c() {
        this.f95380g = AbstractC15323i.m();
    }

    @Override
    public f a(f fVar) {
        int[] m10 = AbstractC15323i.m();
        b.a(this.f95380g, ((c) fVar).f95380g, m10);
        return new c(m10);
    }

    @Override
    public f b() {
        int[] m10 = AbstractC15323i.m();
        b.c(this.f95380g, m10);
        return new c(m10);
    }

    @Override
    public f d(f fVar) {
        int[] m10 = AbstractC15323i.m();
        b.h(((c) fVar).f95380g, m10);
        b.j(m10, this.f95380g, m10);
        return new c(m10);
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof c) {
            return AbstractC15323i.r(this.f95380g, ((c) obj).f95380g);
        }
        return false;
    }

    @Override
    public String f() {
        return "Curve25519Field";
    }

    @Override
    public int g() {
        return f95378h.bitLength();
    }

    @Override
    public f h() {
        int[] m10 = AbstractC15323i.m();
        b.h(this.f95380g, m10);
        return new c(m10);
    }

    public int hashCode() {
        return f95378h.hashCode() ^ org.bouncycastle.util.a.x0(this.f95380g, 0, 8);
    }

    @Override
    public boolean i() {
        return AbstractC15323i.y(this.f95380g);
    }

    @Override
    public boolean j() {
        return AbstractC15323i.A(this.f95380g);
    }

    @Override
    public f k(f fVar) {
        int[] m10 = AbstractC15323i.m();
        b.j(this.f95380g, ((c) fVar).f95380g, m10);
        return new c(m10);
    }

    @Override
    public f n() {
        int[] m10 = AbstractC15323i.m();
        b.l(this.f95380g, m10);
        return new c(m10);
    }

    @Override
    public f o() {
        int[] iArr = this.f95380g;
        if (AbstractC15323i.A(iArr) || AbstractC15323i.y(iArr)) {
            return this;
        }
        int[] m10 = AbstractC15323i.m();
        b.q(iArr, m10);
        b.j(m10, iArr, m10);
        b.q(m10, m10);
        b.j(m10, iArr, m10);
        int[] m11 = AbstractC15323i.m();
        b.q(m10, m11);
        b.j(m11, iArr, m11);
        int[] m12 = AbstractC15323i.m();
        b.r(m11, 3, m12);
        b.j(m12, m10, m12);
        b.r(m12, 4, m10);
        b.j(m10, m11, m10);
        b.r(m10, 4, m12);
        b.j(m12, m11, m12);
        b.r(m12, 15, m11);
        b.j(m11, m12, m11);
        b.r(m11, 30, m12);
        b.j(m12, m11, m12);
        b.r(m12, 60, m11);
        b.j(m11, m12, m11);
        b.r(m11, 11, m12);
        b.j(m12, m10, m12);
        b.r(m12, 120, m10);
        b.j(m10, m11, m10);
        b.q(m10, m10);
        b.q(m10, m11);
        if (AbstractC15323i.r(iArr, m11)) {
            return new c(m10);
        }
        b.j(m10, f95379i, m10);
        b.q(m10, m11);
        if (AbstractC15323i.r(iArr, m11)) {
            return new c(m10);
        }
        return null;
    }

    @Override
    public f p() {
        int[] m10 = AbstractC15323i.m();
        b.q(this.f95380g, m10);
        return new c(m10);
    }

    @Override
    public f t(f fVar) {
        int[] m10 = AbstractC15323i.m();
        b.u(this.f95380g, ((c) fVar).f95380g, m10);
        return new c(m10);
    }

    @Override
    public boolean u() {
        return AbstractC15323i.v(this.f95380g, 0) == 1;
    }

    @Override
    public BigInteger v() {
        return AbstractC15323i.Y(this.f95380g);
    }

    public c(BigInteger bigInteger) {
        if (bigInteger == null || bigInteger.signum() < 0 || bigInteger.compareTo(f95378h) >= 0) {
            throw new IllegalArgumentException("x value invalid for Curve25519FieldElement");
        }
        this.f95380g = b.f(bigInteger);
    }

    public c(int[] iArr) {
        this.f95380g = iArr;
    }
}
