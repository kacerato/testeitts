package mk;

import java.math.BigInteger;
import java.security.SecureRandom;
import jk.AbstractC13871a;
import jk.AbstractC13875e;
import jk.InterfaceC13874d;
import sk.AbstractC15322h;

public class C14318w extends AbstractC13875e.c {

    public static final int f97431s = 2;

    public C14322z f97433q;

    public static final BigInteger f97430r = C14321y.f97450h;

    public static final jk.f[] f97432t = {new C14321y(InterfaceC13874d.f93854b)};

    public class a extends AbstractC13871a {

        public final int f97434a;

        public final int[] f97435b;

        public a(int i10, int[] iArr) {
            this.f97434a = i10;
            this.f97435b = iArr;
        }

        private jk.i c(int[] iArr, int[] iArr2) {
            return C14318w.this.k(new C14321y(iArr), new C14321y(iArr2), C14318w.f97432t);
        }

        @Override
        public jk.i a(int i10) {
            int[] k10 = AbstractC15322h.k();
            int[] k11 = AbstractC15322h.k();
            int i11 = 0;
            for (int i12 = 0; i12 < this.f97434a; i12++) {
                int i13 = ((i12 ^ i10) - 1) >> 31;
                for (int i14 = 0; i14 < 7; i14++) {
                    int i15 = k10[i14];
                    int[] iArr = this.f97435b;
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
            int i11 = 0;
            for (int i12 = 0; i12 < this.f97434a; i12++) {
                int i13 = ((i12 ^ i10) - 1) >> 31;
                for (int i14 = 0; i14 < 7; i14++) {
                    int i15 = k10[i14];
                    int[] iArr = this.f97435b;
                    k10[i14] = i15 ^ (iArr[i11 + i14] & i13);
                    k11[i14] = k11[i14] ^ (iArr[(i11 + 7) + i14] & i13);
                }
                i11 += 14;
            }
            return c(k10, k11);
        }

        @Override
        public int getSize() {
            return this.f97434a;
        }
    }

    public C14318w() {
        super(f97430r);
        this.f97433q = new C14322z(this, null, null);
        this.f93868b = o(InterfaceC13874d.f93853a);
        this.f93869c = o(BigInteger.valueOf(5L));
        this.f93870d = new BigInteger(1, em.h.d("010000000000000000000000000001DCE8D2EC6184CAF0A971769FB1F7"));
        this.f93871e = BigInteger.valueOf(1L);
        this.f93872f = 2;
    }

    @Override
    public jk.f H(SecureRandom secureRandom) {
        int[] k10 = AbstractC15322h.k();
        C14320x.k(secureRandom, k10);
        return new C14321y(k10);
    }

    @Override
    public jk.f I(SecureRandom secureRandom) {
        int[] k10 = AbstractC15322h.k();
        C14320x.l(secureRandom, k10);
        return new C14321y(k10);
    }

    @Override
    public boolean J(int i10) {
        return i10 == 2;
    }

    public BigInteger O() {
        return f97430r;
    }

    @Override
    public AbstractC13875e e() {
        return new C14318w();
    }

    @Override
    public jk.g g(jk.i[] iVarArr, int i10, int i11) {
        int[] iArr = new int[i11 * 14];
        int i12 = 0;
        for (int i13 = 0; i13 < i11; i13++) {
            jk.i iVar = iVarArr[i10 + i13];
            AbstractC15322h.i(((C14321y) iVar.n()).f97452g, 0, iArr, i12);
            AbstractC15322h.i(((C14321y) iVar.o()).f97452g, 0, iArr, i12 + 7);
            i12 += 14;
        }
        return new a(i11, iArr);
    }

    @Override
    public jk.i j(jk.f fVar, jk.f fVar2) {
        return new C14322z(this, fVar, fVar2);
    }

    @Override
    public jk.i k(jk.f fVar, jk.f fVar2, jk.f[] fVarArr) {
        return new C14322z(this, fVar, fVar2, fVarArr);
    }

    @Override
    public jk.f o(BigInteger bigInteger) {
        return new C14321y(bigInteger);
    }

    @Override
    public int w() {
        return f97430r.bitLength();
    }

    @Override
    public jk.i x() {
        return this.f97433q;
    }
}
