package mk;

import java.math.BigInteger;
import jk.f;
import sk.AbstractC15320f;

public class C14291i extends f.b {

    public static final BigInteger f97347h = new BigInteger(1, em.h.d("FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7FFFFFFF"));

    public int[] f97348g;

    public C14291i() {
        this.f97348g = AbstractC15320f.h();
    }

    @Override
    public jk.f a(jk.f fVar) {
        int[] h10 = AbstractC15320f.h();
        C14289h.a(this.f97348g, ((C14291i) fVar).f97348g, h10);
        return new C14291i(h10);
    }

    @Override
    public jk.f b() {
        int[] h10 = AbstractC15320f.h();
        C14289h.c(this.f97348g, h10);
        return new C14291i(h10);
    }

    @Override
    public jk.f d(jk.f fVar) {
        int[] h10 = AbstractC15320f.h();
        C14289h.f(((C14291i) fVar).f97348g, h10);
        C14289h.h(h10, this.f97348g, h10);
        return new C14291i(h10);
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof C14291i) {
            return AbstractC15320f.k(this.f97348g, ((C14291i) obj).f97348g);
        }
        return false;
    }

    @Override
    public String f() {
        return "SecP160R1Field";
    }

    @Override
    public int g() {
        return f97347h.bitLength();
    }

    @Override
    public jk.f h() {
        int[] h10 = AbstractC15320f.h();
        C14289h.f(this.f97348g, h10);
        return new C14291i(h10);
    }

    public int hashCode() {
        return f97347h.hashCode() ^ org.bouncycastle.util.a.x0(this.f97348g, 0, 5);
    }

    @Override
    public boolean i() {
        return AbstractC15320f.p(this.f97348g);
    }

    @Override
    public boolean j() {
        return AbstractC15320f.q(this.f97348g);
    }

    @Override
    public jk.f k(jk.f fVar) {
        int[] h10 = AbstractC15320f.h();
        C14289h.h(this.f97348g, ((C14291i) fVar).f97348g, h10);
        return new C14291i(h10);
    }

    @Override
    public jk.f n() {
        int[] h10 = AbstractC15320f.h();
        C14289h.j(this.f97348g, h10);
        return new C14291i(h10);
    }

    @Override
    public jk.f o() {
        int[] iArr = this.f97348g;
        if (AbstractC15320f.q(iArr) || AbstractC15320f.p(iArr)) {
            return this;
        }
        int[] h10 = AbstractC15320f.h();
        C14289h.o(iArr, h10);
        C14289h.h(h10, iArr, h10);
        int[] h11 = AbstractC15320f.h();
        C14289h.p(h10, 2, h11);
        C14289h.h(h11, h10, h11);
        C14289h.p(h11, 4, h10);
        C14289h.h(h10, h11, h10);
        C14289h.p(h10, 8, h11);
        C14289h.h(h11, h10, h11);
        C14289h.p(h11, 16, h10);
        C14289h.h(h10, h11, h10);
        C14289h.p(h10, 32, h11);
        C14289h.h(h11, h10, h11);
        C14289h.p(h11, 64, h10);
        C14289h.h(h10, h11, h10);
        C14289h.o(h10, h11);
        C14289h.h(h11, iArr, h11);
        C14289h.p(h11, 29, h11);
        C14289h.o(h11, h10);
        if (AbstractC15320f.k(iArr, h10)) {
            return new C14291i(h11);
        }
        return null;
    }

    @Override
    public jk.f p() {
        int[] h10 = AbstractC15320f.h();
        C14289h.o(this.f97348g, h10);
        return new C14291i(h10);
    }

    @Override
    public jk.f t(jk.f fVar) {
        int[] h10 = AbstractC15320f.h();
        C14289h.q(this.f97348g, ((C14291i) fVar).f97348g, h10);
        return new C14291i(h10);
    }

    @Override
    public boolean u() {
        return AbstractC15320f.m(this.f97348g, 0) == 1;
    }

    @Override
    public BigInteger v() {
        return AbstractC15320f.J(this.f97348g);
    }

    public C14291i(BigInteger bigInteger) {
        if (bigInteger == null || bigInteger.signum() < 0 || bigInteger.compareTo(f97347h) >= 0) {
            throw new IllegalArgumentException("x value invalid for SecP160R1FieldElement");
        }
        this.f97348g = C14289h.d(bigInteger);
    }

    public C14291i(int[] iArr) {
        this.f97348g = iArr;
    }
}
