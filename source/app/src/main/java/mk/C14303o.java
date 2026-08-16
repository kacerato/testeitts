package mk;

import java.math.BigInteger;
import java.security.SecureRandom;
import jk.AbstractC13871a;
import jk.AbstractC13875e;
import jk.InterfaceC13874d;
import sk.AbstractC15321g;

public class C14303o extends AbstractC13875e.c {

    public static final int f97384s = 2;

    public r f97386q;

    public static final BigInteger f97383r = C14307q.f97398h;

    public static final jk.f[] f97385t = {new C14307q(InterfaceC13874d.f93854b)};

    public class a extends AbstractC13871a {

        public final int f97387a;

        public final int[] f97388b;

        public a(int i10, int[] iArr) {
            this.f97387a = i10;
            this.f97388b = iArr;
        }

        private jk.i c(int[] iArr, int[] iArr2) {
            return C14303o.this.k(new C14307q(iArr), new C14307q(iArr2), C14303o.f97385t);
        }

        @Override
        public jk.i a(int i10) {
            int[] j10 = AbstractC15321g.j();
            int[] j11 = AbstractC15321g.j();
            int i11 = 0;
            for (int i12 = 0; i12 < this.f97387a; i12++) {
                int i13 = ((i12 ^ i10) - 1) >> 31;
                for (int i14 = 0; i14 < 6; i14++) {
                    int i15 = j10[i14];
                    int[] iArr = this.f97388b;
                    j10[i14] = i15 ^ (iArr[i11 + i14] & i13);
                    j11[i14] = j11[i14] ^ (iArr[(i11 + 6) + i14] & i13);
                }
                i11 += 12;
            }
            return c(j10, j11);
        }

        @Override
        public jk.i b(int i10) {
            int[] j10 = AbstractC15321g.j();
            int[] j11 = AbstractC15321g.j();
            int i11 = i10 * 12;
            for (int i12 = 0; i12 < 6; i12++) {
                int[] iArr = this.f97388b;
                j10[i12] = iArr[i11 + i12];
                j11[i12] = iArr[6 + i11 + i12];
            }
            return c(j10, j11);
        }

        @Override
        public int getSize() {
            return this.f97387a;
        }
    }

    public C14303o() {
        super(f97383r);
        this.f97386q = new r(this, null, null);
        this.f93868b = o(InterfaceC13874d.f93853a);
        this.f93869c = o(BigInteger.valueOf(3L));
        this.f93870d = new BigInteger(1, em.h.d("FFFFFFFFFFFFFFFFFFFFFFFE26F2FC170F69466A74DEFD8D"));
        this.f93871e = BigInteger.valueOf(1L);
        this.f93872f = 2;
    }

    @Override
    public jk.f H(SecureRandom secureRandom) {
        int[] j10 = AbstractC15321g.j();
        C14305p.k(secureRandom, j10);
        return new C14307q(j10);
    }

    @Override
    public jk.f I(SecureRandom secureRandom) {
        int[] j10 = AbstractC15321g.j();
        C14305p.l(secureRandom, j10);
        return new C14307q(j10);
    }

    @Override
    public boolean J(int i10) {
        return i10 == 2;
    }

    public BigInteger O() {
        return f97383r;
    }

    @Override
    public AbstractC13875e e() {
        return new C14303o();
    }

    @Override
    public jk.g g(jk.i[] iVarArr, int i10, int i11) {
        int[] iArr = new int[i11 * 12];
        int i12 = 0;
        for (int i13 = 0; i13 < i11; i13++) {
            jk.i iVar = iVarArr[i10 + i13];
            AbstractC15321g.f(((C14307q) iVar.n()).f97399g, 0, iArr, i12);
            AbstractC15321g.f(((C14307q) iVar.o()).f97399g, 0, iArr, i12 + 6);
            i12 += 12;
        }
        return new a(i11, iArr);
    }

    @Override
    public jk.i j(jk.f fVar, jk.f fVar2) {
        return new r(this, fVar, fVar2);
    }

    @Override
    public jk.i k(jk.f fVar, jk.f fVar2, jk.f[] fVarArr) {
        return new r(this, fVar, fVar2, fVarArr);
    }

    @Override
    public jk.f o(BigInteger bigInteger) {
        return new C14307q(bigInteger);
    }

    @Override
    public int w() {
        return f97383r.bitLength();
    }

    @Override
    public jk.i x() {
        return this.f97386q;
    }
}
