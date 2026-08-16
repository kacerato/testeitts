package mk;

import java.math.BigInteger;
import jk.f;
import sk.AbstractC15320f;

public class C14299m extends f.b {

    public static final BigInteger f97375h = new BigInteger(1, em.h.d("FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFFFFAC73"));

    public int[] f97376g;

    public C14299m() {
        this.f97376g = AbstractC15320f.h();
    }

    @Override
    public jk.f a(jk.f fVar) {
        int[] h10 = AbstractC15320f.h();
        C14297l.a(this.f97376g, ((C14299m) fVar).f97376g, h10);
        return new C14299m(h10);
    }

    @Override
    public jk.f b() {
        int[] h10 = AbstractC15320f.h();
        C14297l.c(this.f97376g, h10);
        return new C14299m(h10);
    }

    @Override
    public jk.f d(jk.f fVar) {
        int[] h10 = AbstractC15320f.h();
        C14297l.f(((C14299m) fVar).f97376g, h10);
        C14297l.h(h10, this.f97376g, h10);
        return new C14299m(h10);
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof C14299m) {
            return AbstractC15320f.k(this.f97376g, ((C14299m) obj).f97376g);
        }
        return false;
    }

    @Override
    public String f() {
        return "SecP160R2Field";
    }

    @Override
    public int g() {
        return f97375h.bitLength();
    }

    @Override
    public jk.f h() {
        int[] h10 = AbstractC15320f.h();
        C14297l.f(this.f97376g, h10);
        return new C14299m(h10);
    }

    public int hashCode() {
        return f97375h.hashCode() ^ org.bouncycastle.util.a.x0(this.f97376g, 0, 5);
    }

    @Override
    public boolean i() {
        return AbstractC15320f.p(this.f97376g);
    }

    @Override
    public boolean j() {
        return AbstractC15320f.q(this.f97376g);
    }

    @Override
    public jk.f k(jk.f fVar) {
        int[] h10 = AbstractC15320f.h();
        C14297l.h(this.f97376g, ((C14299m) fVar).f97376g, h10);
        return new C14299m(h10);
    }

    @Override
    public jk.f n() {
        int[] h10 = AbstractC15320f.h();
        C14297l.j(this.f97376g, h10);
        return new C14299m(h10);
    }

    @Override
    public jk.f o() {
        int[] iArr = this.f97376g;
        if (AbstractC15320f.q(iArr) || AbstractC15320f.p(iArr)) {
            return this;
        }
        int[] h10 = AbstractC15320f.h();
        C14297l.o(iArr, h10);
        C14297l.h(h10, iArr, h10);
        int[] h11 = AbstractC15320f.h();
        C14297l.o(h10, h11);
        C14297l.h(h11, iArr, h11);
        int[] h12 = AbstractC15320f.h();
        C14297l.o(h11, h12);
        C14297l.h(h12, iArr, h12);
        int[] h13 = AbstractC15320f.h();
        C14297l.p(h12, 3, h13);
        C14297l.h(h13, h11, h13);
        C14297l.p(h13, 7, h12);
        C14297l.h(h12, h13, h12);
        C14297l.p(h12, 3, h13);
        C14297l.h(h13, h11, h13);
        int[] h14 = AbstractC15320f.h();
        C14297l.p(h13, 14, h14);
        C14297l.h(h14, h12, h14);
        C14297l.p(h14, 31, h12);
        C14297l.h(h12, h14, h12);
        C14297l.p(h12, 62, h14);
        C14297l.h(h14, h12, h14);
        C14297l.p(h14, 3, h12);
        C14297l.h(h12, h11, h12);
        C14297l.p(h12, 18, h12);
        C14297l.h(h12, h13, h12);
        C14297l.p(h12, 2, h12);
        C14297l.h(h12, iArr, h12);
        C14297l.p(h12, 3, h12);
        C14297l.h(h12, h10, h12);
        C14297l.p(h12, 6, h12);
        C14297l.h(h12, h11, h12);
        C14297l.p(h12, 2, h12);
        C14297l.h(h12, iArr, h12);
        C14297l.o(h12, h10);
        if (AbstractC15320f.k(iArr, h10)) {
            return new C14299m(h12);
        }
        return null;
    }

    @Override
    public jk.f p() {
        int[] h10 = AbstractC15320f.h();
        C14297l.o(this.f97376g, h10);
        return new C14299m(h10);
    }

    @Override
    public jk.f t(jk.f fVar) {
        int[] h10 = AbstractC15320f.h();
        C14297l.q(this.f97376g, ((C14299m) fVar).f97376g, h10);
        return new C14299m(h10);
    }

    @Override
    public boolean u() {
        return AbstractC15320f.m(this.f97376g, 0) == 1;
    }

    @Override
    public BigInteger v() {
        return AbstractC15320f.J(this.f97376g);
    }

    public C14299m(BigInteger bigInteger) {
        if (bigInteger == null || bigInteger.signum() < 0 || bigInteger.compareTo(f97375h) >= 0) {
            throw new IllegalArgumentException("x value invalid for SecP160R2FieldElement");
        }
        this.f97376g = C14297l.d(bigInteger);
    }

    public C14299m(int[] iArr) {
        this.f97376g = iArr;
    }
}
