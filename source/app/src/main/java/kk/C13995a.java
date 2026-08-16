package kk;

import em.h;
import java.math.BigInteger;
import java.security.SecureRandom;
import jk.AbstractC13871a;
import jk.AbstractC13875e;
import jk.InterfaceC13874d;
import jk.f;
import jk.g;
import jk.i;
import sk.AbstractC15323i;

public class C13995a extends AbstractC13875e.c {

    public static final BigInteger f95364r = c.f95378h;

    public static final BigInteger f95365s;

    public static final BigInteger f95366t;

    public static final int f95367u = 4;

    public static final f[] f95368v;

    public d f95369q;

    public class C1855a extends AbstractC13871a {

        public final int f95370a;

        public final int[] f95371b;

        public C1855a(int i10, int[] iArr) {
            this.f95370a = i10;
            this.f95371b = iArr;
        }

        @Override
        public i a(int i10) {
            int[] m10 = AbstractC15323i.m();
            int[] m11 = AbstractC15323i.m();
            int i11 = 0;
            for (int i12 = 0; i12 < this.f95370a; i12++) {
                int i13 = ((i12 ^ i10) - 1) >> 31;
                for (int i14 = 0; i14 < 8; i14++) {
                    int i15 = m10[i14];
                    int[] iArr = this.f95371b;
                    m10[i14] = i15 ^ (iArr[i11 + i14] & i13);
                    m11[i14] = m11[i14] ^ (iArr[(i11 + 8) + i14] & i13);
                }
                i11 += 16;
            }
            return c(m10, m11);
        }

        @Override
        public i b(int i10) {
            int[] m10 = AbstractC15323i.m();
            int[] m11 = AbstractC15323i.m();
            int i11 = i10 * 16;
            for (int i12 = 0; i12 < 8; i12++) {
                int[] iArr = this.f95371b;
                m10[i12] = iArr[i11 + i12];
                m11[i12] = iArr[8 + i11 + i12];
            }
            return c(m10, m11);
        }

        public final i c(int[] iArr, int[] iArr2) {
            return C13995a.this.k(new c(iArr), new c(iArr2), C13995a.f95368v);
        }

        @Override
        public int getSize() {
            return this.f95370a;
        }
    }

    static {
        BigInteger bigInteger = new BigInteger(1, h.d("2AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA984914A144"));
        f95365s = bigInteger;
        f95366t = new BigInteger(1, h.d("7B425ED097B425ED097B425ED097B425ED097B425ED097B4260B5E9C7710C864"));
        f95368v = new f[]{new c(InterfaceC13874d.f93854b), new c(bigInteger)};
    }

    public C13995a() {
        super(f95364r);
        this.f95369q = new d(this, null, null);
        this.f93868b = o(f95365s);
        this.f93869c = o(f95366t);
        this.f93870d = new BigInteger(1, h.d("1000000000000000000000000000000014DEF9DEA2F79CD65812631A5CF5D3ED"));
        this.f93871e = BigInteger.valueOf(8L);
        this.f93872f = 4;
    }

    @Override
    public f H(SecureRandom secureRandom) {
        int[] m10 = AbstractC15323i.m();
        b.m(secureRandom, m10);
        return new c(m10);
    }

    @Override
    public f I(SecureRandom secureRandom) {
        int[] m10 = AbstractC15323i.m();
        b.n(secureRandom, m10);
        return new c(m10);
    }

    @Override
    public boolean J(int i10) {
        return i10 == 4;
    }

    public BigInteger O() {
        return f95364r;
    }

    @Override
    public AbstractC13875e e() {
        return new C13995a();
    }

    @Override
    public g g(i[] iVarArr, int i10, int i11) {
        int[] iArr = new int[i11 * 16];
        int i12 = 0;
        for (int i13 = 0; i13 < i11; i13++) {
            i iVar = iVarArr[i10 + i13];
            AbstractC15323i.i(((c) iVar.n()).f95380g, 0, iArr, i12);
            AbstractC15323i.i(((c) iVar.o()).f95380g, 0, iArr, i12 + 8);
            i12 += 16;
        }
        return new C1855a(i11, iArr);
    }

    @Override
    public i j(f fVar, f fVar2) {
        return new d(this, fVar, fVar2);
    }

    @Override
    public i k(f fVar, f fVar2, f[] fVarArr) {
        return new d(this, fVar, fVar2, fVarArr);
    }

    @Override
    public f o(BigInteger bigInteger) {
        return new c(bigInteger);
    }

    @Override
    public int w() {
        return f95364r.bitLength();
    }

    @Override
    public i x() {
        return this.f95369q;
    }
}
