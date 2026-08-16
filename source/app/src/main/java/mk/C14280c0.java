package mk;

import java.math.BigInteger;
import jk.f;
import sk.AbstractC15321g;
import sk.AbstractC15329o;

public class C14280c0 extends f.a {

    public long[] f97310g;

    public C14280c0() {
        this.f97310g = AbstractC15321g.k();
    }

    public int A() {
        return 3;
    }

    public int B() {
        return 8;
    }

    public int C() {
        return 131;
    }

    public int D() {
        return 3;
    }

    @Override
    public jk.f a(jk.f fVar) {
        long[] k10 = AbstractC15321g.k();
        C14278b0.a(this.f97310g, ((C14280c0) fVar).f97310g, k10);
        return new C14280c0(k10);
    }

    @Override
    public jk.f b() {
        long[] k10 = AbstractC15321g.k();
        C14278b0.c(this.f97310g, k10);
        return new C14280c0(k10);
    }

    @Override
    public jk.f d(jk.f fVar) {
        return k(fVar.h());
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof C14280c0) {
            return AbstractC15321g.p(this.f97310g, ((C14280c0) obj).f97310g);
        }
        return false;
    }

    @Override
    public String f() {
        return "SecT131Field";
    }

    @Override
    public int g() {
        return 131;
    }

    @Override
    public jk.f h() {
        long[] k10 = AbstractC15321g.k();
        C14278b0.k(this.f97310g, k10);
        return new C14280c0(k10);
    }

    public int hashCode() {
        return org.bouncycastle.util.a.z0(this.f97310g, 0, 3) ^ 131832;
    }

    @Override
    public boolean i() {
        return AbstractC15321g.w(this.f97310g);
    }

    @Override
    public boolean j() {
        return AbstractC15321g.y(this.f97310g);
    }

    @Override
    public jk.f k(jk.f fVar) {
        long[] k10 = AbstractC15321g.k();
        C14278b0.l(this.f97310g, ((C14280c0) fVar).f97310g, k10);
        return new C14280c0(k10);
    }

    @Override
    public jk.f l(jk.f fVar, jk.f fVar2, jk.f fVar3) {
        return m(fVar, fVar2, fVar3);
    }

    @Override
    public jk.f m(jk.f fVar, jk.f fVar2, jk.f fVar3) {
        long[] jArr = this.f97310g;
        long[] jArr2 = ((C14280c0) fVar).f97310g;
        long[] jArr3 = ((C14280c0) fVar2).f97310g;
        long[] jArr4 = ((C14280c0) fVar3).f97310g;
        long[] F10 = AbstractC15329o.F(5);
        C14278b0.m(jArr, jArr2, F10);
        C14278b0.m(jArr3, jArr4, F10);
        long[] k10 = AbstractC15321g.k();
        C14278b0.n(F10, k10);
        return new C14280c0(k10);
    }

    @Override
    public jk.f n() {
        return this;
    }

    @Override
    public jk.f o() {
        long[] k10 = AbstractC15321g.k();
        C14278b0.p(this.f97310g, k10);
        return new C14280c0(k10);
    }

    @Override
    public jk.f p() {
        long[] k10 = AbstractC15321g.k();
        C14278b0.q(this.f97310g, k10);
        return new C14280c0(k10);
    }

    @Override
    public jk.f q(jk.f fVar, jk.f fVar2) {
        return r(fVar, fVar2);
    }

    @Override
    public jk.f r(jk.f fVar, jk.f fVar2) {
        long[] jArr = this.f97310g;
        long[] jArr2 = ((C14280c0) fVar).f97310g;
        long[] jArr3 = ((C14280c0) fVar2).f97310g;
        long[] F10 = AbstractC15329o.F(5);
        C14278b0.r(jArr, F10);
        C14278b0.m(jArr2, jArr3, F10);
        long[] k10 = AbstractC15321g.k();
        C14278b0.n(F10, k10);
        return new C14280c0(k10);
    }

    @Override
    public jk.f s(int i10) {
        if (i10 < 1) {
            return this;
        }
        long[] k10 = AbstractC15321g.k();
        C14278b0.s(this.f97310g, i10, k10);
        return new C14280c0(k10);
    }

    @Override
    public jk.f t(jk.f fVar) {
        return a(fVar);
    }

    @Override
    public boolean u() {
        return (this.f97310g[0] & 1) != 0;
    }

    @Override
    public BigInteger v() {
        return AbstractC15321g.R(this.f97310g);
    }

    @Override
    public jk.f w() {
        long[] k10 = AbstractC15321g.k();
        C14278b0.f(this.f97310g, k10);
        return new C14280c0(k10);
    }

    @Override
    public boolean x() {
        return true;
    }

    @Override
    public int y() {
        return C14278b0.t(this.f97310g);
    }

    public int z() {
        return 2;
    }

    public C14280c0(BigInteger bigInteger) {
        if (bigInteger == null || bigInteger.signum() < 0 || bigInteger.bitLength() > 131) {
            throw new IllegalArgumentException("x value invalid for SecT131FieldElement");
        }
        this.f97310g = C14278b0.e(bigInteger);
    }

    public C14280c0(long[] jArr) {
        this.f97310g = jArr;
    }
}
