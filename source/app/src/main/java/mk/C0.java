package mk;

import java.math.BigInteger;
import jk.f;
import sk.AbstractC15323i;

public class C0 extends f.a {

    public long[] f97167g;

    public C0() {
        this.f97167g = AbstractC15323i.n();
    }

    public int A() {
        return 0;
    }

    public int B() {
        return 0;
    }

    public int C() {
        return 239;
    }

    public int D() {
        return 2;
    }

    @Override
    public jk.f a(jk.f fVar) {
        long[] n10 = AbstractC15323i.n();
        B0.a(this.f97167g, ((C0) fVar).f97167g, n10);
        return new C0(n10);
    }

    @Override
    public jk.f b() {
        long[] n10 = AbstractC15323i.n();
        B0.c(this.f97167g, n10);
        return new C0(n10);
    }

    @Override
    public jk.f d(jk.f fVar) {
        return k(fVar.h());
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof C0) {
            return AbstractC15323i.s(this.f97167g, ((C0) obj).f97167g);
        }
        return false;
    }

    @Override
    public String f() {
        return "SecT239Field";
    }

    @Override
    public int g() {
        return 239;
    }

    @Override
    public jk.f h() {
        long[] n10 = AbstractC15323i.n();
        B0.l(this.f97167g, n10);
        return new C0(n10);
    }

    public int hashCode() {
        return org.bouncycastle.util.a.z0(this.f97167g, 0, 4) ^ 23900158;
    }

    @Override
    public boolean i() {
        return AbstractC15323i.z(this.f97167g);
    }

    @Override
    public boolean j() {
        return AbstractC15323i.B(this.f97167g);
    }

    @Override
    public jk.f k(jk.f fVar) {
        long[] n10 = AbstractC15323i.n();
        B0.m(this.f97167g, ((C0) fVar).f97167g, n10);
        return new C0(n10);
    }

    @Override
    public jk.f l(jk.f fVar, jk.f fVar2, jk.f fVar3) {
        return m(fVar, fVar2, fVar3);
    }

    @Override
    public jk.f m(jk.f fVar, jk.f fVar2, jk.f fVar3) {
        long[] jArr = this.f97167g;
        long[] jArr2 = ((C0) fVar).f97167g;
        long[] jArr3 = ((C0) fVar2).f97167g;
        long[] jArr4 = ((C0) fVar3).f97167g;
        long[] p10 = AbstractC15323i.p();
        B0.n(jArr, jArr2, p10);
        B0.n(jArr3, jArr4, p10);
        long[] n10 = AbstractC15323i.n();
        B0.o(p10, n10);
        return new C0(n10);
    }

    @Override
    public jk.f n() {
        return this;
    }

    @Override
    public jk.f o() {
        long[] n10 = AbstractC15323i.n();
        B0.q(this.f97167g, n10);
        return new C0(n10);
    }

    @Override
    public jk.f p() {
        long[] n10 = AbstractC15323i.n();
        B0.r(this.f97167g, n10);
        return new C0(n10);
    }

    @Override
    public jk.f q(jk.f fVar, jk.f fVar2) {
        return r(fVar, fVar2);
    }

    @Override
    public jk.f r(jk.f fVar, jk.f fVar2) {
        long[] jArr = this.f97167g;
        long[] jArr2 = ((C0) fVar).f97167g;
        long[] jArr3 = ((C0) fVar2).f97167g;
        long[] p10 = AbstractC15323i.p();
        B0.s(jArr, p10);
        B0.n(jArr2, jArr3, p10);
        long[] n10 = AbstractC15323i.n();
        B0.o(p10, n10);
        return new C0(n10);
    }

    @Override
    public jk.f s(int i10) {
        if (i10 < 1) {
            return this;
        }
        long[] n10 = AbstractC15323i.n();
        B0.t(this.f97167g, i10, n10);
        return new C0(n10);
    }

    @Override
    public jk.f t(jk.f fVar) {
        return a(fVar);
    }

    @Override
    public boolean u() {
        return (this.f97167g[0] & 1) != 0;
    }

    @Override
    public BigInteger v() {
        return AbstractC15323i.Z(this.f97167g);
    }

    @Override
    public jk.f w() {
        long[] n10 = AbstractC15323i.n();
        B0.f(this.f97167g, n10);
        return new C0(n10);
    }

    @Override
    public boolean x() {
        return true;
    }

    @Override
    public int y() {
        return B0.u(this.f97167g);
    }

    public int z() {
        return 158;
    }

    public C0(BigInteger bigInteger) {
        if (bigInteger == null || bigInteger.signum() < 0 || bigInteger.bitLength() > 239) {
            throw new IllegalArgumentException("x value invalid for SecT239FieldElement");
        }
        this.f97167g = B0.e(bigInteger);
    }

    public C0(long[] jArr) {
        this.f97167g = jArr;
    }
}
