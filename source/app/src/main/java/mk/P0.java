package mk;

import java.math.BigInteger;
import java.net.HttpURLConnection;
import jk.AbstractC13871a;
import jk.AbstractC13875e;
import jk.InterfaceC13874d;
import sk.AbstractC15326l;

public class P0 extends AbstractC13875e.b {

    public static final int f97243s = 6;

    public static final jk.f[] f97244t = {new M0(InterfaceC13874d.f93854b)};

    public Q0 f97245r;

    public class a extends AbstractC13871a {

        public final int f97246a;

        public final long[] f97247b;

        public a(int i10, long[] jArr) {
            this.f97246a = i10;
            this.f97247b = jArr;
        }

        private jk.i c(long[] jArr, long[] jArr2) {
            return P0.this.k(new M0(jArr), new M0(jArr2), P0.f97244t);
        }

        @Override
        public jk.i a(int i10) {
            long[] c10 = AbstractC15326l.c();
            long[] c11 = AbstractC15326l.c();
            int i11 = 0;
            for (int i12 = 0; i12 < this.f97246a; i12++) {
                long j10 = ((i12 ^ i10) - 1) >> 31;
                for (int i13 = 0; i13 < 7; i13++) {
                    long j11 = c10[i13];
                    long[] jArr = this.f97247b;
                    c10[i13] = j11 ^ (jArr[i11 + i13] & j10);
                    c11[i13] = c11[i13] ^ (jArr[(i11 + 7) + i13] & j10);
                }
                i11 += 14;
            }
            return c(c10, c11);
        }

        @Override
        public jk.i b(int i10) {
            long[] c10 = AbstractC15326l.c();
            long[] c11 = AbstractC15326l.c();
            int i11 = i10 * 14;
            for (int i12 = 0; i12 < 7; i12++) {
                long[] jArr = this.f97247b;
                c10[i12] = jArr[i11 + i12];
                c11[i12] = jArr[7 + i11 + i12];
            }
            return c(c10, c11);
        }

        @Override
        public int getSize() {
            return this.f97246a;
        }
    }

    public P0() {
        super(HttpURLConnection.HTTP_CONFLICT, 87, 0, 0);
        this.f97245r = new Q0(this, null, null);
        this.f93868b = o(BigInteger.valueOf(1L));
        this.f93869c = o(new BigInteger(1, em.h.d("0021A5C2C8EE9FEB5C4B9A753B7B476B7FD6422EF1F3DD674761FA99D6AC27C8A9A197B272822F6CD57A55AA4F50AE317B13545F")));
        this.f93870d = new BigInteger(1, em.h.d("010000000000000000000000000000000000000000000000000001E2AAD6A612F33307BE5FA47C3C9E052F838164CD37D9A21173"));
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
        return 87;
    }

    public int T() {
        return 0;
    }

    public int U() {
        return 0;
    }

    public int V() {
        return HttpURLConnection.HTTP_CONFLICT;
    }

    public boolean W() {
        return true;
    }

    @Override
    public AbstractC13875e e() {
        return new P0();
    }

    @Override
    public jk.g g(jk.i[] iVarArr, int i10, int i11) {
        long[] jArr = new long[i11 * 14];
        int i12 = 0;
        for (int i13 = 0; i13 < i11; i13++) {
            jk.i iVar = iVarArr[i10 + i13];
            AbstractC15326l.a(((M0) iVar.n()).f97228g, 0, jArr, i12);
            AbstractC15326l.a(((M0) iVar.o()).f97228g, 0, jArr, i12 + 7);
            i12 += 14;
        }
        return new a(i11, jArr);
    }

    @Override
    public jk.i j(jk.f fVar, jk.f fVar2) {
        return new Q0(this, fVar, fVar2);
    }

    @Override
    public jk.i k(jk.f fVar, jk.f fVar2, jk.f[] fVarArr) {
        return new Q0(this, fVar, fVar2, fVarArr);
    }

    @Override
    public jk.f o(BigInteger bigInteger) {
        return new M0(bigInteger);
    }

    @Override
    public int w() {
        return HttpURLConnection.HTTP_CONFLICT;
    }

    @Override
    public jk.i x() {
        return this.f97245r;
    }
}
