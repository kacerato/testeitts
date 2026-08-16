package mk;

import java.math.BigInteger;
import jk.f;
import sk.AbstractC15323i;

public class K extends f.b {

    public static final BigInteger f97217h = new BigInteger(1, em.h.d("FFFFFFFF00000001000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFF"));

    public int[] f97218g;

    public K() {
        this.f97218g = AbstractC15323i.m();
    }

    @Override
    public jk.f a(jk.f fVar) {
        int[] m10 = AbstractC15323i.m();
        J.a(this.f97218g, ((K) fVar).f97218g, m10);
        return new K(m10);
    }

    @Override
    public jk.f b() {
        int[] m10 = AbstractC15323i.m();
        J.c(this.f97218g, m10);
        return new K(m10);
    }

    @Override
    public jk.f d(jk.f fVar) {
        int[] m10 = AbstractC15323i.m();
        J.g(((K) fVar).f97218g, m10);
        J.i(m10, this.f97218g, m10);
        return new K(m10);
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof K) {
            return AbstractC15323i.r(this.f97218g, ((K) obj).f97218g);
        }
        return false;
    }

    @Override
    public String f() {
        return "SecP256R1Field";
    }

    @Override
    public int g() {
        return f97217h.bitLength();
    }

    @Override
    public jk.f h() {
        int[] m10 = AbstractC15323i.m();
        J.g(this.f97218g, m10);
        return new K(m10);
    }

    public int hashCode() {
        return f97217h.hashCode() ^ org.bouncycastle.util.a.x0(this.f97218g, 0, 8);
    }

    @Override
    public boolean i() {
        return AbstractC15323i.y(this.f97218g);
    }

    @Override
    public boolean j() {
        return AbstractC15323i.A(this.f97218g);
    }

    @Override
    public jk.f k(jk.f fVar) {
        int[] m10 = AbstractC15323i.m();
        J.i(this.f97218g, ((K) fVar).f97218g, m10);
        return new K(m10);
    }

    @Override
    public jk.f n() {
        int[] m10 = AbstractC15323i.m();
        J.l(this.f97218g, m10);
        return new K(m10);
    }

    @Override
    public jk.f o() {
        int[] iArr = this.f97218g;
        if (AbstractC15323i.A(iArr) || AbstractC15323i.y(iArr)) {
            return this;
        }
        int[] o10 = AbstractC15323i.o();
        int[] m10 = AbstractC15323i.m();
        int[] m11 = AbstractC15323i.m();
        J.r(iArr, m10, o10);
        J.j(m10, iArr, m10, o10);
        J.t(m10, 2, m11, o10);
        J.j(m11, m10, m11, o10);
        J.t(m11, 4, m10, o10);
        J.j(m10, m11, m10, o10);
        J.t(m10, 8, m11, o10);
        J.j(m11, m10, m11, o10);
        J.t(m11, 16, m10, o10);
        J.j(m10, m11, m10, o10);
        J.t(m10, 32, m10, o10);
        J.j(m10, iArr, m10, o10);
        J.t(m10, 96, m10, o10);
        J.j(m10, iArr, m10, o10);
        J.t(m10, 94, m10, o10);
        J.r(m10, m11, o10);
        if (AbstractC15323i.r(iArr, m11)) {
            return new K(m10);
        }
        return null;
    }

    @Override
    public jk.f p() {
        int[] m10 = AbstractC15323i.m();
        J.q(this.f97218g, m10);
        return new K(m10);
    }

    @Override
    public jk.f t(jk.f fVar) {
        int[] m10 = AbstractC15323i.m();
        J.v(this.f97218g, ((K) fVar).f97218g, m10);
        return new K(m10);
    }

    @Override
    public boolean u() {
        return AbstractC15323i.v(this.f97218g, 0) == 1;
    }

    @Override
    public BigInteger v() {
        return AbstractC15323i.Y(this.f97218g);
    }

    public K(BigInteger bigInteger) {
        if (bigInteger == null || bigInteger.signum() < 0 || bigInteger.compareTo(f97217h) >= 0) {
            throw new IllegalArgumentException("x value invalid for SecP256R1FieldElement");
        }
        this.f97218g = J.e(bigInteger);
    }

    public K(int[] iArr) {
        this.f97218g = iArr;
    }
}
