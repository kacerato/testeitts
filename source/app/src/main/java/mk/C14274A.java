package mk;

import java.math.BigInteger;
import java.security.SecureRandom;
import jk.AbstractC13871a;
import jk.AbstractC13875e;
import jk.InterfaceC13874d;
import sk.AbstractC15322h;

public class C14274A extends AbstractC13875e.c {

    public static final int f97151s = 2;

    public D f97153q;

    public static final BigInteger f97150r = C.f97165h;

    public static final jk.f[] f97152t = {new C(InterfaceC13874d.f93854b)};

    public class a extends AbstractC13871a {

        public final int f97154a;

        public final int[] f97155b;

        public a(int i10, int[] iArr) {
            this.f97154a = i10;
            this.f97155b = iArr;
        }

        private jk.i c(int[] iArr, int[] iArr2) {
            return C14274A.this.k(new C(iArr), new C(iArr2), C14274A.f97152t);
        }

        @Override
        public jk.i a(int i10) {
            int[] k10 = AbstractC15322h.k();
            int[] k11 = AbstractC15322h.k();
            int i11 = 0;
            for (int i12 = 0; i12 < this.f97154a; i12++) {
                int i13 = ((i12 ^ i10) - 1) >> 31;
                for (int i14 = 0; i14 < 7; i14++) {
                    int i15 = k10[i14];
                    int[] iArr = this.f97155b;
                    k10[i14] = i15 ^ (iArr[i11 + i14] & i13);
                    k11[i14] = k11[i14] ^ (iArr[(i11 + 7) + i14] & i13);
                }
                i11 += 14;
            }
            return c(k10, k11);
        }

        @Override
        public jk.i b(int i10) {
            int[] k10 = AbstractC15322h.k();
            int[] k11 = AbstractC15322h.k();
            int i11 = i10 * 14;
            for (int i12 = 0; i12 < 7; i12++) {
                int[] iArr = this.f97155b;
                k10[i12] = iArr[i11 + i12];
                k11[i12] = iArr[7 + i11 + i12];
            }
            return c(k10, k11);
        }

        @Override
        public int getSize() {
            return this.f97154a;
        }
    }

    public C14274A() {
        super(f97150r);
        this.f97153q = new D(this, null, null);
        this.f93868b = o(new BigInteger(1, em.h.d("FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFFFFFFFFFFFFFFFFFFFFFFFE")));
        this.f93869c = o(new BigInteger(1, em.h.d("B4050A850C04B3ABF54132565044B0B7D7BFD8BA270B39432355FFB4")));
        this.f93870d = new BigInteger(1, em.h.d("FFFFFFFFFFFFFFFFFFFFFFFFFFFF16A2E0B8F03E13DD29455C5C2A3D"));
        this.f93871e = BigInteger.valueOf(1L);
        this.f93872f = 2;
    }

    @Override
    public jk.f H(SecureRandom secureRandom) {
        int[] k10 = AbstractC15322h.k();
        B.l(secureRandom, k10);
        return new C(k10);
    }

    @Override
    public jk.f I(SecureRandom secureRandom) {
        int[] k10 = AbstractC15322h.k();
        B.m(secureRandom, k10);
        return new C(k10);
    }

    @Override
    public boolean J(int i10) {
        return i10 == 2;
    }

    public BigInteger O() {
        return f97150r;
    }

    @Override
    public AbstractC13875e e() {
        return new C14274A();
    }

    @Override
    public jk.g g(jk.i[] iVarArr, int i10, int i11) {
        int[] iArr = new int[i11 * 14];
        int i12 = 0;
        for (int i13 = 0; i13 < i11; i13++) {
            jk.i iVar = iVarArr[i10 + i13];
            AbstractC15322h.i(((C) iVar.n()).f97166g, 0, iArr, i12);
            AbstractC15322h.i(((C) iVar.o()).f97166g, 0, iArr, i12 + 7);
            i12 += 14;
        }
        return new a(i11, iArr);
    }

    @Override
    public jk.i j(jk.f fVar, jk.f fVar2) {
        return new D(this, fVar, fVar2);
    }

    @Override
    public jk.i k(jk.f fVar, jk.f fVar2, jk.f[] fVarArr) {
        return new D(this, fVar, fVar2, fVarArr);
    }

    @Override
    public jk.f o(BigInteger bigInteger) {
        return new C(bigInteger);
    }

    @Override
    public int w() {
        return f97150r.bitLength();
    }

    @Override
    public jk.i x() {
        return this.f97153q;
    }
}
