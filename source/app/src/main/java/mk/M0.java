package mk;

import java.math.BigInteger;
import java.net.HttpURLConnection;
import jk.f;
import sk.AbstractC15326l;
import sk.AbstractC15329o;

public class M0 extends f.a {

    public long[] f97228g;

    public M0() {
        this.f97228g = AbstractC15326l.c();
    }

    public int A() {
        return 0;
    }

    public int B() {
        return 0;
    }

    public int C() {
        return HttpURLConnection.HTTP_CONFLICT;
    }

    public int D() {
        return 2;
    }

    @Override
    public jk.f a(jk.f fVar) {
        long[] c10 = AbstractC15326l.c();
        L0.a(this.f97228g, ((M0) fVar).f97228g, c10);
        return new M0(c10);
    }

    @Override
    public jk.f b() {
        long[] c10 = AbstractC15326l.c();
        L0.c(this.f97228g, c10);
        return new M0(c10);
    }

    @Override
    public jk.f d(jk.f fVar) {
        return k(fVar.h());
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof M0) {
            return AbstractC15326l.e(this.f97228g, ((M0) obj).f97228g);
        }
        return false;
    }

    @Override
    public String f() {
        return "SecT409Field";
    }

    @Override
    public int g() {
        return HttpURLConnection.HTTP_CONFLICT;
    }

    @Override
    public jk.f h() {
        long[] c10 = AbstractC15326l.c();
        L0.l(this.f97228g, c10);
        return new M0(c10);
    }

    public int hashCode() {
        return org.bouncycastle.util.a.z0(this.f97228g, 0, 7) ^ 4090087;
    }

    @Override
    public boolean i() {
        return AbstractC15326l.g(this.f97228g);
    }

    @Override
    public boolean j() {
        return AbstractC15326l.h(this.f97228g);
    }

    @Override
    public jk.f k(jk.f fVar) {
        long[] c10 = AbstractC15326l.c();
        L0.m(this.f97228g, ((M0) fVar).f97228g, c10);
        return new M0(c10);
    }

    @Override
    public jk.f l(jk.f fVar, jk.f fVar2, jk.f fVar3) {
        return m(fVar, fVar2, fVar3);
    }

    @Override
    public jk.f m(jk.f fVar, jk.f fVar2, jk.f fVar3) {
        long[] jArr = this.f97228g;
        long[] jArr2 = ((M0) fVar).f97228g;
        long[] jArr3 = ((M0) fVar2).f97228g;
        long[] jArr4 = ((M0) fVar3).f97228g;
        long[] F10 = AbstractC15329o.F(13);
        L0.n(jArr, jArr2, F10);
        L0.n(jArr3, jArr4, F10);
        long[] c10 = AbstractC15326l.c();
        L0.o(F10, c10);
        return new M0(c10);
    }

    @Override
    public jk.f n() {
        return this;
    }

    @Override
    public jk.f o() {
        long[] c10 = AbstractC15326l.c();
        L0.q(this.f97228g, c10);
        return new M0(c10);
    }

    @Override
    public jk.f p() {
        long[] c10 = AbstractC15326l.c();
        L0.r(this.f97228g, c10);
        return new M0(c10);
    }

    @Override
    public jk.f q(jk.f fVar, jk.f fVar2) {
        return r(fVar, fVar2);
    }

    @Override
    public jk.f r(jk.f fVar, jk.f fVar2) {
        long[] jArr = this.f97228g;
        long[] jArr2 = ((M0) fVar).f97228g;
        long[] jArr3 = ((M0) fVar2).f97228g;
        long[] F10 = AbstractC15329o.F(13);
        L0.s(jArr, F10);
        L0.n(jArr2, jArr3, F10);
        long[] c10 = AbstractC15326l.c();
        L0.o(F10, c10);
        return new M0(c10);
    }

    @Override
    public jk.f s(int i10) {
        if (i10 < 1) {
            return this;
        }
        long[] c10 = AbstractC15326l.c();
        L0.t(this.f97228g, i10, c10);
        return new M0(c10);
    }

    @Override
    public jk.f t(jk.f fVar) {
        return a(fVar);
    }

    @Override
    public boolean u() {
        return (this.f97228g[0] & 1) != 0;
    }

    @Override
    public BigInteger v() {
        return AbstractC15326l.k(this.f97228g);
    }

    @Override
    public jk.f w() {
        long[] c10 = AbstractC15326l.c();
        L0.f(this.f97228g, c10);
        return new M0(c10);
    }

    @Override
    public boolean x() {
        return true;
    }

    @Override
    public int y() {
        return L0.u(this.f97228g);
    }

    public int z() {
        return 87;
    }

    public M0(BigInteger bigInteger) {
        if (bigInteger == null || bigInteger.signum() < 0 || bigInteger.bitLength() > 409) {
            throw new IllegalArgumentException("x value invalid for SecT409FieldElement");
        }
        this.f97228g = L0.e(bigInteger);
    }

    public M0(long[] jArr) {
        this.f97228g = jArr;
    }
}
