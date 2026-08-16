package mk;

import java.math.BigInteger;
import java.security.SecureRandom;
import jk.AbstractC13871a;
import jk.AbstractC13875e;
import jk.InterfaceC13874d;
import sk.AbstractC15323i;

public class E extends AbstractC13875e.c {

    public static final int f97175s = 2;

    public H f97177q;

    public static final BigInteger f97174r = G.f97190h;

    public static final jk.f[] f97176t = {new G(InterfaceC13874d.f93854b)};

    public class a extends AbstractC13871a {

        public final int f97178a;

        public final int[] f97179b;

        public a(int i10, int[] iArr) {
            this.f97178a = i10;
            this.f97179b = iArr;
        }

        private jk.i c(int[] iArr, int[] iArr2) {
            return E.this.k(new G(iArr), new G(iArr2), E.f97176t);
        }

        @Override
        public jk.i a(int i10) {
            int[] m10 = AbstractC15323i.m();
            int[] m11 = AbstractC15323i.m();
            int i11 = 0;
            for (int i12 = 0; i12 < this.f97178a; i12++) {
                int i13 = ((i12 ^ i10) - 1) >> 31;
                for (int i14 = 0; i14 < 8; i14++) {
                    int i15 = m10[i14];
                    int[] iArr = this.f97179b;
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
                int[] iArr = this.f97179b;
                m10[i12] = iArr[i11 + i12];
                m11[i12] = iArr[8 + i11 + i12];
            }
            return c(m10, m11);
        }

        @Override
        public int getSize() {
            return this.f97178a;
        }
    }

    public E() {
        super(f97174r);
        this.f97177q = new H(this, null, null);
        this.f93868b = o(InterfaceC13874d.f93853a);
        this.f93869c = o(BigInteger.valueOf(7L));
        this.f93870d = new BigInteger(1, em.h.d("FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEBAAEDCE6AF48A03BBFD25E8CD0364141"));
        this.f93871e = BigInteger.valueOf(1L);
        this.f93872f = 2;
    }

    @Override
    public jk.f H(SecureRandom secureRandom) {
        int[] m10 = AbstractC15323i.m();
        F.l(secureRandom, m10);
        return new G(m10);
    }

    @Override
    public jk.f I(SecureRandom secureRandom) {
        int[] m10 = AbstractC15323i.m();
        F.m(secureRandom, m10);
        return new G(m10);
    }

    @Override
    public boolean J(int i10) {
        return i10 == 2;
    }

    public BigInteger O() {
        return f97174r;
    }

    @Override
    public AbstractC13875e e() {
        return new E();
    }

    @Override
    public jk.g g(jk.i[] iVarArr, int i10, int i11) {
        int[] iArr = new int[i11 * 16];
        int i12 = 0;
        for (int i13 = 0; i13 < i11; i13++) {
            jk.i iVar = iVarArr[i10 + i13];
            AbstractC15323i.i(((G) iVar.n()).f97191g, 0, iArr, i12);
            AbstractC15323i.i(((G) iVar.o()).f97191g, 0, iArr, i12 + 8);
            i12 += 16;
        }
        return new a(i11, iArr);
    }

    @Override
    public jk.i j(jk.f fVar, jk.f fVar2) {
        return new H(this, fVar, fVar2);
    }

    @Override
    public jk.i k(jk.f fVar, jk.f fVar2, jk.f[] fVarArr) {
        return new H(this, fVar, fVar2, fVarArr);
    }

    @Override
    public jk.f o(BigInteger bigInteger) {
        return new G(bigInteger);
    }

    @Override
    public int w() {
        return f97174r.bitLength();
    }

    @Override
    public jk.i x() {
        return this.f97177q;
    }
}
