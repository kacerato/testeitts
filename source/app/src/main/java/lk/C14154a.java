package lk;

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

public class C14154a extends AbstractC13875e.c {

    public static final int f96519s = 2;

    public d f96521q;

    public static final BigInteger f96518r = c.f96530h;

    public static final f[] f96520t = {new c(InterfaceC13874d.f93854b)};

    public class C1872a extends AbstractC13871a {

        public final int f96522a;

        public final int[] f96523b;

        public C1872a(int i10, int[] iArr) {
            this.f96522a = i10;
            this.f96523b = iArr;
        }

        private i c(int[] iArr, int[] iArr2) {
            return C14154a.this.k(new c(iArr), new c(iArr2), C14154a.f96520t);
        }

        @Override
        public i a(int i10) {
            int[] m10 = AbstractC15323i.m();
            int[] m11 = AbstractC15323i.m();
            int i11 = 0;
            for (int i12 = 0; i12 < this.f96522a; i12++) {
                int i13 = ((i12 ^ i10) - 1) >> 31;
                for (int i14 = 0; i14 < 8; i14++) {
                    int i15 = m10[i14];
                    int[] iArr = this.f96523b;
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
                int[] iArr = this.f96523b;
                m10[i12] = iArr[i11 + i12];
                m11[i12] = iArr[8 + i11 + i12];
            }
            return c(m10, m11);
        }

        @Override
        public int getSize() {
            return this.f96522a;
        }
    }

    public C14154a() {
        super(f96518r);
        this.f96521q = new d(this, null, null);
        this.f93868b = o(new BigInteger(1, h.d("FFFFFFFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00000000FFFFFFFFFFFFFFFC")));
        this.f93869c = o(new BigInteger(1, h.d("28E9FA9E9D9F5E344D5A9E4BCF6509A7F39789F515AB8F92DDBCBD414D940E93")));
        this.f93870d = new BigInteger(1, h.d("FFFFFFFEFFFFFFFFFFFFFFFFFFFFFFFF7203DF6B21C6052B53BBF40939D54123"));
        this.f93871e = BigInteger.valueOf(1L);
        this.f93872f = 2;
    }

    @Override
    public f H(SecureRandom secureRandom) {
        int[] m10 = AbstractC15323i.m();
        b.l(secureRandom, m10);
        return new c(m10);
    }

    @Override
    public f I(SecureRandom secureRandom) {
        int[] m10 = AbstractC15323i.m();
        b.m(secureRandom, m10);
        return new c(m10);
    }

    @Override
    public boolean J(int i10) {
        return i10 == 2;
    }

    public BigInteger O() {
        return f96518r;
    }

    @Override
    public AbstractC13875e e() {
        return new C14154a();
    }

    @Override
    public g g(i[] iVarArr, int i10, int i11) {
        int[] iArr = new int[i11 * 16];
        int i12 = 0;
        for (int i13 = 0; i13 < i11; i13++) {
            i iVar = iVarArr[i10 + i13];
            AbstractC15323i.i(((c) iVar.n()).f96531g, 0, iArr, i12);
            AbstractC15323i.i(((c) iVar.o()).f96531g, 0, iArr, i12 + 8);
            i12 += 16;
        }
        return new C1872a(i11, iArr);
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
        return f96518r.bitLength();
    }

    @Override
    public i x() {
        return this.f96521q;
    }
}
