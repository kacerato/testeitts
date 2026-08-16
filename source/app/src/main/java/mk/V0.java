package mk;

import java.math.BigInteger;
import jk.AbstractC13871a;
import jk.AbstractC13875e;
import jk.InterfaceC13874d;
import sk.AbstractC15328n;

public class V0 extends AbstractC13875e.b {

    public static final int f97271s = 6;

    public static final jk.f[] f97272t = {new S0(InterfaceC13874d.f93854b)};

    public static final S0 f97273u;

    public static final S0 f97274v;

    public W0 f97275r;

    public class a extends AbstractC13871a {

        public final int f97276a;

        public final long[] f97277b;

        public a(int i10, long[] jArr) {
            this.f97276a = i10;
            this.f97277b = jArr;
        }

        private jk.i c(long[] jArr, long[] jArr2) {
            return V0.this.k(new S0(jArr), new S0(jArr2), V0.f97272t);
        }

        @Override
        public jk.i a(int i10) {
            long[] c10 = AbstractC15328n.c();
            long[] c11 = AbstractC15328n.c();
            int i11 = 0;
            for (int i12 = 0; i12 < this.f97276a; i12++) {
                long j10 = ((i12 ^ i10) - 1) >> 31;
                for (int i13 = 0; i13 < 9; i13++) {
                    long j11 = c10[i13];
                    long[] jArr = this.f97277b;
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
                long[] jArr = this.f97277b;
                c10[i12] = jArr[i11 + i12];
                c11[i12] = jArr[9 + i11 + i12];
            }
            return c(c10, c11);
        }

        @Override
        public int getSize() {
            return this.f97276a;
        }
    }

    static {
        S0 s02 = new S0(new BigInteger(1, em.h.d("02F40E7E2221F295DE297117B7F3D62F5C6A97FFCB8CEFF1CD6BA8CE4A9A18AD84FFABBD8EFA59332BE7AD6756A66E294AFD185A78FF12AA520E4DE739BACA0C7FFEFF7F2955727A")));
        f97273u = s02;
        f97274v = (S0) s02.o();
    }

    public V0() {
        super(571, 2, 5, 10);
        this.f97275r = new W0(this, null, null);
        this.f93868b = o(BigInteger.valueOf(1L));
        this.f93869c = f97273u;
        this.f93870d = new BigInteger(1, em.h.d("03FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE661CE18FF55987308059B186823851EC7DD9CA1161DE93D5174D66E8382E9BB2FE84E47"));
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
        return new V0();
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
    public jk.i j(jk.f fVar, jk.f fVar2) {
        return new W0(this, fVar, fVar2);
    }

    @Override
    public jk.i k(jk.f fVar, jk.f fVar2, jk.f[] fVarArr) {
        return new W0(this, fVar, fVar2, fVarArr);
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
        return this.f97275r;
    }
}
