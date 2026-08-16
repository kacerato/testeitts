package lk;

import em.h;
import java.math.BigInteger;
import jk.f;
import sk.AbstractC15323i;

public class c extends f.b {

    public static final BigInteger f96530h = new BigInteger(1, h.d("FFFFFFFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00000000FFFFFFFFFFFFFFFF"));

    public int[] f96531g;

    public c() {
        this.f96531g = AbstractC15323i.m();
    }

    @Override
    public f a(f fVar) {
        int[] m10 = AbstractC15323i.m();
        b.a(this.f96531g, ((c) fVar).f96531g, m10);
        return new c(m10);
    }

    @Override
    public f b() {
        int[] m10 = AbstractC15323i.m();
        b.c(this.f96531g, m10);
        return new c(m10);
    }

    @Override
    public f d(f fVar) {
        int[] m10 = AbstractC15323i.m();
        b.g(((c) fVar).f96531g, m10);
        b.i(m10, this.f96531g, m10);
        return new c(m10);
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof c) {
            return AbstractC15323i.r(this.f96531g, ((c) obj).f96531g);
        }
        return false;
    }

    @Override
    public String f() {
        return "SM2P256V1Field";
    }

    @Override
    public int g() {
        return f96530h.bitLength();
    }

    @Override
    public f h() {
        int[] m10 = AbstractC15323i.m();
        b.g(this.f96531g, m10);
        return new c(m10);
    }

    public int hashCode() {
        return f96530h.hashCode() ^ org.bouncycastle.util.a.x0(this.f96531g, 0, 8);
    }

    @Override
    public boolean i() {
        return AbstractC15323i.y(this.f96531g);
    }

    @Override
    public boolean j() {
        return AbstractC15323i.A(this.f96531g);
    }

    @Override
    public f k(f fVar) {
        int[] m10 = AbstractC15323i.m();
        b.i(this.f96531g, ((c) fVar).f96531g, m10);
        return new c(m10);
    }

    @Override
    public f n() {
        int[] m10 = AbstractC15323i.m();
        b.k(this.f96531g, m10);
        return new c(m10);
    }

    @Override
    public f o() {
        int[] iArr = this.f96531g;
        if (AbstractC15323i.A(iArr) || AbstractC15323i.y(iArr)) {
            return this;
        }
        int[] m10 = AbstractC15323i.m();
        b.p(iArr, m10);
        b.i(m10, iArr, m10);
        int[] m11 = AbstractC15323i.m();
        b.q(m10, 2, m11);
        b.i(m11, m10, m11);
        int[] m12 = AbstractC15323i.m();
        b.q(m11, 2, m12);
        b.i(m12, m10, m12);
        b.q(m12, 6, m10);
        b.i(m10, m12, m10);
        int[] m13 = AbstractC15323i.m();
        b.q(m10, 12, m13);
        b.i(m13, m10, m13);
        b.q(m13, 6, m10);
        b.i(m10, m12, m10);
        b.p(m10, m12);
        b.i(m12, iArr, m12);
        b.q(m12, 31, m13);
        b.i(m13, m12, m10);
        b.q(m13, 32, m13);
        b.i(m13, m10, m13);
        b.q(m13, 62, m13);
        b.i(m13, m10, m13);
        b.q(m13, 4, m13);
        b.i(m13, m11, m13);
        b.q(m13, 32, m13);
        b.i(m13, iArr, m13);
        b.q(m13, 62, m13);
        b.p(m13, m11);
        if (AbstractC15323i.r(iArr, m11)) {
            return new c(m13);
        }
        return null;
    }

    @Override
    public f p() {
        int[] m10 = AbstractC15323i.m();
        b.p(this.f96531g, m10);
        return new c(m10);
    }

    @Override
    public f t(f fVar) {
        int[] m10 = AbstractC15323i.m();
        b.s(this.f96531g, ((c) fVar).f96531g, m10);
        return new c(m10);
    }

    @Override
    public boolean u() {
        return AbstractC15323i.v(this.f96531g, 0) == 1;
    }

    @Override
    public BigInteger v() {
        return AbstractC15323i.Y(this.f96531g);
    }

    public c(BigInteger bigInteger) {
        if (bigInteger == null || bigInteger.signum() < 0 || bigInteger.compareTo(f96530h) >= 0) {
            throw new IllegalArgumentException("x value invalid for SM2P256V1FieldElement");
        }
        this.f96531g = b.e(bigInteger);
    }

    public c(int[] iArr) {
        this.f96531g = iArr;
    }
}
