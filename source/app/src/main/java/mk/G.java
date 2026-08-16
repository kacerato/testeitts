package mk;

import java.math.BigInteger;
import jk.f;
import sk.AbstractC15323i;

public class G extends f.b {

    public static final BigInteger f97190h = new BigInteger(1, em.h.d("FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFFFFFC2F"));

    public int[] f97191g;

    public G() {
        this.f97191g = AbstractC15323i.m();
    }

    @Override
    public jk.f a(jk.f fVar) {
        int[] m10 = AbstractC15323i.m();
        F.a(this.f97191g, ((G) fVar).f97191g, m10);
        return new G(m10);
    }

    @Override
    public jk.f b() {
        int[] m10 = AbstractC15323i.m();
        F.c(this.f97191g, m10);
        return new G(m10);
    }

    @Override
    public jk.f d(jk.f fVar) {
        int[] m10 = AbstractC15323i.m();
        F.f(((G) fVar).f97191g, m10);
        F.h(m10, this.f97191g, m10);
        return new G(m10);
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof G) {
            return AbstractC15323i.r(this.f97191g, ((G) obj).f97191g);
        }
        return false;
    }

    @Override
    public String f() {
        return "SecP256K1Field";
    }

    @Override
    public int g() {
        return f97190h.bitLength();
    }

    @Override
    public jk.f h() {
        int[] m10 = AbstractC15323i.m();
        F.f(this.f97191g, m10);
        return new G(m10);
    }

    public int hashCode() {
        return f97190h.hashCode() ^ org.bouncycastle.util.a.x0(this.f97191g, 0, 8);
    }

    @Override
    public boolean i() {
        return AbstractC15323i.y(this.f97191g);
    }

    @Override
    public boolean j() {
        return AbstractC15323i.A(this.f97191g);
    }

    @Override
    public jk.f k(jk.f fVar) {
        int[] m10 = AbstractC15323i.m();
        F.h(this.f97191g, ((G) fVar).f97191g, m10);
        return new G(m10);
    }

    @Override
    public jk.f n() {
        int[] m10 = AbstractC15323i.m();
        F.k(this.f97191g, m10);
        return new G(m10);
    }

    @Override
    public jk.f o() {
        int[] iArr = this.f97191g;
        if (AbstractC15323i.A(iArr) || AbstractC15323i.y(iArr)) {
            return this;
        }
        int[] o10 = AbstractC15323i.o();
        int[] m10 = AbstractC15323i.m();
        F.q(iArr, m10, o10);
        F.i(m10, iArr, m10, o10);
        int[] m11 = AbstractC15323i.m();
        F.q(m10, m11, o10);
        F.i(m11, iArr, m11, o10);
        int[] m12 = AbstractC15323i.m();
        F.s(m11, 3, m12, o10);
        F.i(m12, m11, m12, o10);
        F.s(m12, 3, m12, o10);
        F.i(m12, m11, m12, o10);
        F.s(m12, 2, m12, o10);
        F.i(m12, m10, m12, o10);
        int[] m13 = AbstractC15323i.m();
        F.s(m12, 11, m13, o10);
        F.i(m13, m12, m13, o10);
        F.s(m13, 22, m12, o10);
        F.i(m12, m13, m12, o10);
        int[] m14 = AbstractC15323i.m();
        F.s(m12, 44, m14, o10);
        F.i(m14, m12, m14, o10);
        int[] m15 = AbstractC15323i.m();
        F.s(m14, 88, m15, o10);
        F.i(m15, m14, m15, o10);
        F.s(m15, 44, m14, o10);
        F.i(m14, m12, m14, o10);
        F.s(m14, 3, m12, o10);
        F.i(m12, m11, m12, o10);
        F.s(m12, 23, m12, o10);
        F.i(m12, m13, m12, o10);
        F.s(m12, 6, m12, o10);
        F.i(m12, m10, m12, o10);
        F.s(m12, 2, m12, o10);
        F.q(m12, m10, o10);
        if (AbstractC15323i.r(iArr, m10)) {
            return new G(m12);
        }
        return null;
    }

    @Override
    public jk.f p() {
        int[] m10 = AbstractC15323i.m();
        F.p(this.f97191g, m10);
        return new G(m10);
    }

    @Override
    public jk.f t(jk.f fVar) {
        int[] m10 = AbstractC15323i.m();
        F.t(this.f97191g, ((G) fVar).f97191g, m10);
        return new G(m10);
    }

    @Override
    public boolean u() {
        return AbstractC15323i.v(this.f97191g, 0) == 1;
    }

    @Override
    public BigInteger v() {
        return AbstractC15323i.Y(this.f97191g);
    }

    public G(BigInteger bigInteger) {
        if (bigInteger == null || bigInteger.signum() < 0 || bigInteger.compareTo(f97190h) >= 0) {
            throw new IllegalArgumentException("x value invalid for SecP256K1FieldElement");
        }
        this.f97191g = F.d(bigInteger);
    }

    public G(int[] iArr) {
        this.f97191g = iArr;
    }
}
