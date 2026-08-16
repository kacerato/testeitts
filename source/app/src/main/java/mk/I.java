package mk;

import java.math.BigInteger;
import java.security.SecureRandom;
import jk.AbstractC13871a;
import jk.AbstractC13875e;
import jk.InterfaceC13874d;
import sk.AbstractC15323i;

public class I extends AbstractC13875e.c {

    public static final int f97200s = 2;

    public L f97202q;

    public static final BigInteger f97199r = K.f97217h;

    public static final jk.f[] f97201t = {new K(InterfaceC13874d.f93854b)};

    public class a extends AbstractC13871a {

        public final int f97203a;

        public final int[] f97204b;

        public a(int i10, int[] iArr) {
            this.f97203a = i10;
            this.f97204b = iArr;
        }

        private jk.i c(int[] iArr, int[] iArr2) {
            return I.this.k(new K(iArr), new K(iArr2), I.f97201t);
        }

        @Override
        public jk.i a(int i10) {
            int[] m10 = AbstractC15323i.m();
            int[] m11 = AbstractC15323i.m();
            int i11 = 0;
            for (int i12 = 0; i12 < this.f97203a; i12++) {
                int i13 = ((i12 ^ i10) - 1) >> 31;
                for (int i14 = 0; i14 < 8; i14++) {
                    int i15 = m10[i14];
                    int[] iArr = this.f97204b;
                    m10[i14] = i15 ^ (iArr[i11 + i14] & i13);
                    m11[i14] = m11[i14] ^ (iArr[(i11 + 8) + i14] & i13);
                }
                i11 += 16;
            }
            return c(m10, m11);
        }

        @Override
        public jk.i b(int i10) {
            int[] m10 = AbstractC15323i.m();
            int[] m11 = AbstractC15323i.m();
            int i11 = i10 * 16;
            for (int i12 = 0; i12 < 8; i12++) {
                int[] iArr = this.f97204b;
                m10[i12] = iArr[i11 + i12];
                m11[i12] = iArr[8 + i11 + i12];
            }
            return c(m10, m11);
        }

        @Override
        public int getSize() {
            return this.f97203a;
        }
    }

    public I() {
        super(f97199r);
        this.f97202q = new L(this, null, null);
        this.f93868b = o(new BigInteger(1, em.h.d("FFFFFFFF00000001000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFC")));
        this.f93869c = o(new BigInteger(1, em.h.d("5AC635D8AA3A93E7B3EBBD55769886BC651D06B0CC53B0F63BCE3C3E27D2604B")));
        this.f93870d = new BigInteger(1, em.h.d("FFFFFFFF00000000FFFFFFFFFFFFFFFFBCE6FAADA7179E84F3B9CAC2FC632551"));
        this.f93871e = BigInteger.valueOf(1L);
        this.f93872f = 2;
    }

    @Override
    public jk.f H(SecureRandom secureRandom) {
        int[] m10 = AbstractC15323i.m();
        J.m(secureRandom, m10);
        return new K(m10);
    }

    @Override
    public jk.f I(SecureRandom secureRandom) {
        int[] m10 = AbstractC15323i.m();
        J.n(secureRandom, m10);
        return new K(m10);
    }

    @Override
    public boolean J(int i10) {
        return i10 == 2;
    }

    public BigInteger O() {
        return f97199r;
    }

    @Override
    public AbstractC13875e e() {
        return new I();
    }

    @Override
    public jk.g g(jk.i[] iVarArr, int i10, int i11) {
        int[] iArr = new int[i11 * 16];
        int i12 = 0;
        for (int i13 = 0; i13 < i11; i13++) {
            jk.i iVar = iVarArr[i10 + i13];
            AbstractC15323i.i(((K) iVar.n()).f97218g, 0, iArr, i12);
            AbstractC15323i.i(((K) iVar.o()).f97218g, 0, iArr, i12 + 8);
            i12 += 16;
        }
        return new a(i11, iArr);
    }

    @Override
    public jk.i j(jk.f fVar, jk.f fVar2) {
        return new L(this, fVar, fVar2);
    }

    @Override
    public jk.i k(jk.f fVar, jk.f fVar2, jk.f[] fVarArr) {
        return new L(this, fVar, fVar2, fVarArr);
    }

    @Override
    public jk.f o(BigInteger bigInteger) {
        return new K(bigInteger);
    }

    @Override
    public int w() {
        return f97199r.bitLength();
    }

    @Override
    public jk.i x() {
        return this.f97202q;
    }
}
