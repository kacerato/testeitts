package mk;

import java.math.BigInteger;
import jk.f;
import sk.AbstractC15329o;

public class O extends f.b {

    public static final BigInteger f97241h = new BigInteger(1, em.h.d("FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFFFFFFFF0000000000000000FFFFFFFF"));

    public int[] f97242g;

    public O() {
        this.f97242g = AbstractC15329o.E(12);
    }

    @Override
    public jk.f a(jk.f fVar) {
        int[] E10 = AbstractC15329o.E(12);
        N.a(this.f97242g, ((O) fVar).f97242g, E10);
        return new O(E10);
    }

    @Override
    public jk.f b() {
        int[] E10 = AbstractC15329o.E(12);
        N.c(this.f97242g, E10);
        return new O(E10);
    }

    @Override
    public jk.f d(jk.f fVar) {
        int[] E10 = AbstractC15329o.E(12);
        N.g(((O) fVar).f97242g, E10);
        N.i(E10, this.f97242g, E10);
        return new O(E10);
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof O) {
            return AbstractC15329o.N(12, this.f97242g, ((O) obj).f97242g);
        }
        return false;
    }

    @Override
    public String f() {
        return "SecP384R1Field";
    }

    @Override
    public int g() {
        return f97241h.bitLength();
    }

    @Override
    public jk.f h() {
        int[] E10 = AbstractC15329o.E(12);
        N.g(this.f97242g, E10);
        return new O(E10);
    }

    public int hashCode() {
        return f97241h.hashCode() ^ org.bouncycastle.util.a.x0(this.f97242g, 0, 12);
    }

    @Override
    public boolean i() {
        return AbstractC15329o.f0(12, this.f97242g);
    }

    @Override
    public boolean j() {
        return AbstractC15329o.g0(12, this.f97242g);
    }

    @Override
    public jk.f k(jk.f fVar) {
        int[] E10 = AbstractC15329o.E(12);
        N.i(this.f97242g, ((O) fVar).f97242g, E10);
        return new O(E10);
    }

    @Override
    public jk.f n() {
        int[] E10 = AbstractC15329o.E(12);
        N.k(this.f97242g, E10);
        return new O(E10);
    }

    @Override
    public jk.f o() {
        int[] iArr = this.f97242g;
        if (AbstractC15329o.g0(12, iArr) || AbstractC15329o.f0(12, iArr)) {
            return this;
        }
        int[] E10 = AbstractC15329o.E(24);
        int[] E11 = AbstractC15329o.E(12);
        int[] E12 = AbstractC15329o.E(12);
        int[] E13 = AbstractC15329o.E(12);
        int[] E14 = AbstractC15329o.E(12);
        N.q(iArr, E11, E10);
        N.j(E11, iArr, E11, E10);
        N.s(E11, 2, E12, E10);
        N.j(E12, E11, E12, E10);
        N.q(E12, E12, E10);
        N.j(E12, iArr, E12, E10);
        N.s(E12, 5, E13, E10);
        N.j(E13, E12, E13, E10);
        N.s(E13, 5, E14, E10);
        N.j(E14, E12, E14, E10);
        N.s(E14, 15, E12, E10);
        N.j(E12, E14, E12, E10);
        N.s(E12, 2, E13, E10);
        N.j(E11, E13, E11, E10);
        N.s(E13, 28, E13, E10);
        N.j(E12, E13, E12, E10);
        N.s(E12, 60, E13, E10);
        N.j(E13, E12, E13, E10);
        N.s(E13, 120, E12, E10);
        N.j(E12, E13, E12, E10);
        N.s(E12, 15, E12, E10);
        N.j(E12, E14, E12, E10);
        N.s(E12, 33, E12, E10);
        N.j(E12, E11, E12, E10);
        N.s(E12, 64, E12, E10);
        N.j(E12, iArr, E12, E10);
        N.s(E12, 30, E11, E10);
        N.q(E11, E12, E10);
        if (AbstractC15329o.N(12, iArr, E12)) {
            return new O(E11);
        }
        return null;
    }

    @Override
    public jk.f p() {
        int[] E10 = AbstractC15329o.E(12);
        N.p(this.f97242g, E10);
        return new O(E10);
    }

    @Override
    public jk.f t(jk.f fVar) {
        int[] E10 = AbstractC15329o.E(12);
        N.u(this.f97242g, ((O) fVar).f97242g, E10);
        return new O(E10);
    }

    @Override
    public boolean u() {
        return AbstractC15329o.W(this.f97242g, 0) == 1;
    }

    @Override
    public BigInteger v() {
        return AbstractC15329o.j1(12, this.f97242g);
    }

    public O(BigInteger bigInteger) {
        if (bigInteger == null || bigInteger.signum() < 0 || bigInteger.compareTo(f97241h) >= 0) {
            throw new IllegalArgumentException("x value invalid for SecP384R1FieldElement");
        }
        this.f97242g = N.e(bigInteger);
    }

    public O(int[] iArr) {
        this.f97242g = iArr;
    }
}
