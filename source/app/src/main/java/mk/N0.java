package mk;

import java.math.BigInteger;
import java.net.HttpURLConnection;
import jk.AbstractC13871a;
import jk.AbstractC13875e;
import jk.InterfaceC13874d;
import sk.AbstractC15326l;

public class N0 extends AbstractC13875e.b {

    public static final int f97235s = 6;

    public static final jk.f[] f97236t = {new M0(InterfaceC13874d.f93854b)};

    public O0 f97237r;

    public class a extends AbstractC13871a {

        public final int f97238a;

        public final long[] f97239b;

        public a(int i10, long[] jArr) {
            this.f97238a = i10;
            this.f97239b = jArr;
        }

        private jk.i c(long[] jArr, long[] jArr2) {
            return N0.this.k(new M0(jArr), new M0(jArr2), N0.f97236t);
        }

        @Override
        public jk.i a(int i10) {
            long[] c10 = AbstractC15326l.c();
            long[] c11 = AbstractC15326l.c();
            int i11 = 0;
            for (int i12 = 0; i12 < this.f97238a; i12++) {
                long j10 = ((i12 ^ i10) - 1) >> 31;
                for (int i13 = 0; i13 < 7; i13++) {
                    long j11 = c10[i13];
                    long[] jArr = this.f97239b;
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
                long[] jArr = this.f97239b;
                c10[i12] = jArr[i11 + i12];
                c11[i12] = jArr[7 + i11 + i12];
            }
            return c(c10, c11);
        }

        @Override
        public int getSize() {
            return this.f97238a;
        }
    }

    public N0() {
        super(HttpURLConnection.HTTP_CONFLICT, 87, 0, 0);
        this.f97237r = new O0(this, null, null);
        this.f93868b = o(BigInteger.valueOf(0L));
        this.f93869c = o(BigInteger.valueOf(1L));
        this.f93870d = new BigInteger(1, em.h.d("7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE5F83B2D4EA20400EC4557D5ED3E3E7CA5B4B5C83B8E01E5FCF"));
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
        return new N0();
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
    public jk.h h() {
        return new jk.C();
    }

    @Override
    public jk.i j(jk.f fVar, jk.f fVar2) {
        return new O0(this, fVar, fVar2);
    }

    @Override
    public jk.i k(jk.f fVar, jk.f fVar2, jk.f[] fVarArr) {
        return new O0(this, fVar, fVar2, fVarArr);
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
        return this.f97237r;
    }
}
