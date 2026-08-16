package mk;

import java.math.BigInteger;
import jk.f;
import sk.AbstractC15328n;

public class S0 extends f.a {

    public long[] f97260g;

    public S0() {
        this.f97260g = AbstractC15328n.c();
    }

    public int A() {
        return 5;
    }

    public int B() {
        return 10;
    }

    public int C() {
        return 571;
    }

    public int D() {
        return 3;
    }

    @Override
    public jk.f a(jk.f fVar) {
        long[] c10 = AbstractC15328n.c();
        R0.b(this.f97260g, ((S0) fVar).f97260g, c10);
        return new S0(c10);
    }

    @Override
    public jk.f b() {
        long[] c10 = AbstractC15328n.c();
        R0.f(this.f97260g, c10);
        return new S0(c10);
    }

    @Override
    public jk.f d(jk.f fVar) {
        return k(fVar.h());
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof S0) {
            return AbstractC15328n.e(this.f97260g, ((S0) obj).f97260g);
        }
        return false;
    }

    @Override
    public String f() {
        return "SecT571Field";
    }

    @Override
    public int g() {
        return 571;
    }

    @Override
    public jk.f h() {
        long[] c10 = AbstractC15328n.c();
        R0.n(this.f97260g, c10);
        return new S0(c10);
    }

    public int hashCode() {
        return org.bouncycastle.util.a.z0(this.f97260g, 0, 9) ^ 5711052;
    }

    @Override
    public boolean i() {
        return AbstractC15328n.g(this.f97260g);
    }

    @Override
    public boolean j() {
        return AbstractC15328n.h(this.f97260g);
    }

    @Override
    public jk.f k(jk.f fVar) {
        long[] c10 = AbstractC15328n.c();
        R0.o(this.f97260g, ((S0) fVar).f97260g, c10);
        return new S0(c10);
    }

    @Override
    public jk.f l(jk.f fVar, jk.f fVar2, jk.f fVar3) {
        return m(fVar, fVar2, fVar3);
    }

    @Override
    public jk.f m(jk.f fVar, jk.f fVar2, jk.f fVar3) {
        long[] jArr = this.f97260g;
        long[] jArr2 = ((S0) fVar).f97260g;
        long[] jArr3 = ((S0) fVar2).f97260g;
        long[] jArr4 = ((S0) fVar3).f97260g;
        long[] d10 = AbstractC15328n.d();
        R0.p(jArr, jArr2, d10);
        R0.p(jArr3, jArr4, d10);
        long[] c10 = AbstractC15328n.c();
        R0.t(d10, c10);
        return new S0(c10);
    }

    @Override
    public jk.f n() {
        return this;
    }

    @Override
    public jk.f o() {
        long[] c10 = AbstractC15328n.c();
        R0.v(this.f97260g, c10);
        return new S0(c10);
    }

    @Override
    public jk.f p() {
        long[] c10 = AbstractC15328n.c();
        R0.w(this.f97260g, c10);
        return new S0(c10);
    }

    @Override
    public jk.f q(jk.f fVar, jk.f fVar2) {
        return r(fVar, fVar2);
    }

    @Override
    public jk.f r(jk.f fVar, jk.f fVar2) {
        long[] jArr = this.f97260g;
        long[] jArr2 = ((S0) fVar).f97260g;
        long[] jArr3 = ((S0) fVar2).f97260g;
        long[] d10 = AbstractC15328n.d();
        R0.x(jArr, d10);
        R0.p(jArr2, jArr3, d10);
        long[] c10 = AbstractC15328n.c();
        R0.t(d10, c10);
        return new S0(c10);
    }

    @Override
    public jk.f s(int i10) {
        if (i10 < 1) {
            return this;
        }
        long[] c10 = AbstractC15328n.c();
        R0.y(this.f97260g, i10, c10);
        return new S0(c10);
    }

    @Override
    public jk.f t(jk.f fVar) {
        return a(fVar);
    }

    @Override
    public boolean u() {
        return (this.f97260g[0] & 1) != 0;
    }

    @Override
    public BigInteger v() {
        return AbstractC15328n.i(this.f97260g);
    }

    @Override
    public jk.f w() {
        long[] c10 = AbstractC15328n.c();
        R0.i(this.f97260g, c10);
        return new S0(c10);
    }

    @Override
    public boolean x() {
        return true;
    }

    @Override
    public int y() {
        return R0.z(this.f97260g);
    }

    public int z() {
        return 2;
    }

    public S0(BigInteger bigInteger) {
        if (bigInteger == null || bigInteger.signum() < 0 || bigInteger.bitLength() > 571) {
            throw new IllegalArgumentException("x value invalid for SecT571FieldElement");
        }
        this.f97260g = R0.h(bigInteger);
    }

    public S0(long[] jArr) {
        this.f97260g = jArr;
    }
}
