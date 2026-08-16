package mk;

import java.math.BigInteger;
import java.security.SecureRandom;
import jk.AbstractC13871a;
import jk.AbstractC13875e;
import jk.InterfaceC13874d;
import sk.AbstractC15320f;

public class C14295k extends AbstractC13875e.c {

    public static final int f97357s = 2;

    public C14301n f97359q;

    public static final BigInteger f97356r = C14299m.f97375h;

    public static final jk.f[] f97358t = {new C14299m(InterfaceC13874d.f93854b)};

    public class a extends AbstractC13871a {

        public final int f97360a;

        public final int[] f97361b;

        public a(int i10, int[] iArr) {
            this.f97360a = i10;
            this.f97361b = iArr;
        }

        private jk.i c(int[] iArr, int[] iArr2) {
            return C14295k.this.k(new C14299m(iArr), new C14299m(iArr2), C14295k.f97358t);
        }

        @Override
        public jk.i a(int i10) {
            int[] h10 = AbstractC15320f.h();
            int[] h11 = AbstractC15320f.h();
            int i11 = 0;
            for (int i12 = 0; i12 < this.f97360a; i12++) {
                int i13 = ((i12 ^ i10) - 1) >> 31;
                for (int i14 = 0; i14 < 5; i14++) {
                    int i15 = h10[i14];
                    int[] iArr = this.f97361b;
                    h10[i14] = i15 ^ (iArr[i11 + i14] & i13);
                    h11[i14] = h11[i14] ^ (iArr[(i11 + 5) + i14] & i13);
                }
                i11 += 10;
            }
            return c(h10, h11);
        }

        @Override
        public jk.i b(int i10) {
            int[] h10 = AbstractC15320f.h();
            int[] h11 = AbstractC15320f.h();
            int i11 = i10 * 10;
            for (int i12 = 0; i12 < 5; i12++) {
                int[] iArr = this.f97361b;
                h10[i12] = iArr[i11 + i12];
                h11[i12] = iArr[5 + i11 + i12];
            }
            return c(h10, h11);
        }

        @Override
        public int getSize() {
            return this.f97360a;
        }
    }

    public C14295k() {
        super(f97356r);
        this.f97359q = new C14301n(this, null, null);
        this.f93868b = o(new BigInteger(1, em.h.d("FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFFFFAC70")));
        this.f93869c = o(new BigInteger(1, em.h.d("B4E134D3FB59EB8BAB57274904664D5AF50388BA")));
        this.f93870d = new BigInteger(1, em.h.d("0100000000000000000000351EE786A818F3A1A16B"));
        this.f93871e = BigInteger.valueOf(1L);
        this.f93872f = 2;
    }

    @Override
    public jk.f H(SecureRandom secureRandom) {
        int[] h10 = AbstractC15320f.h();
        C14297l.k(secureRandom, h10);
        return new C14299m(h10);
    }

    @Override
    public jk.f I(SecureRandom secureRandom) {
        int[] h10 = AbstractC15320f.h();
        C14297l.l(secureRandom, h10);
        return new C14299m(h10);
    }

    @Override
    public boolean J(int i10) {
        return i10 == 2;
    }

    public BigInteger O() {
        return f97356r;
    }

    @Override
    public AbstractC13875e e() {
        return new C14295k();
    }

    @Override
    public jk.g g(jk.i[] iVarArr, int i10, int i11) {
        int[] iArr = new int[i11 * 10];
        int i12 = 0;
        for (int i13 = 0; i13 < i11; i13++) {
            jk.i iVar = iVarArr[i10 + i13];
            AbstractC15320f.f(((C14299m) iVar.n()).f97376g, 0, iArr, i12);
            AbstractC15320f.f(((C14299m) iVar.o()).f97376g, 0, iArr, i12 + 5);
            i12 += 10;
        }
        return new a(i11, iArr);
    }

    @Override
    public jk.i j(jk.f fVar, jk.f fVar2) {
        return new C14301n(this, fVar, fVar2);
    }

    @Override
    public jk.i k(jk.f fVar, jk.f fVar2, jk.f[] fVarArr) {
        return new C14301n(this, fVar, fVar2, fVarArr);
    }

    @Override
    public jk.f o(BigInteger bigInteger) {
        return new C14299m(bigInteger);
    }

    @Override
    public int w() {
        return f97356r.bitLength();
    }

    @Override
    public jk.i x() {
        return this.f97359q;
    }
}
