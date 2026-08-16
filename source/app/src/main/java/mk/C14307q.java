package mk;

import java.math.BigInteger;
import jk.f;
import sk.AbstractC15321g;

public class C14307q extends f.b {

    public static final BigInteger f97398h = new BigInteger(1, em.h.d("FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFFFFEE37"));

    public int[] f97399g;

    public C14307q() {
        this.f97399g = AbstractC15321g.j();
    }

    @Override
    public jk.f a(jk.f fVar) {
        int[] j10 = AbstractC15321g.j();
        C14305p.a(this.f97399g, ((C14307q) fVar).f97399g, j10);
        return new C14307q(j10);
    }

    @Override
    public jk.f b() {
        int[] j10 = AbstractC15321g.j();
        C14305p.c(this.f97399g, j10);
        return new C14307q(j10);
    }

    @Override
    public jk.f d(jk.f fVar) {
        int[] j10 = AbstractC15321g.j();
        C14305p.f(((C14307q) fVar).f97399g, j10);
        C14305p.h(j10, this.f97399g, j10);
        return new C14307q(j10);
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof C14307q) {
            return AbstractC15321g.o(this.f97399g, ((C14307q) obj).f97399g);
        }
        return false;
    }

    @Override
    public String f() {
        return "SecP192K1Field";
    }

    @Override
    public int g() {
        return f97398h.bitLength();
    }

    @Override
    public jk.f h() {
        int[] j10 = AbstractC15321g.j();
        C14305p.f(this.f97399g, j10);
        return new C14307q(j10);
    }

    public int hashCode() {
        return f97398h.hashCode() ^ org.bouncycastle.util.a.x0(this.f97399g, 0, 6);
    }

    @Override
    public boolean i() {
        return AbstractC15321g.v(this.f97399g);
    }

    @Override
    public boolean j() {
        return AbstractC15321g.x(this.f97399g);
    }

    @Override
    public jk.f k(jk.f fVar) {
        int[] j10 = AbstractC15321g.j();
        C14305p.h(this.f97399g, ((C14307q) fVar).f97399g, j10);
        return new C14307q(j10);
    }

    @Override
    public jk.f n() {
        int[] j10 = AbstractC15321g.j();
        C14305p.j(this.f97399g, j10);
        return new C14307q(j10);
    }

    @Override
    public jk.f o() {
        int[] iArr = this.f97399g;
        if (AbstractC15321g.x(iArr) || AbstractC15321g.v(iArr)) {
            return this;
        }
        int[] j10 = AbstractC15321g.j();
        C14305p.o(iArr, j10);
        C14305p.h(j10, iArr, j10);
        int[] j11 = AbstractC15321g.j();
        C14305p.o(j10, j11);
        C14305p.h(j11, iArr, j11);
        int[] j12 = AbstractC15321g.j();
        C14305p.p(j11, 3, j12);
        C14305p.h(j12, j11, j12);
        C14305p.p(j12, 2, j12);
        C14305p.h(j12, j10, j12);
        C14305p.p(j12, 8, j10);
        C14305p.h(j10, j12, j10);
        C14305p.p(j10, 3, j12);
        C14305p.h(j12, j11, j12);
        int[] j13 = AbstractC15321g.j();
        C14305p.p(j12, 16, j13);
        C14305p.h(j13, j10, j13);
        C14305p.p(j13, 35, j10);
        C14305p.h(j10, j13, j10);
        C14305p.p(j10, 70, j13);
        C14305p.h(j13, j10, j13);
        C14305p.p(j13, 19, j10);
        C14305p.h(j10, j12, j10);
        C14305p.p(j10, 20, j10);
        C14305p.h(j10, j12, j10);
        C14305p.p(j10, 4, j10);
        C14305p.h(j10, j11, j10);
        C14305p.p(j10, 6, j10);
        C14305p.h(j10, j11, j10);
        C14305p.o(j10, j10);
        C14305p.o(j10, j11);
        if (AbstractC15321g.o(iArr, j11)) {
            return new C14307q(j10);
        }
        return null;
    }

    @Override
    public jk.f p() {
        int[] j10 = AbstractC15321g.j();
        C14305p.o(this.f97399g, j10);
        return new C14307q(j10);
    }

    @Override
    public jk.f t(jk.f fVar) {
        int[] j10 = AbstractC15321g.j();
        C14305p.q(this.f97399g, ((C14307q) fVar).f97399g, j10);
        return new C14307q(j10);
    }

    @Override
    public boolean u() {
        return AbstractC15321g.s(this.f97399g, 0) == 1;
    }

    @Override
    public BigInteger v() {
        return AbstractC15321g.Q(this.f97399g);
    }

    public C14307q(BigInteger bigInteger) {
        if (bigInteger == null || bigInteger.signum() < 0 || bigInteger.compareTo(f97398h) >= 0) {
            throw new IllegalArgumentException("x value invalid for SecP192K1FieldElement");
        }
        this.f97399g = C14305p.d(bigInteger);
    }

    public C14307q(int[] iArr) {
        this.f97399g = iArr;
    }
}
