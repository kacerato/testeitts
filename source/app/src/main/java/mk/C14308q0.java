package mk;

import java.math.BigInteger;
import jk.f;
import sk.AbstractC15323i;

public class C14308q0 extends f.a {

    public long[] f97400g;

    public C14308q0() {
        this.f97400g = AbstractC15323i.n();
    }

    public int A() {
        return 0;
    }

    public int B() {
        return 0;
    }

    public int C() {
        return 193;
    }

    public int D() {
        return 2;
    }

    @Override
    public jk.f a(jk.f fVar) {
        long[] n10 = AbstractC15323i.n();
        C14306p0.a(this.f97400g, ((C14308q0) fVar).f97400g, n10);
        return new C14308q0(n10);
    }

    @Override
    public jk.f b() {
        long[] n10 = AbstractC15323i.n();
        C14306p0.c(this.f97400g, n10);
        return new C14308q0(n10);
    }

    @Override
    public jk.f d(jk.f fVar) {
        return k(fVar.h());
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof C14308q0) {
            return AbstractC15323i.s(this.f97400g, ((C14308q0) obj).f97400g);
        }
        return false;
    }

    @Override
    public String f() {
        return "SecT193Field";
    }

    @Override
    public int g() {
        return 193;
    }

    @Override
    public jk.f h() {
        long[] n10 = AbstractC15323i.n();
        C14306p0.l(this.f97400g, n10);
        return new C14308q0(n10);
    }

    public int hashCode() {
        return org.bouncycastle.util.a.z0(this.f97400g, 0, 4) ^ 1930015;
    }

    @Override
    public boolean i() {
        return AbstractC15323i.z(this.f97400g);
    }

    @Override
    public boolean j() {
        return AbstractC15323i.B(this.f97400g);
    }

    @Override
    public jk.f k(jk.f fVar) {
        long[] n10 = AbstractC15323i.n();
        C14306p0.m(this.f97400g, ((C14308q0) fVar).f97400g, n10);
        return new C14308q0(n10);
    }

    @Override
    public jk.f l(jk.f fVar, jk.f fVar2, jk.f fVar3) {
        return m(fVar, fVar2, fVar3);
    }

    @Override
    public jk.f m(jk.f fVar, jk.f fVar2, jk.f fVar3) {
        long[] jArr = this.f97400g;
        long[] jArr2 = ((C14308q0) fVar).f97400g;
        long[] jArr3 = ((C14308q0) fVar2).f97400g;
        long[] jArr4 = ((C14308q0) fVar3).f97400g;
        long[] p10 = AbstractC15323i.p();
        C14306p0.n(jArr, jArr2, p10);
        C14306p0.n(jArr3, jArr4, p10);
        long[] n10 = AbstractC15323i.n();
        C14306p0.o(p10, n10);
        return new C14308q0(n10);
    }

    @Override
    public jk.f n() {
        return this;
    }

    @Override
    public jk.f o() {
        long[] n10 = AbstractC15323i.n();
        C14306p0.q(this.f97400g, n10);
        return new C14308q0(n10);
    }

    @Override
    public jk.f p() {
        long[] n10 = AbstractC15323i.n();
        C14306p0.r(this.f97400g, n10);
        return new C14308q0(n10);
    }

    @Override
    public jk.f q(jk.f fVar, jk.f fVar2) {
        return r(fVar, fVar2);
    }

    @Override
    public jk.f r(jk.f fVar, jk.f fVar2) {
        long[] jArr = this.f97400g;
        long[] jArr2 = ((C14308q0) fVar).f97400g;
        long[] jArr3 = ((C14308q0) fVar2).f97400g;
        long[] p10 = AbstractC15323i.p();
        C14306p0.s(jArr, p10);
        C14306p0.n(jArr2, jArr3, p10);
        long[] n10 = AbstractC15323i.n();
        C14306p0.o(p10, n10);
        return new C14308q0(n10);
    }

    @Override
    public jk.f s(int i10) {
        if (i10 < 1) {
            return this;
        }
        long[] n10 = AbstractC15323i.n();
        C14306p0.t(this.f97400g, i10, n10);
        return new C14308q0(n10);
    }

    @Override
    public jk.f t(jk.f fVar) {
        return a(fVar);
    }

    @Override
    public boolean u() {
        return (this.f97400g[0] & 1) != 0;
    }

    @Override
    public BigInteger v() {
        return AbstractC15323i.Z(this.f97400g);
    }

    @Override
    public jk.f w() {
        long[] n10 = AbstractC15323i.n();
        C14306p0.f(this.f97400g, n10);
        return new C14308q0(n10);
    }

    @Override
    public boolean x() {
        return true;
    }

    @Override
    public int y() {
        return C14306p0.u(this.f97400g);
    }

    public int z() {
        return 15;
    }

    public C14308q0(BigInteger bigInteger) {
        if (bigInteger == null || bigInteger.signum() < 0 || bigInteger.bitLength() > 193) {
            throw new IllegalArgumentException("x value invalid for SecT193FieldElement");
        }
        this.f97400g = C14306p0.e(bigInteger);
    }

    public C14308q0(long[] jArr) {
        this.f97400g = jArr;
    }
}
