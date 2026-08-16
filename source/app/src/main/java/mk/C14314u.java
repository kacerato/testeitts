package mk;

import java.math.BigInteger;
import jk.f;
import sk.AbstractC15321g;

public class C14314u extends f.b {

    public static final BigInteger f97426h = new BigInteger(1, em.h.d("FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFFFFFFFFFFFFFFFF"));

    public int[] f97427g;

    public C14314u() {
        this.f97427g = AbstractC15321g.j();
    }

    @Override
    public jk.f a(jk.f fVar) {
        int[] j10 = AbstractC15321g.j();
        C14312t.a(this.f97427g, ((C14314u) fVar).f97427g, j10);
        return new C14314u(j10);
    }

    @Override
    public jk.f b() {
        int[] j10 = AbstractC15321g.j();
        C14312t.c(this.f97427g, j10);
        return new C14314u(j10);
    }

    @Override
    public jk.f d(jk.f fVar) {
        int[] j10 = AbstractC15321g.j();
        C14312t.g(((C14314u) fVar).f97427g, j10);
        C14312t.i(j10, this.f97427g, j10);
        return new C14314u(j10);
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof C14314u) {
            return AbstractC15321g.o(this.f97427g, ((C14314u) obj).f97427g);
        }
        return false;
    }

    @Override
    public String f() {
        return "SecP192R1Field";
    }

    @Override
    public int g() {
        return f97426h.bitLength();
    }

    @Override
    public jk.f h() {
        int[] j10 = AbstractC15321g.j();
        C14312t.g(this.f97427g, j10);
        return new C14314u(j10);
    }

    public int hashCode() {
        return f97426h.hashCode() ^ org.bouncycastle.util.a.x0(this.f97427g, 0, 6);
    }

    @Override
    public boolean i() {
        return AbstractC15321g.v(this.f97427g);
    }

    @Override
    public boolean j() {
        return AbstractC15321g.x(this.f97427g);
    }

    @Override
    public jk.f k(jk.f fVar) {
        int[] j10 = AbstractC15321g.j();
        C14312t.i(this.f97427g, ((C14314u) fVar).f97427g, j10);
        return new C14314u(j10);
    }

    @Override
    public jk.f n() {
        int[] j10 = AbstractC15321g.j();
        C14312t.k(this.f97427g, j10);
        return new C14314u(j10);
    }

    @Override
    public jk.f o() {
        int[] iArr = this.f97427g;
        if (AbstractC15321g.x(iArr) || AbstractC15321g.v(iArr)) {
            return this;
        }
        int[] j10 = AbstractC15321g.j();
        int[] j11 = AbstractC15321g.j();
        C14312t.p(iArr, j10);
        C14312t.i(j10, iArr, j10);
        C14312t.q(j10, 2, j11);
        C14312t.i(j11, j10, j11);
        C14312t.q(j11, 4, j10);
        C14312t.i(j10, j11, j10);
        C14312t.q(j10, 8, j11);
        C14312t.i(j11, j10, j11);
        C14312t.q(j11, 16, j10);
        C14312t.i(j10, j11, j10);
        C14312t.q(j10, 32, j11);
        C14312t.i(j11, j10, j11);
        C14312t.q(j11, 64, j10);
        C14312t.i(j10, j11, j10);
        C14312t.q(j10, 62, j10);
        C14312t.p(j10, j11);
        if (AbstractC15321g.o(iArr, j11)) {
            return new C14314u(j10);
        }
        return null;
    }

    @Override
    public jk.f p() {
        int[] j10 = AbstractC15321g.j();
        C14312t.p(this.f97427g, j10);
        return new C14314u(j10);
    }

    @Override
    public jk.f t(jk.f fVar) {
        int[] j10 = AbstractC15321g.j();
        C14312t.s(this.f97427g, ((C14314u) fVar).f97427g, j10);
        return new C14314u(j10);
    }

    @Override
    public boolean u() {
        return AbstractC15321g.s(this.f97427g, 0) == 1;
    }

    @Override
    public BigInteger v() {
        return AbstractC15321g.Q(this.f97427g);
    }

    public C14314u(BigInteger bigInteger) {
        if (bigInteger == null || bigInteger.signum() < 0 || bigInteger.compareTo(f97426h) >= 0) {
            throw new IllegalArgumentException("x value invalid for SecP192R1FieldElement");
        }
        this.f97427g = C14312t.e(bigInteger);
    }

    public C14314u(int[] iArr) {
        this.f97427g = iArr;
    }
}
