package mk;

import java.math.BigInteger;
import jk.AbstractC13871a;
import jk.AbstractC13875e;
import jk.InterfaceC13874d;
import sk.AbstractC15323i;

public class D0 extends AbstractC13875e.b {

    public static final int f97168s = 6;

    public static final jk.f[] f97169t = {new C0(InterfaceC13874d.f93854b)};

    public E0 f97170r;

    public class a extends AbstractC13871a {

        public final int f97171a;

        public final long[] f97172b;

        public a(int i10, long[] jArr) {
            this.f97171a = i10;
            this.f97172b = jArr;
        }

        private jk.i c(long[] jArr, long[] jArr2) {
            return D0.this.k(new C0(jArr), new C0(jArr2), D0.f97169t);
        }

        @Override
        public jk.i a(int i10) {
            long[] n10 = AbstractC15323i.n();
            long[] n11 = AbstractC15323i.n();
            int i11 = 0;
            for (int i12 = 0; i12 < this.f97171a; i12++) {
                long j10 = ((i12 ^ i10) - 1) >> 31;
                for (int i13 = 0; i13 < 4; i13++) {
                    long j11 = n10[i13];
                    long[] jArr = this.f97172b;
                    n10[i13] = j11 ^ (jArr[i11 + i13] & j10);
                    n11[i13] = n11[i13] ^ (jArr[(i11 + 4) + i13] & j10);
                }
                i11 += 8;
            }
            return c(n10, n11);
        }

        @Override
        public jk.i b(int i10) {
            long[] n10 = AbstractC15323i.n();
            long[] n11 = AbstractC15323i.n();
            int i11 = i10 * 8;
            for (int i12 = 0; i12 < 4; i12++) {
                long[] jArr = this.f97172b;
                n10[i12] = jArr[i11 + i12];
                n11[i12] = jArr[4 + i11 + i12];
            }
            return c(n10, n11);
        }

        @Override
        public int getSize() {
            return this.f97171a;
        }
    }

    public D0() {
        super(239, 158, 0, 0);
        this.f97170r = new E0(this, null, null);
        this.f93868b = o(BigInteger.valueOf(0L));
        this.f93869c = o(BigInteger.valueOf(1L));
        this.f93870d = new BigInteger(1, em.h.d("2000000000000000000000000000005A79FEC67CB6E91F1C1DA800E478A5"));
        this.f93871e = BigInteger.valueOf(4L);
        this.f93872f = 6;
    }

    @Override
    public boolean J(int i10) {
        return i10 == 6;
    }

    @Override
    public boolean P() {
        return true;
    }

    public int S() {
        return 158;
    }

    public int T() {
        return 0;
    }

    public int U() {
        return 0;
    }

    public int V() {
        return 239;
    }

    public boolean W() {
        return true;
    }

    @Override
    public AbstractC13875e e() {
        return new D0();
    }

    @Override
    public jk.g g(jk.i[] iVarArr, int i10, int i11) {
        long[] jArr = new long[i11 * 8];
        int i12 = 0;
        for (int i13 = 0; i13 < i11; i13++) {
            jk.i iVar = iVarArr[i10 + i13];
            AbstractC15323i.k(((C0) iVar.n()).f97167g, 0, jArr, i12);
            AbstractC15323i.k(((C0) iVar.o()).f97167g, 0, jArr, i12 + 4);
            i12 += 8;
        }
        return new a(i11, jArr);
    }

    @Override
    public jk.h h() {
        return new jk.C();
    }

    @Override
    public jk.i j(jk.f fVar, jk.f fVar2) {
        return new E0(this, fVar, fVar2);
    }

    @Override
    public jk.i k(jk.f fVar, jk.f fVar2, jk.f[] fVarArr) {
        return new E0(this, fVar, fVar2, fVarArr);
    }

    @Override
    public jk.f o(BigInteger bigInteger) {
        return new C0(bigInteger);
    }

    @Override
    public int w() {
        return 239;
    }

    @Override
    public jk.i x() {
        return this.f97170r;
    }
}
