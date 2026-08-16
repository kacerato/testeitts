package mk;

import java.math.BigInteger;
import jk.AbstractC13871a;
import jk.AbstractC13875e;
import jk.InterfaceC13874d;
import sk.AbstractC15321g;

public class C14282d0 extends AbstractC13875e.b {

    public static final int f97311s = 6;

    public static final jk.f[] f97312t = {new C14280c0(InterfaceC13874d.f93854b)};

    public C14284e0 f97313r;

    public class a extends AbstractC13871a {

        public final int f97314a;

        public final long[] f97315b;

        public a(int i10, long[] jArr) {
            this.f97314a = i10;
            this.f97315b = jArr;
        }

        private jk.i c(long[] jArr, long[] jArr2) {
            return C14282d0.this.k(new C14280c0(jArr), new C14280c0(jArr2), C14282d0.f97312t);
        }

        @Override
        public jk.i a(int i10) {
            long[] k10 = AbstractC15321g.k();
            long[] k11 = AbstractC15321g.k();
            int i11 = 0;
            for (int i12 = 0; i12 < this.f97314a; i12++) {
                long j10 = ((i12 ^ i10) - 1) >> 31;
                for (int i13 = 0; i13 < 3; i13++) {
                    long j11 = k10[i13];
                    long[] jArr = this.f97315b;
                    k10[i13] = j11 ^ (jArr[i11 + i13] & j10);
                    k11[i13] = k11[i13] ^ (jArr[(i11 + 3) + i13] & j10);
                }
                i11 += 6;
            }
            return c(k10, k11);
        }

        @Override
        public jk.i b(int i10) {
            long[] k10 = AbstractC15321g.k();
            long[] k11 = AbstractC15321g.k();
            int i11 = i10 * 6;
            for (int i12 = 0; i12 < 3; i12++) {
                long[] jArr = this.f97315b;
                k10[i12] = jArr[i11 + i12];
                k11[i12] = jArr[3 + i11 + i12];
            }
            return c(k10, k11);
        }

        @Override
        public int getSize() {
            return this.f97314a;
        }
    }

    public C14282d0() {
        super(131, 2, 3, 8);
        this.f97313r = new C14284e0(this, null, null);
        this.f93868b = o(new BigInteger(1, em.h.d("07A11B09A76B562144418FF3FF8C2570B8")));
        this.f93869c = o(new BigInteger(1, em.h.d("0217C05610884B63B9C6C7291678F9D341")));
        this.f93870d = new BigInteger(1, em.h.d("0400000000000000023123953A9464B54D"));
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
        return 2;
    }

    public int T() {
        return 3;
    }

    public int U() {
        return 8;
    }

    public int V() {
        return 131;
    }

    public boolean W() {
        return false;
    }

    @Override
    public AbstractC13875e e() {
        return new C14282d0();
    }

    @Override
    public jk.g g(jk.i[] iVarArr, int i10, int i11) {
        long[] jArr = new long[i11 * 6];
        int i12 = 0;
        for (int i13 = 0; i13 < i11; i13++) {
            jk.i iVar = iVarArr[i10 + i13];
            AbstractC15321g.h(((C14280c0) iVar.n()).f97310g, 0, jArr, i12);
            AbstractC15321g.h(((C14280c0) iVar.o()).f97310g, 0, jArr, i12 + 3);
            i12 += 6;
        }
        return new a(i11, jArr);
    }

    @Override
    public jk.i j(jk.f fVar, jk.f fVar2) {
        return new C14284e0(this, fVar, fVar2);
    }

    @Override
    public jk.i k(jk.f fVar, jk.f fVar2, jk.f[] fVarArr) {
        return new C14284e0(this, fVar, fVar2, fVarArr);
    }

    @Override
    public jk.f o(BigInteger bigInteger) {
        return new C14280c0(bigInteger);
    }

    @Override
    public int w() {
        return 131;
    }

    @Override
    public jk.i x() {
        return this.f97313r;
    }
}
