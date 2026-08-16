package mk;

import java.math.BigInteger;
import jk.f;
import sk.AbstractC15329o;

public class T extends f.b {

    public static final BigInteger f97261h = new BigInteger(1, em.h.d("01FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF"));

    public int[] f97262g;

    public T() {
        this.f97262g = AbstractC15329o.E(17);
    }

    @Override
    public jk.f a(jk.f fVar) {
        int[] E10 = AbstractC15329o.E(17);
        S.a(this.f97262g, ((T) fVar).f97262g, E10);
        return new T(E10);
    }

    @Override
    public jk.f b() {
        int[] E10 = AbstractC15329o.E(17);
        S.b(this.f97262g, E10);
        return new T(E10);
    }

    @Override
    public jk.f d(jk.f fVar) {
        int[] E10 = AbstractC15329o.E(17);
        S.g(((T) fVar).f97262g, E10);
        S.i(E10, this.f97262g, E10);
        return new T(E10);
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof T) {
            return AbstractC15329o.N(17, this.f97262g, ((T) obj).f97262g);
        }
        return false;
    }

    @Override
    public String f() {
        return "SecP521R1Field";
    }

    @Override
    public int g() {
        return f97261h.bitLength();
    }

    @Override
    public jk.f h() {
        int[] E10 = AbstractC15329o.E(17);
        S.g(this.f97262g, E10);
        return new T(E10);
    }

    public int hashCode() {
        return f97261h.hashCode() ^ org.bouncycastle.util.a.x0(this.f97262g, 0, 17);
    }

    @Override
    public boolean i() {
        return AbstractC15329o.f0(17, this.f97262g);
    }

    @Override
    public boolean j() {
        return AbstractC15329o.g0(17, this.f97262g);
    }

    @Override
    public jk.f k(jk.f fVar) {
        int[] E10 = AbstractC15329o.E(17);
        S.i(this.f97262g, ((T) fVar).f97262g, E10);
        return new T(E10);
    }

    @Override
    public jk.f n() {
        int[] E10 = AbstractC15329o.E(17);
        S.k(this.f97262g, E10);
        return new T(E10);
    }

    @Override
    public jk.f o() {
        int[] iArr = this.f97262g;
        if (AbstractC15329o.g0(17, iArr) || AbstractC15329o.f0(17, iArr)) {
            return this;
        }
        int[] E10 = AbstractC15329o.E(33);
        int[] E11 = AbstractC15329o.E(17);
        int[] E12 = AbstractC15329o.E(17);
        S.s(iArr, 519, E11, E10);
        S.q(E11, E12, E10);
        if (AbstractC15329o.N(17, iArr, E12)) {
            return new T(E11);
        }
        return null;
    }

    @Override
    public jk.f p() {
        int[] E10 = AbstractC15329o.E(17);
        S.p(this.f97262g, E10);
        return new T(E10);
    }

    @Override
    public jk.f t(jk.f fVar) {
        int[] E10 = AbstractC15329o.E(17);
        S.t(this.f97262g, ((T) fVar).f97262g, E10);
        return new T(E10);
    }

    @Override
    public boolean u() {
        return AbstractC15329o.W(this.f97262g, 0) == 1;
    }

    @Override
    public BigInteger v() {
        return AbstractC15329o.j1(17, this.f97262g);
    }

    public T(BigInteger bigInteger) {
        if (bigInteger == null || bigInteger.signum() < 0 || bigInteger.compareTo(f97261h) >= 0) {
            throw new IllegalArgumentException("x value invalid for SecP521R1FieldElement");
        }
        this.f97262g = S.c(bigInteger);
    }

    public T(int[] iArr) {
        this.f97262g = iArr;
    }
}
