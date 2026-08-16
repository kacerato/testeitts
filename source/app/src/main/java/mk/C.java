package mk;

import java.math.BigInteger;
import jk.f;
import sk.AbstractC15317c;
import sk.AbstractC15322h;
import sk.AbstractC15329o;

public class C extends f.b {

    public static final BigInteger f97165h = new BigInteger(1, em.h.d("FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000000000000000000001"));

    public int[] f97166g;

    public C() {
        this.f97166g = AbstractC15322h.k();
    }

    public static boolean A(int[] iArr, int[] iArr2, int[] iArr3) {
        int[] k10 = AbstractC15322h.k();
        AbstractC15322h.j(iArr2, k10);
        int[] k11 = AbstractC15322h.k();
        k11[0] = 1;
        int[] k12 = AbstractC15322h.k();
        x(iArr, k10, k11, k12, iArr3);
        int[] k13 = AbstractC15322h.k();
        int[] k14 = AbstractC15322h.k();
        for (int i10 = 1; i10 < 96; i10++) {
            AbstractC15322h.j(k10, k13);
            AbstractC15322h.j(k11, k14);
            y(k10, k11, k12, iArr3);
            if (AbstractC15322h.t(k10)) {
                B.g(k14, iArr3);
                B.i(iArr3, k13, iArr3);
                return true;
            }
        }
        return false;
    }

    public static void w(int[] iArr, int[] iArr2, int[] iArr3, int[] iArr4, int[] iArr5, int[] iArr6, int[] iArr7) {
        B.i(iArr5, iArr3, iArr7);
        B.i(iArr7, iArr, iArr7);
        B.i(iArr4, iArr2, iArr6);
        B.a(iArr6, iArr7, iArr6);
        B.i(iArr4, iArr3, iArr7);
        AbstractC15322h.j(iArr6, iArr4);
        B.i(iArr5, iArr2, iArr5);
        B.a(iArr5, iArr7, iArr5);
        B.p(iArr5, iArr6);
        B.i(iArr6, iArr, iArr6);
    }

    public static void x(int[] iArr, int[] iArr2, int[] iArr3, int[] iArr4, int[] iArr5) {
        AbstractC15322h.j(iArr, iArr4);
        int[] k10 = AbstractC15322h.k();
        int[] k11 = AbstractC15322h.k();
        for (int i10 = 0; i10 < 7; i10++) {
            AbstractC15322h.j(iArr2, k10);
            AbstractC15322h.j(iArr3, k11);
            int i11 = 1 << i10;
            while (true) {
                i11--;
                if (i11 >= 0) {
                    y(iArr2, iArr3, iArr4, iArr5);
                }
            }
            w(iArr, k10, k11, iArr2, iArr3, iArr4, iArr5);
        }
    }

    public static void y(int[] iArr, int[] iArr2, int[] iArr3, int[] iArr4) {
        B.i(iArr2, iArr, iArr2);
        B.u(iArr2, iArr2);
        B.p(iArr, iArr4);
        B.a(iArr3, iArr4, iArr);
        B.i(iArr3, iArr4, iArr3);
        B.o(AbstractC15329o.H0(7, iArr3, 2, 0), iArr3);
    }

    public static boolean z(int[] iArr) {
        int[] k10 = AbstractC15322h.k();
        int[] k11 = AbstractC15322h.k();
        AbstractC15322h.j(iArr, k10);
        for (int i10 = 0; i10 < 7; i10++) {
            AbstractC15322h.j(k10, k11);
            B.q(k10, 1 << i10, k10);
            B.i(k10, k11, k10);
        }
        B.q(k10, 95, k10);
        return AbstractC15322h.s(k10);
    }

    @Override
    public jk.f a(jk.f fVar) {
        int[] k10 = AbstractC15322h.k();
        B.a(this.f97166g, ((C) fVar).f97166g, k10);
        return new C(k10);
    }

    @Override
    public jk.f b() {
        int[] k10 = AbstractC15322h.k();
        B.c(this.f97166g, k10);
        return new C(k10);
    }

    @Override
    public jk.f d(jk.f fVar) {
        int[] k10 = AbstractC15322h.k();
        B.g(((C) fVar).f97166g, k10);
        B.i(k10, this.f97166g, k10);
        return new C(k10);
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof C) {
            return AbstractC15322h.n(this.f97166g, ((C) obj).f97166g);
        }
        return false;
    }

    @Override
    public String f() {
        return "SecP224R1Field";
    }

    @Override
    public int g() {
        return f97165h.bitLength();
    }

    @Override
    public jk.f h() {
        int[] k10 = AbstractC15322h.k();
        B.g(this.f97166g, k10);
        return new C(k10);
    }

    public int hashCode() {
        return f97165h.hashCode() ^ org.bouncycastle.util.a.x0(this.f97166g, 0, 7);
    }

    @Override
    public boolean i() {
        return AbstractC15322h.s(this.f97166g);
    }

    @Override
    public boolean j() {
        return AbstractC15322h.t(this.f97166g);
    }

    @Override
    public jk.f k(jk.f fVar) {
        int[] k10 = AbstractC15322h.k();
        B.i(this.f97166g, ((C) fVar).f97166g, k10);
        return new C(k10);
    }

    @Override
    public jk.f n() {
        int[] k10 = AbstractC15322h.k();
        B.k(this.f97166g, k10);
        return new C(k10);
    }

    @Override
    public jk.f o() {
        int[] iArr = this.f97166g;
        if (AbstractC15322h.t(iArr) || AbstractC15322h.s(iArr)) {
            return this;
        }
        int[] k10 = AbstractC15322h.k();
        B.k(iArr, k10);
        int[] t10 = AbstractC15317c.t(B.f97158b);
        int[] k11 = AbstractC15322h.k();
        if (!z(iArr)) {
            return null;
        }
        while (!A(k10, t10, k11)) {
            B.c(t10, t10);
        }
        B.p(k11, t10);
        if (AbstractC15322h.n(iArr, t10)) {
            return new C(k11);
        }
        return null;
    }

    @Override
    public jk.f p() {
        int[] k10 = AbstractC15322h.k();
        B.p(this.f97166g, k10);
        return new C(k10);
    }

    @Override
    public jk.f t(jk.f fVar) {
        int[] k10 = AbstractC15322h.k();
        B.s(this.f97166g, ((C) fVar).f97166g, k10);
        return new C(k10);
    }

    @Override
    public boolean u() {
        return AbstractC15322h.p(this.f97166g, 0) == 1;
    }

    @Override
    public BigInteger v() {
        return AbstractC15322h.N(this.f97166g);
    }

    public C(BigInteger bigInteger) {
        if (bigInteger == null || bigInteger.signum() < 0 || bigInteger.compareTo(f97165h) >= 0) {
            throw new IllegalArgumentException("x value invalid for SecP224R1FieldElement");
        }
        this.f97166g = B.e(bigInteger);
    }

    public C(int[] iArr) {
        this.f97166g = iArr;
    }
}
