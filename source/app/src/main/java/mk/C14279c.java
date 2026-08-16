package mk;

import java.math.BigInteger;
import jk.f;
import sk.AbstractC15319e;

public class C14279c extends f.b {

    public static final BigInteger f97308h = new BigInteger(1, em.h.d("FFFFFFFDFFFFFFFFFFFFFFFFFFFFFFFF"));

    public int[] f97309g;

    public C14279c() {
        this.f97309g = AbstractC15319e.j();
    }

    @Override
    public jk.f a(jk.f fVar) {
        int[] j10 = AbstractC15319e.j();
        C14277b.a(this.f97309g, ((C14279c) fVar).f97309g, j10);
        return new C14279c(j10);
    }

    @Override
    public jk.f b() {
        int[] j10 = AbstractC15319e.j();
        C14277b.c(this.f97309g, j10);
        return new C14279c(j10);
    }

    @Override
    public jk.f d(jk.f fVar) {
        int[] j10 = AbstractC15319e.j();
        C14277b.g(((C14279c) fVar).f97309g, j10);
        C14277b.i(j10, this.f97309g, j10);
        return new C14279c(j10);
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof C14279c) {
            return AbstractC15319e.o(this.f97309g, ((C14279c) obj).f97309g);
        }
        return false;
    }

    @Override
    public String f() {
        return "SecP128R1Field";
    }

    @Override
    public int g() {
        return f97308h.bitLength();
    }

    @Override
    public jk.f h() {
        int[] j10 = AbstractC15319e.j();
        C14277b.g(this.f97309g, j10);
        return new C14279c(j10);
    }

    public int hashCode() {
        return f97308h.hashCode() ^ org.bouncycastle.util.a.x0(this.f97309g, 0, 4);
    }

    @Override
    public boolean i() {
        return AbstractC15319e.v(this.f97309g);
    }

    @Override
    public boolean j() {
        return AbstractC15319e.x(this.f97309g);
    }

    @Override
    public jk.f k(jk.f fVar) {
        int[] j10 = AbstractC15319e.j();
        C14277b.i(this.f97309g, ((C14279c) fVar).f97309g, j10);
        return new C14279c(j10);
    }

    @Override
    public jk.f n() {
        int[] j10 = AbstractC15319e.j();
        C14277b.k(this.f97309g, j10);
        return new C14279c(j10);
    }

    @Override
    public jk.f o() {
        int[] iArr = this.f97309g;
        if (AbstractC15319e.x(iArr) || AbstractC15319e.v(iArr)) {
            return this;
        }
        int[] j10 = AbstractC15319e.j();
        C14277b.p(iArr, j10);
        C14277b.i(j10, iArr, j10);
        int[] j11 = AbstractC15319e.j();
        C14277b.q(j10, 2, j11);
        C14277b.i(j11, j10, j11);
        int[] j12 = AbstractC15319e.j();
        C14277b.q(j11, 4, j12);
        C14277b.i(j12, j11, j12);
        C14277b.q(j12, 2, j11);
        C14277b.i(j11, j10, j11);
        C14277b.q(j11, 10, j10);
        C14277b.i(j10, j11, j10);
        C14277b.q(j10, 10, j12);
        C14277b.i(j12, j11, j12);
        C14277b.p(j12, j11);
        C14277b.i(j11, iArr, j11);
        C14277b.q(j11, 95, j11);
        C14277b.p(j11, j12);
        if (AbstractC15319e.o(iArr, j12)) {
            return new C14279c(j11);
        }
        return null;
    }

    @Override
    public jk.f p() {
        int[] j10 = AbstractC15319e.j();
        C14277b.p(this.f97309g, j10);
        return new C14279c(j10);
    }

    @Override
    public jk.f t(jk.f fVar) {
        int[] j10 = AbstractC15319e.j();
        C14277b.s(this.f97309g, ((C14279c) fVar).f97309g, j10);
        return new C14279c(j10);
    }

    @Override
    public boolean u() {
        return AbstractC15319e.s(this.f97309g, 0) == 1;
    }

    @Override
    public BigInteger v() {
        return AbstractC15319e.R(this.f97309g);
    }

    public C14279c(BigInteger bigInteger) {
        if (bigInteger == null || bigInteger.signum() < 0 || bigInteger.compareTo(f97308h) >= 0) {
            throw new IllegalArgumentException("x value invalid for SecP128R1FieldElement");
        }
        this.f97309g = C14277b.e(bigInteger);
    }

    public C14279c(int[] iArr) {
        this.f97309g = iArr;
    }
}
