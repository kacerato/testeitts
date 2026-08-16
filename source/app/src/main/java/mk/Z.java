package mk;

import java.math.BigInteger;
import jk.AbstractC13871a;
import jk.AbstractC13875e;
import jk.InterfaceC13874d;
import sk.AbstractC15319e;

public class Z extends AbstractC13875e.b {

    public static final int f97286s = 6;

    public static final jk.f[] f97287t = {new W(InterfaceC13874d.f93854b)};

    public C14276a0 f97288r;

    public class a extends AbstractC13871a {

        public final int f97289a;

        public final long[] f97290b;

        public a(int i10, long[] jArr) {
            this.f97289a = i10;
            this.f97290b = jArr;
        }

        private jk.i c(long[] jArr, long[] jArr2) {
            return Z.this.k(new W(jArr), new W(jArr2), Z.f97287t);
        }

        @Override
        public jk.i a(int i10) {
            long[] k10 = AbstractC15319e.k();
            long[] k11 = AbstractC15319e.k();
            int i11 = 0;
            for (int i12 = 0; i12 < this.f97289a; i12++) {
                long j10 = ((i12 ^ i10) - 1) >> 31;
                for (int i13 = 0; i13 < 2; i13++) {
                    long j11 = k10[i13];
                    long[] jArr = this.f97290b;
                    k10[i13] = j11 ^ (jArr[i11 + i13] & j10);
                    k11[i13] = k11[i13] ^ (jArr[(i11 + 2) + i13] & j10);
                }
                i11 += 4;
            }
            return c(k10, k11);
        }

        @Override
        public jk.i b(int i10) {
            long[] k10 = AbstractC15319e.k();
            long[] k11 = AbstractC15319e.k();
            int i11 = i10 * 4;
            for (int i12 = 0; i12 < 2; i12++) {
                long[] jArr = this.f97290b;
                k10[i12] = jArr[i11 + i12];
                k11[i12] = jArr[2 + i11 + i12];
            }
            return c(k10, k11);
        }

        @Override
        public int getSize() {
            return this.f97289a;
        }
    }

    public Z() {
        super(113, 9, 0, 0);
        this.f97288r = new C14276a0(this, null, null);
        this.f93868b = o(new BigInteger(1, em.h.d("00689918DBEC7E5A0DD6DFC0AA55C7")));
        this.f93869c = o(new BigInteger(1, em.h.d("0095E9A9EC9B297BD4BF36E059184F")));
        this.f93870d = new BigInteger(1, em.h.d("010000000000000108789B2496AF93"));
        this.f93871e = BigInteger.valueOf(2L);
        this.f93872f = 6;
    }

    @Override
    public boolean J(int i10) {
        return i10 == 6;
    }

    @Override
    public boolean P() {
        return false;
    }

    public int S() {
        return 9;
    }

    public int T() {
        return 0;
    }

    public int U() {
        return 0;
    }

    public int V() {
        return 113;
    }

    public boolean W() {
        return true;
    }

    @Override
    public AbstractC13875e e() {
        return new Z();
    }

    @Override
    public jk.g g(jk.i[] iVarArr, int i10, int i11) {
        long[] jArr = new long[i11 * 4];
        int i12 = 0;
        for (int i13 = 0; i13 < i11; i13++) {
            jk.i iVar = iVarArr[i10 + i13];
            AbstractC15319e.h(((W) iVar.n()).f97279g, 0, jArr, i12);
            AbstractC15319e.h(((W) iVar.o()).f97279g, 0, jArr, i12 + 2);
            i12 += 4;
        }
        return new a(i11, jArr);
    }

    @Override
    public jk.i j(jk.f fVar, jk.f fVar2) {
        return new C14276a0(this, fVar, fVar2);
    }

    @Override
    public jk.i k(jk.f fVar, jk.f fVar2, jk.f[] fVarArr) {
        return new C14276a0(this, fVar, fVar2, fVarArr);
    }

    @Override
    public jk.f o(BigInteger bigInteger) {
        return new W(bigInteger);
    }

    @Override
    public int w() {
        return 113;
    }

    @Override
    public jk.i x() {
        return this.f97288r;
    }
}
