package mk;

import java.math.BigInteger;
import jk.f;
import sk.AbstractC15319e;

public class W extends f.a {

    public long[] f97279g;

    public W() {
        this.f97279g = AbstractC15319e.k();
    }

    public int A() {
        return 0;
    }

    public int B() {
        return 0;
    }

    public int C() {
        return 113;
    }

    public int D() {
        return 2;
    }

    @Override
    public jk.f a(jk.f fVar) {
        long[] k10 = AbstractC15319e.k();
        V.a(this.f97279g, ((W) fVar).f97279g, k10);
        return new W(k10);
    }

    @Override
    public jk.f b() {
        long[] k10 = AbstractC15319e.k();
        V.c(this.f97279g, k10);
        return new W(k10);
    }

    @Override
    public jk.f d(jk.f fVar) {
        return k(fVar.h());
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof W) {
            return AbstractC15319e.p(this.f97279g, ((W) obj).f97279g);
        }
        return false;
    }

    @Override
    public String f() {
        return "SecT113Field";
    }

    @Override
    public int g() {
        return 113;
    }

    @Override
    public jk.f h() {
        long[] k10 = AbstractC15319e.k();
        V.j(this.f97279g, k10);
        return new W(k10);
    }

    public int hashCode() {
        return org.bouncycastle.util.a.z0(this.f97279g, 0, 2) ^ 113009;
    }

    @Override
    public boolean i() {
        return AbstractC15319e.w(this.f97279g);
    }

    @Override
    public boolean j() {
        return AbstractC15319e.y(this.f97279g);
    }

    @Override
    public jk.f k(jk.f fVar) {
        long[] k10 = AbstractC15319e.k();
        V.k(this.f97279g, ((W) fVar).f97279g, k10);
        return new W(k10);
    }

    @Override
    public jk.f l(jk.f fVar, jk.f fVar2, jk.f fVar3) {
        return m(fVar, fVar2, fVar3);
    }

    @Override
    public jk.f m(jk.f fVar, jk.f fVar2, jk.f fVar3) {
        long[] jArr = this.f97279g;
        long[] jArr2 = ((W) fVar).f97279g;
        long[] jArr3 = ((W) fVar2).f97279g;
        long[] jArr4 = ((W) fVar3).f97279g;
        long[] m10 = AbstractC15319e.m();
        V.l(jArr, jArr2, m10);
        V.l(jArr3, jArr4, m10);
        long[] k10 = AbstractC15319e.k();
        V.m(m10, k10);
        return new W(k10);
    }

    @Override
    public jk.f n() {
        return this;
    }

    @Override
    public jk.f o() {
        long[] k10 = AbstractC15319e.k();
        V.o(this.f97279g, k10);
        return new W(k10);
    }

    @Override
    public jk.f p() {
        long[] k10 = AbstractC15319e.k();
        V.p(this.f97279g, k10);
        return new W(k10);
    }

    @Override
    public jk.f q(jk.f fVar, jk.f fVar2) {
        return r(fVar, fVar2);
    }

    @Override
    public jk.f r(jk.f fVar, jk.f fVar2) {
        long[] jArr = this.f97279g;
        long[] jArr2 = ((W) fVar).f97279g;
        long[] jArr3 = ((W) fVar2).f97279g;
        long[] m10 = AbstractC15319e.m();
        V.q(jArr, m10);
        V.l(jArr2, jArr3, m10);
        long[] k10 = AbstractC15319e.k();
        V.m(m10, k10);
        return new W(k10);
    }

    @Override
    public jk.f s(int i10) {
        if (i10 < 1) {
            return this;
        }
        long[] k10 = AbstractC15319e.k();
        V.r(this.f97279g, i10, k10);
        return new W(k10);
    }

    @Override
    public jk.f t(jk.f fVar) {
        return a(fVar);
    }

    @Override
    public boolean u() {
        return (this.f97279g[0] & 1) != 0;
    }

    @Override
    public BigInteger v() {
        return AbstractC15319e.S(this.f97279g);
    }

    @Override
    public jk.f w() {
        long[] k10 = AbstractC15319e.k();
        V.f(this.f97279g, k10);
        return new W(k10);
    }

    @Override
    public boolean x() {
        return true;
    }

    @Override
    public int y() {
        return V.s(this.f97279g);
    }

    public int z() {
        return 9;
    }

    public W(BigInteger bigInteger) {
        if (bigInteger == null || bigInteger.signum() < 0 || bigInteger.bitLength() > 113) {
            throw new IllegalArgumentException("x value invalid for SecT113FieldElement");
        }
        this.f97279g = V.e(bigInteger);
    }

    public W(long[] jArr) {
        this.f97279g = jArr;
    }
}
