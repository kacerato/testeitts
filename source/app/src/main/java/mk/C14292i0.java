package mk;

import java.math.BigInteger;
import jk.f;
import sk.AbstractC15321g;

public class C14292i0 extends f.a {

    public long[] f97349g;

    public C14292i0() {
        this.f97349g = AbstractC15321g.k();
    }

    public int A() {
        return 6;
    }

    public int B() {
        return 7;
    }

    public int C() {
        return 163;
    }

    public int D() {
        return 3;
    }

    @Override
    public jk.f a(jk.f fVar) {
        long[] k10 = AbstractC15321g.k();
        C14290h0.a(this.f97349g, ((C14292i0) fVar).f97349g, k10);
        return new C14292i0(k10);
    }

    @Override
    public jk.f b() {
        long[] k10 = AbstractC15321g.k();
        C14290h0.c(this.f97349g, k10);
        return new C14292i0(k10);
    }

    @Override
    public jk.f d(jk.f fVar) {
        return k(fVar.h());
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof C14292i0) {
            return AbstractC15321g.p(this.f97349g, ((C14292i0) obj).f97349g);
        }
        return false;
    }

    @Override
    public String f() {
        return "SecT163Field";
    }

    @Override
    public int g() {
        return 163;
    }

    @Override
    public jk.f h() {
        long[] k10 = AbstractC15321g.k();
        C14290h0.k(this.f97349g, k10);
        return new C14292i0(k10);
    }

    public int hashCode() {
        return org.bouncycastle.util.a.z0(this.f97349g, 0, 3) ^ 163763;
    }

    @Override
    public boolean i() {
        return AbstractC15321g.w(this.f97349g);
    }

    @Override
    public boolean j() {
        return AbstractC15321g.y(this.f97349g);
    }

    @Override
    public jk.f k(jk.f fVar) {
        long[] k10 = AbstractC15321g.k();
        C14290h0.l(this.f97349g, ((C14292i0) fVar).f97349g, k10);
        return new C14292i0(k10);
    }

    @Override
    public jk.f l(jk.f fVar, jk.f fVar2, jk.f fVar3) {
        return m(fVar, fVar2, fVar3);
    }

    @Override
    public jk.f m(jk.f fVar, jk.f fVar2, jk.f fVar3) {
        long[] jArr = this.f97349g;
        long[] jArr2 = ((C14292i0) fVar).f97349g;
        long[] jArr3 = ((C14292i0) fVar2).f97349g;
        long[] jArr4 = ((C14292i0) fVar3).f97349g;
        long[] m10 = AbstractC15321g.m();
        C14290h0.m(jArr, jArr2, m10);
        C14290h0.m(jArr3, jArr4, m10);
        long[] k10 = AbstractC15321g.k();
        C14290h0.n(m10, k10);
        return new C14292i0(k10);
    }

    @Override
    public jk.f n() {
        return this;
    }

    @Override
    public jk.f o() {
        long[] k10 = AbstractC15321g.k();
        C14290h0.p(this.f97349g, k10);
        return new C14292i0(k10);
    }

    @Override
    public jk.f p() {
        long[] k10 = AbstractC15321g.k();
        C14290h0.q(this.f97349g, k10);
        return new C14292i0(k10);
    }

    @Override
    public jk.f q(jk.f fVar, jk.f fVar2) {
        return r(fVar, fVar2);
    }

    @Override
    public jk.f r(jk.f fVar, jk.f fVar2) {
        long[] jArr = this.f97349g;
        long[] jArr2 = ((C14292i0) fVar).f97349g;
        long[] jArr3 = ((C14292i0) fVar2).f97349g;
        long[] m10 = AbstractC15321g.m();
        C14290h0.r(jArr, m10);
        C14290h0.m(jArr2, jArr3, m10);
        long[] k10 = AbstractC15321g.k();
        C14290h0.n(m10, k10);
        return new C14292i0(k10);
    }

    @Override
    public jk.f s(int i10) {
        if (i10 < 1) {
            return this;
        }
        long[] k10 = AbstractC15321g.k();
        C14290h0.s(this.f97349g, i10, k10);
        return new C14292i0(k10);
    }

    @Override
    public jk.f t(jk.f fVar) {
        return a(fVar);
    }

    @Override
    public boolean u() {
        return (this.f97349g[0] & 1) != 0;
    }

    @Override
    public BigInteger v() {
        return AbstractC15321g.R(this.f97349g);
    }

    @Override
    public jk.f w() {
        long[] k10 = AbstractC15321g.k();
        C14290h0.f(this.f97349g, k10);
        return new C14292i0(k10);
    }

    @Override
    public boolean x() {
        return true;
    }

    @Override
    public int y() {
        return C14290h0.t(this.f97349g);
    }

    public int z() {
        return 3;
    }

    public C14292i0(BigInteger bigInteger) {
        if (bigInteger == null || bigInteger.signum() < 0 || bigInteger.bitLength() > 163) {
            throw new IllegalArgumentException("x value invalid for SecT163FieldElement");
        }
        this.f97349g = C14290h0.e(bigInteger);
    }

    public C14292i0(long[] jArr) {
        this.f97349g = jArr;
    }
}
