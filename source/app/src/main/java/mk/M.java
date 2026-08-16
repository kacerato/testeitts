package mk;

import java.math.BigInteger;
import java.security.SecureRandom;
import jk.AbstractC13871a;
import jk.AbstractC13875e;
import jk.InterfaceC13874d;
import sk.AbstractC15329o;

public class M extends AbstractC13875e.c {

    public static final int f97222s = 2;

    public P f97224q;

    public static final BigInteger f97221r = O.f97241h;

    public static final jk.f[] f97223t = {new O(InterfaceC13874d.f93854b)};

    public class a extends AbstractC13871a {

        public final int f97225a;

        public final int[] f97226b;

        public a(int i10, int[] iArr) {
            this.f97225a = i10;
            this.f97226b = iArr;
        }

        private jk.i c(int[] iArr, int[] iArr2) {
            return M.this.k(new O(iArr), new O(iArr2), M.f97223t);
        }

        @Override
        public jk.i a(int i10) {
            int[] E10 = AbstractC15329o.E(12);
            int[] E11 = AbstractC15329o.E(12);
            int i11 = 0;
            for (int i12 = 0; i12 < this.f97225a; i12++) {
                int i13 = ((i12 ^ i10) - 1) >> 31;
                for (int i14 = 0; i14 < 12; i14++) {
                    int i15 = E10[i14];
                    int[] iArr = this.f97226b;
                    E10[i14] = i15 ^ (iArr[i11 + i14] & i13);
                    E11[i14] = E11[i14] ^ (iArr[(i11 + 12) + i14] & i13);
                }
                i11 += 24;
            }
            return c(E10, E11);
        }

        @Override
        public jk.i b(int i10) {
            int[] E10 = AbstractC15329o.E(12);
            int[] E11 = AbstractC15329o.E(12);
            int i11 = i10 * 24;
            for (int i12 = 0; i12 < 12; i12++) {
                int[] iArr = this.f97226b;
                E10[i12] = iArr[i11 + i12];
                E11[i12] = iArr[i11 + 12 + i12];
            }
            return c(E10, E11);
        }

        @Override
        public int getSize() {
            return this.f97225a;
        }
    }

    public M() {
        super(f97221r);
        this.f97224q = new P(this, null, null);
        this.f93868b = o(new BigInteger(1, em.h.d("FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFFFFFFFF0000000000000000FFFFFFFC")));
        this.f93869c = o(new BigInteger(1, em.h.d("B3312FA7E23EE7E4988E056BE3F82D19181D9C6EFE8141120314088F5013875AC656398D8A2ED19D2A85C8EDD3EC2AEF")));
        this.f93870d = new BigInteger(1, em.h.d("FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC7634D81F4372DDF581A0DB248B0A77AECEC196ACCC52973"));
        this.f93871e = BigInteger.valueOf(1L);
        this.f93872f = 2;
    }

    @Override
    public jk.f H(SecureRandom secureRandom) {
        int[] E10 = AbstractC15329o.E(12);
        N.l(secureRandom, E10);
        return new O(E10);
    }

    @Override
    public jk.f I(SecureRandom secureRandom) {
        int[] E10 = AbstractC15329o.E(12);
        N.m(secureRandom, E10);
        return new O(E10);
    }

    @Override
    public boolean J(int i10) {
        return i10 == 2;
    }

    public BigInteger O() {
        return f97221r;
    }

    @Override
    public AbstractC13875e e() {
        return new M();
    }

    @Override
    public jk.g g(jk.i[] iVarArr, int i10, int i11) {
        int[] iArr = new int[i11 * 24];
        int i12 = 0;
        for (int i13 = 0; i13 < i11; i13++) {
            jk.i iVar = iVarArr[i10 + i13];
            AbstractC15329o.y(12, ((O) iVar.n()).f97242g, 0, iArr, i12);
            AbstractC15329o.y(12, ((O) iVar.o()).f97242g, 0, iArr, i12 + 12);
            i12 += 24;
        }
        return new a(i11, iArr);
    }

    @Override
    public jk.i j(jk.f fVar, jk.f fVar2) {
        return new P(this, fVar, fVar2);
    }

    @Override
    public jk.i k(jk.f fVar, jk.f fVar2, jk.f[] fVarArr) {
        return new P(this, fVar, fVar2, fVarArr);
    }

    @Override
    public jk.f o(BigInteger bigInteger) {
        return new O(bigInteger);
    }

    @Override
    public int w() {
        return f97221r.bitLength();
    }

    @Override
    public jk.i x() {
        return this.f97224q;
    }
}
