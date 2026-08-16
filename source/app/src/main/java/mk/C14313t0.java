package mk;

import java.math.BigInteger;
import jk.AbstractC13871a;
import jk.AbstractC13875e;
import jk.InterfaceC13874d;
import sk.AbstractC15323i;

public class C14313t0 extends AbstractC13875e.b {

    public static final int f97420s = 6;

    public static final jk.f[] f97421t = {new C14308q0(InterfaceC13874d.f93854b)};

    public C14315u0 f97422r;

    public class a extends AbstractC13871a {

        public final int f97423a;

        public final long[] f97424b;

        public a(int i10, long[] jArr) {
            this.f97423a = i10;
            this.f97424b = jArr;
        }

        private jk.i c(long[] jArr, long[] jArr2) {
            return C14313t0.this.k(new C14308q0(jArr), new C14308q0(jArr2), C14313t0.f97421t);
        }

        @Override
        public jk.i a(int i10) {
            long[] n10 = AbstractC15323i.n();
            long[] n11 = AbstractC15323i.n();
            int i11 = 0;
            for (int i12 = 0; i12 < this.f97423a; i12++) {
                long j10 = ((i12 ^ i10) - 1) >> 31;
                for (int i13 = 0; i13 < 4; i13++) {
                    long j11 = n10[i13];
                    long[] jArr = this.f97424b;
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
                long j10 = n10[i12];
                long[] jArr = this.f97424b;
                n10[i12] = j10 ^ jArr[i11 + i12];
                n11[i12] = n11[i12] ^ jArr[(4 + i11) + i12];
            }
            return c(n10, n11);
        }

        @Override
        public int getSize() {
            return this.f97423a;
        }
    }

    public C14313t0() {
        super(193, 15, 0, 0);
        this.f97422r = new C14315u0(this, null, null);
        this.f93868b = o(new BigInteger(1, em.h.d("0163F35A5137C2CE3EA6ED8667190B0BC43ECD69977702709B")));
        this.f93869c = o(new BigInteger(1, em.h.d("00C9BB9E8927D4D64C377E2AB2856A5B16E3EFB7F61D4316AE")));
        this.f93870d = new BigInteger(1, em.h.d("010000000000000000000000015AAB561B005413CCD4EE99D5"));
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
        return 15;
    }

    public int T() {
        return 0;
    }

    public int U() {
        return 0;
    }

    public int V() {
        return 193;
    }

    public boolean W() {
        return true;
    }

    @Override
    public AbstractC13875e e() {
        return new C14313t0();
    }

    @Override
    public jk.g g(jk.i[] iVarArr, int i10, int i11) {
        long[] jArr = new long[i11 * 8];
        int i12 = 0;
        for (int i13 = 0; i13 < i11; i13++) {
            jk.i iVar = iVarArr[i10 + i13];
            AbstractC15323i.k(((C14308q0) iVar.n()).f97400g, 0, jArr, i12);
            AbstractC15323i.k(((C14308q0) iVar.o()).f97400g, 0, jArr, i12 + 4);
            i12 += 8;
        }
        return new a(i11, jArr);
    }

    @Override
    public jk.i j(jk.f fVar, jk.f fVar2) {
        return new C14315u0(this, fVar, fVar2);
    }

    @Override
    public jk.i k(jk.f fVar, jk.f fVar2, jk.f[] fVarArr) {
        return new C14315u0(this, fVar, fVar2, fVarArr);
    }

    @Override
    public jk.f o(BigInteger bigInteger) {
        return new C14308q0(bigInteger);
    }

    @Override
    public int w() {
        return 193;
    }

    @Override
    public jk.i x() {
        return this.f97422r;
    }
}
