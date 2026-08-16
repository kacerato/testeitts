package mk;

import android.view.KeyEvent;
import java.math.BigInteger;
import jk.f;
import sk.AbstractC15324j;
import sk.AbstractC15329o;

public class G0 extends f.a {

    public long[] f97192g;

    public G0() {
        this.f97192g = AbstractC15324j.c();
    }

    public int A() {
        return 7;
    }

    public int B() {
        return 12;
    }

    public int C() {
        return KeyEvent.KEYCODE_SYSTEM_NAVIGATION_RIGHT;
    }

    public int D() {
        return 3;
    }

    @Override
    public jk.f a(jk.f fVar) {
        long[] c10 = AbstractC15324j.c();
        F0.a(this.f97192g, ((G0) fVar).f97192g, c10);
        return new G0(c10);
    }

    @Override
    public jk.f b() {
        long[] c10 = AbstractC15324j.c();
        F0.c(this.f97192g, c10);
        return new G0(c10);
    }

    @Override
    public jk.f d(jk.f fVar) {
        return k(fVar.h());
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof G0) {
            return AbstractC15324j.e(this.f97192g, ((G0) obj).f97192g);
        }
        return false;
    }

    @Override
    public String f() {
        return "SecT283Field";
    }

    @Override
    public int g() {
        return KeyEvent.KEYCODE_SYSTEM_NAVIGATION_RIGHT;
    }

    @Override
    public jk.f h() {
        long[] c10 = AbstractC15324j.c();
        F0.l(this.f97192g, c10);
        return new G0(c10);
    }

    public int hashCode() {
        return org.bouncycastle.util.a.z0(this.f97192g, 0, 5) ^ 2831275;
    }

    @Override
    public boolean i() {
        return AbstractC15324j.g(this.f97192g);
    }

    @Override
    public boolean j() {
        return AbstractC15324j.h(this.f97192g);
    }

    @Override
    public jk.f k(jk.f fVar) {
        long[] c10 = AbstractC15324j.c();
        F0.m(this.f97192g, ((G0) fVar).f97192g, c10);
        return new G0(c10);
    }

    @Override
    public jk.f l(jk.f fVar, jk.f fVar2, jk.f fVar3) {
        return m(fVar, fVar2, fVar3);
    }

    @Override
    public jk.f m(jk.f fVar, jk.f fVar2, jk.f fVar3) {
        long[] jArr = this.f97192g;
        long[] jArr2 = ((G0) fVar).f97192g;
        long[] jArr3 = ((G0) fVar2).f97192g;
        long[] jArr4 = ((G0) fVar3).f97192g;
        long[] F10 = AbstractC15329o.F(9);
        F0.n(jArr, jArr2, F10);
        F0.n(jArr3, jArr4, F10);
        long[] c10 = AbstractC15324j.c();
        F0.o(F10, c10);
        return new G0(c10);
    }

    @Override
    public jk.f n() {
        return this;
    }

    @Override
    public jk.f o() {
        long[] c10 = AbstractC15324j.c();
        F0.q(this.f97192g, c10);
        return new G0(c10);
    }

    @Override
    public jk.f p() {
        long[] c10 = AbstractC15324j.c();
        F0.r(this.f97192g, c10);
        return new G0(c10);
    }

    @Override
    public jk.f q(jk.f fVar, jk.f fVar2) {
        return r(fVar, fVar2);
    }

    @Override
    public jk.f r(jk.f fVar, jk.f fVar2) {
        long[] jArr = this.f97192g;
        long[] jArr2 = ((G0) fVar).f97192g;
        long[] jArr3 = ((G0) fVar2).f97192g;
        long[] F10 = AbstractC15329o.F(9);
        F0.s(jArr, F10);
        F0.n(jArr2, jArr3, F10);
        long[] c10 = AbstractC15324j.c();
        F0.o(F10, c10);
        return new G0(c10);
    }

    @Override
    public jk.f s(int i10) {
        if (i10 < 1) {
            return this;
        }
        long[] c10 = AbstractC15324j.c();
        F0.t(this.f97192g, i10, c10);
        return new G0(c10);
    }

    @Override
    public jk.f t(jk.f fVar) {
        return a(fVar);
    }

    @Override
    public boolean u() {
        return (this.f97192g[0] & 1) != 0;
    }

    @Override
    public BigInteger v() {
        return AbstractC15324j.i(this.f97192g);
    }

    @Override
    public jk.f w() {
        long[] c10 = AbstractC15324j.c();
        F0.f(this.f97192g, c10);
        return new G0(c10);
    }

    @Override
    public boolean x() {
        return true;
    }

    @Override
    public int y() {
        return F0.u(this.f97192g);
    }

    public int z() {
        return 5;
    }

    public G0(BigInteger bigInteger) {
        if (bigInteger == null || bigInteger.signum() < 0 || bigInteger.bitLength() > 283) {
            throw new IllegalArgumentException("x value invalid for SecT283FieldElement");
        }
        this.f97192g = F0.e(bigInteger);
    }

    public G0(long[] jArr) {
        this.f97192g = jArr;
    }
}
