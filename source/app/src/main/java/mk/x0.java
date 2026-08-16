package mk;

import java.math.BigInteger;
import jk.AbstractC13871a;
import jk.AbstractC13875e;
import jk.InterfaceC13874d;
import sk.AbstractC15323i;

public class x0 extends AbstractC13875e.b {

    public static final int f97444s = 6;

    public static final jk.f[] f97445t = {new C14319w0(InterfaceC13874d.f93854b)};

    public y0 f97446r;

    public class a extends AbstractC13871a {

        public final int f97447a;

        public final long[] f97448b;

        public a(int i10, long[] jArr) {
            this.f97447a = i10;
            this.f97448b = jArr;
        }

        private jk.i c(long[] jArr, long[] jArr2) {
            return x0.this.k(new C14319w0(jArr), new C14319w0(jArr2), x0.f97445t);
        }

        @Override
        public jk.i a(int i10) {
            long[] n10 = AbstractC15323i.n();
            long[] n11 = AbstractC15323i.n();
            int i11 = 0;
            for (int i12 = 0; i12 < this.f97447a; i12++) {
                long j10 = ((i12 ^ i10) - 1) >> 31;
                for (int i13 = 0; i13 < 4; i13++) {
                    long j11 = n10[i13];
                    long[] jArr = this.f97448b;
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
                long[] jArr = this.f97448b;
                n10[i12] = jArr[i11 + i12];
                n11[i12] = jArr[4 + i11 + i12];
            }
            return c(n10, n11);
        }

        @Override
        public int getSize() {
            return this.f97447a;
        }
    }

    public x0() {
        super(233, 74, 0, 0);
        this.f97446r = new y0(this, null, null);
        this.f93868b = o(BigInteger.valueOf(0L));
        this.f93869c = o(BigInteger.valueOf(1L));
        this.f93870d = new BigInteger(1, em.h.d("8000000000000000000000000000069D5BB915BCD46EFB1AD5F173ABDF"));
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
        return 74;
    }

    public int T() {
        return 0;
    }

    public int U() {
        return 0;
    }

    public int V() {
        return 233;
    }

    public boolean W() {
        return true;
    }

    @Override
    public AbstractC13875e e() {
        return new x0();
    }

    @Override
    public jk.g g(jk.i[] iVarArr, int i10, int i11) {
        long[] jArr = new long[i11 * 8];
        int i12 = 0;
        for (int i13 = 0; i13 < i11; i13++) {
            jk.i iVar = iVarArr[i10 + i13];
            AbstractC15323i.k(((C14319w0) iVar.n()).f97437g, 0, jArr, i12);
            AbstractC15323i.k(((C14319w0) iVar.o()).f97437g, 0, jArr, i12 + 4);
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
        return new y0(this, fVar, fVar2);
    }

    @Override
    public jk.i k(jk.f fVar, jk.f fVar2, jk.f[] fVarArr) {
        return new y0(this, fVar, fVar2, fVarArr);
    }

    @Override
    public jk.f o(BigInteger bigInteger) {
        return new C14319w0(bigInteger);
    }

    @Override
    public int w() {
        return 233;
    }

    @Override
    public jk.i x() {
        return this.f97446r;
    }
}
