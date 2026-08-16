package mk;

import java.math.BigInteger;
import jk.AbstractC13871a;
import jk.AbstractC13875e;
import jk.InterfaceC13874d;
import sk.AbstractC15323i;

public class C14309r0 extends AbstractC13875e.b {

    public static final int f97401s = 6;

    public static final jk.f[] f97402t = {new C14308q0(InterfaceC13874d.f93854b)};

    public C14311s0 f97403r;

    public class a extends AbstractC13871a {

        public final int f97404a;

        public final long[] f97405b;

        public a(int i10, long[] jArr) {
            this.f97404a = i10;
            this.f97405b = jArr;
        }

        private jk.i c(long[] jArr, long[] jArr2) {
            return C14309r0.this.k(new C14308q0(jArr), new C14308q0(jArr2), C14309r0.f97402t);
        }

        @Override
        public jk.i a(int i10) {
            long[] n10 = AbstractC15323i.n();
            long[] n11 = AbstractC15323i.n();
            int i11 = 0;
            for (int i12 = 0; i12 < this.f97404a; i12++) {
                long j10 = ((i12 ^ i10) - 1) >> 31;
                for (int i13 = 0; i13 < 4; i13++) {
                    long j11 = n10[i13];
                    long[] jArr = this.f97405b;
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
                long[] jArr = this.f97405b;
                n10[i12] = jArr[i11 + i12];
                n11[i12] = jArr[4 + i11 + i12];
            }
            return c(n10, n11);
        }

        @Override
        public int getSize() {
            return this.f97404a;
        }
    }

    public C14309r0() {
        super(193, 15, 0, 0);
        this.f97403r = new C14311s0(this, null, null);
        this.f93868b = o(new BigInteger(1, em.h.d("0017858FEB7A98975169E171F77B4087DE098AC8A911DF7B01")));
        this.f93869c = o(new BigInteger(1, em.h.d("00FDFB49BFE6C3A89FACADAA7A1E5BBC7CC1C2E5D831478814")));
        this.f93870d = new BigInteger(1, em.h.d("01000000000000000000000000C7F34A778F443ACC920EBA49"));
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
        return new C14309r0();
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
        return new C14311s0(this, fVar, fVar2);
    }

    @Override
    public jk.i k(jk.f fVar, jk.f fVar2, jk.f[] fVarArr) {
        return new C14311s0(this, fVar, fVar2, fVarArr);
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
        return this.f97403r;
    }
}
