package mk;

import java.math.BigInteger;
import jk.AbstractC13871a;
import jk.AbstractC13875e;
import jk.InterfaceC13874d;
import sk.AbstractC15328n;

public class T0 extends AbstractC13875e.b {

    public static final int f97263s = 6;

    public static final jk.f[] f97264t = {new S0(InterfaceC13874d.f93854b)};

    public U0 f97265r;

    public class a extends AbstractC13871a {

        public final int f97266a;

        public final long[] f97267b;

        public a(int i10, long[] jArr) {
            this.f97266a = i10;
            this.f97267b = jArr;
        }

        private jk.i c(long[] jArr, long[] jArr2) {
            return T0.this.k(new S0(jArr), new S0(jArr2), T0.f97264t);
        }

        @Override
        public jk.i a(int i10) {
            long[] c10 = AbstractC15328n.c();
            long[] c11 = AbstractC15328n.c();
            int i11 = 0;
            for (int i12 = 0; i12 < this.f97266a; i12++) {
                long j10 = ((i12 ^ i10) - 1) >> 31;
                for (int i13 = 0; i13 < 9; i13++) {
                    long j11 = c10[i13];
                    long[] jArr = this.f97267b;
                    c10[i13] = j11 ^ (jArr[i11 + i13] & j10);
                    c11[i13] = c11[i13] ^ (jArr[(i11 + 9) + i13] & j10);
                }
                i11 += 18;
            }
            return c(c10, c11);
        }

        @Override
        public jk.i b(int i10) {
            long[] c10 = AbstractC15328n.c();
            long[] c11 = AbstractC15328n.c();
            int i11 = i10 * 18;
            for (int i12 = 0; i12 < 9; i12++) {
                long[] jArr = this.f97267b;
                c10[i12] = jArr[i11 + i12];
                c11[i12] = jArr[9 + i11 + i12];
            }
            return c(c10, c11);
        }

        @Override
        public int getSize() {
            return this.f97266a;
        }
    }

    public T0() {
        super(571, 2, 5, 10);
        this.f97265r = new U0(this, null, null);
        this.f93868b = o(BigInteger.valueOf(0L));
        this.f93869c = o(BigInteger.valueOf(1L));
        this.f93870d = new BigInteger(1, em.h.d("020000000000000000000000000000000000000000000000000000000000000000000000131850E1F19A63E4B391A8DB917F4138B630D84BE5D639381E91DEB45CFE778F637C1001"));
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
        return 2;
    }

    public int T() {
        return 5;
    }

    public int U() {
        return 10;
    }

    public int V() {
        return 571;
    }

    public boolean W() {
        return false;
    }

    @Override
    public AbstractC13875e e() {
        return new T0();
    }

    @Override
    public jk.g g(jk.i[] iVarArr, int i10, int i11) {
        long[] jArr = new long[i11 * 18];
        int i12 = 0;
        for (int i13 = 0; i13 < i11; i13++) {
            jk.i iVar = iVarArr[i10 + i13];
            AbstractC15328n.a(((S0) iVar.n()).f97260g, 0, jArr, i12);
            AbstractC15328n.a(((S0) iVar.o()).f97260g, 0, jArr, i12 + 9);
            i12 += 18;
        }
        return new a(i11, jArr);
    }

    @Override
    public jk.h h() {
        return new jk.C();
    }

    @Override
    public jk.i j(jk.f fVar, jk.f fVar2) {
        return new U0(this, fVar, fVar2);
    }

    @Override
    public jk.i k(jk.f fVar, jk.f fVar2, jk.f[] fVarArr) {
        return new U0(this, fVar, fVar2, fVarArr);
    }

    @Override
    public jk.f o(BigInteger bigInteger) {
        return new S0(bigInteger);
    }

    @Override
    public int w() {
        return 571;
    }

    @Override
    public jk.i x() {
        return this.f97265r;
    }
}
