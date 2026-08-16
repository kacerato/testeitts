package mk;

import java.math.BigInteger;
import jk.f;
import sk.AbstractC15322h;

public class C14321y extends f.b {

    public static final BigInteger f97450h = new BigInteger(1, em.h.d("FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFFFFE56D"));

    public static final int[] f97451i = {868209154, -587542221, 579297866, -1014948952, -1470801668, 514782679, -1897982644};

    public int[] f97452g;

    public C14321y() {
        this.f97452g = AbstractC15322h.k();
    }

    @Override
    public jk.f a(jk.f fVar) {
        int[] k10 = AbstractC15322h.k();
        C14320x.a(this.f97452g, ((C14321y) fVar).f97452g, k10);
        return new C14321y(k10);
    }

    @Override
    public jk.f b() {
        int[] k10 = AbstractC15322h.k();
        C14320x.c(this.f97452g, k10);
        return new C14321y(k10);
    }

    @Override
    public jk.f d(jk.f fVar) {
        int[] k10 = AbstractC15322h.k();
        C14320x.f(((C14321y) fVar).f97452g, k10);
        C14320x.h(k10, this.f97452g, k10);
        return new C14321y(k10);
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof C14321y) {
            return AbstractC15322h.n(this.f97452g, ((C14321y) obj).f97452g);
        }
        return false;
    }

    @Override
    public String f() {
        return "SecP224K1Field";
    }

    @Override
    public int g() {
        return f97450h.bitLength();
    }

    @Override
    public jk.f h() {
        int[] k10 = AbstractC15322h.k();
        C14320x.f(this.f97452g, k10);
        return new C14321y(k10);
    }

    public int hashCode() {
        return f97450h.hashCode() ^ org.bouncycastle.util.a.x0(this.f97452g, 0, 7);
    }

    @Override
    public boolean i() {
        return AbstractC15322h.s(this.f97452g);
    }

    @Override
    public boolean j() {
        return AbstractC15322h.t(this.f97452g);
    }

    @Override
    public jk.f k(jk.f fVar) {
        int[] k10 = AbstractC15322h.k();
        C14320x.h(this.f97452g, ((C14321y) fVar).f97452g, k10);
        return new C14321y(k10);
    }

    @Override
    public jk.f n() {
        int[] k10 = AbstractC15322h.k();
        C14320x.j(this.f97452g, k10);
        return new C14321y(k10);
    }

    @Override
    public jk.f o() {
        int[] iArr = this.f97452g;
        if (AbstractC15322h.t(iArr) || AbstractC15322h.s(iArr)) {
            return this;
        }
        int[] k10 = AbstractC15322h.k();
        C14320x.o(iArr, k10);
        C14320x.h(k10, iArr, k10);
        C14320x.o(k10, k10);
        C14320x.h(k10, iArr, k10);
        int[] k11 = AbstractC15322h.k();
        C14320x.o(k10, k11);
        C14320x.h(k11, iArr, k11);
        int[] k12 = AbstractC15322h.k();
        C14320x.p(k11, 4, k12);
        C14320x.h(k12, k11, k12);
        int[] k13 = AbstractC15322h.k();
        C14320x.p(k12, 3, k13);
        C14320x.h(k13, k10, k13);
        C14320x.p(k13, 8, k13);
        C14320x.h(k13, k12, k13);
        C14320x.p(k13, 4, k12);
        C14320x.h(k12, k11, k12);
        C14320x.p(k12, 19, k11);
        C14320x.h(k11, k13, k11);
        int[] k14 = AbstractC15322h.k();
        C14320x.p(k11, 42, k14);
        C14320x.h(k14, k11, k14);
        C14320x.p(k14, 23, k11);
        C14320x.h(k11, k12, k11);
        C14320x.p(k11, 84, k12);
        C14320x.h(k12, k14, k12);
        C14320x.p(k12, 20, k12);
        C14320x.h(k12, k13, k12);
        C14320x.p(k12, 3, k12);
        C14320x.h(k12, iArr, k12);
        C14320x.p(k12, 2, k12);
        C14320x.h(k12, iArr, k12);
        C14320x.p(k12, 4, k12);
        C14320x.h(k12, k10, k12);
        C14320x.o(k12, k12);
        C14320x.o(k12, k14);
        if (AbstractC15322h.n(iArr, k14)) {
            return new C14321y(k12);
        }
        C14320x.h(k12, f97451i, k12);
        C14320x.o(k12, k14);
        if (AbstractC15322h.n(iArr, k14)) {
            return new C14321y(k12);
        }
        return null;
    }

    @Override
    public jk.f p() {
        int[] k10 = AbstractC15322h.k();
        C14320x.o(this.f97452g, k10);
        return new C14321y(k10);
    }

    @Override
    public jk.f t(jk.f fVar) {
        int[] k10 = AbstractC15322h.k();
        C14320x.q(this.f97452g, ((C14321y) fVar).f97452g, k10);
        return new C14321y(k10);
    }

    @Override
    public boolean u() {
        return AbstractC15322h.p(this.f97452g, 0) == 1;
    }

    @Override
    public BigInteger v() {
        return AbstractC15322h.N(this.f97452g);
    }

    public C14321y(BigInteger bigInteger) {
        if (bigInteger == null || bigInteger.signum() < 0 || bigInteger.compareTo(f97450h) >= 0) {
            throw new IllegalArgumentException("x value invalid for SecP224K1FieldElement");
        }
        this.f97452g = C14320x.d(bigInteger);
    }

    public C14321y(int[] iArr) {
        this.f97452g = iArr;
    }
}
