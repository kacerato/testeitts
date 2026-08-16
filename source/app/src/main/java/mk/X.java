package mk;

import java.math.BigInteger;
import jk.AbstractC13871a;
import jk.AbstractC13875e;
import jk.InterfaceC13874d;
import sk.AbstractC15319e;

public class X extends AbstractC13875e.b {

    public static final int f97280s = 6;

    public static final jk.f[] f97281t = {new W(InterfaceC13874d.f93854b)};

    public Y f97282r;

    public class a extends AbstractC13871a {

        public final int f97283a;

        public final long[] f97284b;

        public a(int i10, long[] jArr) {
            this.f97283a = i10;
            this.f97284b = jArr;
        }

        private jk.i c(long[] jArr, long[] jArr2) {
            return X.this.k(new W(jArr), new W(jArr2), X.f97281t);
        }

        @Override
        public jk.i a(int i10) {
            long[] k10 = AbstractC15319e.k();
            long[] k11 = AbstractC15319e.k();
            int i11 = 0;
            for (int i12 = 0; i12 < this.f97283a; i12++) {
                long j10 = ((i12 ^ i10) - 1) >> 31;
                for (int i13 = 0; i13 < 2; i13++) {
                    long j11 = k10[i13];
                    long[] jArr = this.f97284b;
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
                long[] jArr = this.f97284b;
                k10[i12] = jArr[i11 + i12];
                k11[i12] = jArr[2 + i11 + i12];
            }
            return c(k10, k11);
        }

        @Override
        public int getSize() {
            return this.f97283a;
        }
    }

    public X() {
        super(113, 9, 0, 0);
        this.f97282r = new Y(this, null, null);
        this.f93868b = o(new BigInteger(1, em.h.d("003088250CA6E7C7FE649CE85820F7")));
        this.f93869c = o(new BigInteger(1, em.h.d("00E8BEE4D3E2260744188BE0E9C723")));
        this.f93870d = new BigInteger(1, em.h.d("0100000000000000D9CCEC8A39E56F"));
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
        return new X();
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
        return new Y(this, fVar, fVar2);
    }

    @Override
    public jk.i k(jk.f fVar, jk.f fVar2, jk.f[] fVarArr) {
        return new Y(this, fVar, fVar2, fVarArr);
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
        return this.f97282r;
    }
}
