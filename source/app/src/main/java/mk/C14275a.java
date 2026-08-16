package mk;

import java.math.BigInteger;
import java.security.SecureRandom;
import jk.AbstractC13871a;
import jk.AbstractC13875e;
import jk.InterfaceC13874d;
import sk.AbstractC15319e;

public class C14275a extends AbstractC13875e.c {

    public static final int f97293s = 2;

    public C14281d f97295q;

    public static final BigInteger f97292r = C14279c.f97308h;

    public static final jk.f[] f97294t = {new C14279c(InterfaceC13874d.f93854b)};

    public class C1876a extends AbstractC13871a {

        public final int f97296a;

        public final int[] f97297b;

        public C1876a(int i10, int[] iArr) {
            this.f97296a = i10;
            this.f97297b = iArr;
        }

        private jk.i c(int[] iArr, int[] iArr2) {
            return C14275a.this.k(new C14279c(iArr), new C14279c(iArr2), C14275a.f97294t);
        }

        @Override
        public jk.i a(int i10) {
            int[] j10 = AbstractC15319e.j();
            int[] j11 = AbstractC15319e.j();
            int i11 = 0;
            for (int i12 = 0; i12 < this.f97296a; i12++) {
                int i13 = ((i12 ^ i10) - 1) >> 31;
                for (int i14 = 0; i14 < 4; i14++) {
                    int i15 = j10[i14];
                    int[] iArr = this.f97297b;
                    j10[i14] = i15 ^ (iArr[i11 + i14] & i13);
                    j11[i14] = j11[i14] ^ (iArr[(i11 + 4) + i14] & i13);
                }
                i11 += 8;
            }
            return c(j10, j11);
        }

        @Override
        public jk.i b(int i10) {
            int[] j10 = AbstractC15319e.j();
            int[] j11 = AbstractC15319e.j();
            int i11 = i10 * 8;
            for (int i12 = 0; i12 < 4; i12++) {
                int[] iArr = this.f97297b;
                j10[i12] = iArr[i11 + i12];
                j11[i12] = iArr[4 + i11 + i12];
            }
            return c(j10, j11);
        }

        @Override
        public int getSize() {
            return this.f97296a;
        }
    }

    public C14275a() {
        super(f97292r);
        this.f97295q = new C14281d(this, null, null);
        this.f93868b = o(new BigInteger(1, em.h.d("FFFFFFFDFFFFFFFFFFFFFFFFFFFFFFFC")));
        this.f93869c = o(new BigInteger(1, em.h.d("E87579C11079F43DD824993C2CEE5ED3")));
        this.f93870d = new BigInteger(1, em.h.d("FFFFFFFE0000000075A30D1B9038A115"));
        this.f93871e = BigInteger.valueOf(1L);
        this.f93872f = 2;
    }

    @Override
    public jk.f H(SecureRandom secureRandom) {
        int[] j10 = AbstractC15319e.j();
        C14277b.l(secureRandom, j10);
        return new C14279c(j10);
    }

    @Override
    public jk.f I(SecureRandom secureRandom) {
        int[] j10 = AbstractC15319e.j();
        C14277b.m(secureRandom, j10);
        return new C14279c(j10);
    }

    @Override
    public boolean J(int i10) {
        return i10 == 2;
    }

    public BigInteger O() {
        return f97292r;
    }

    @Override
    public AbstractC13875e e() {
        return new C14275a();
    }

    @Override
    public jk.g g(jk.i[] iVarArr, int i10, int i11) {
        int[] iArr = new int[i11 * 8];
        int i12 = 0;
        for (int i13 = 0; i13 < i11; i13++) {
            jk.i iVar = iVarArr[i10 + i13];
            AbstractC15319e.f(((C14279c) iVar.n()).f97309g, 0, iArr, i12);
            AbstractC15319e.f(((C14279c) iVar.o()).f97309g, 0, iArr, i12 + 4);
            i12 += 8;
        }
        return new C1876a(i11, iArr);
    }

    @Override
    public jk.i j(jk.f fVar, jk.f fVar2) {
        return new C14281d(this, fVar, fVar2);
    }

    @Override
    public jk.i k(jk.f fVar, jk.f fVar2, jk.f[] fVarArr) {
        return new C14281d(this, fVar, fVar2, fVarArr);
    }

    @Override
    public jk.f o(BigInteger bigInteger) {
        return new C14279c(bigInteger);
    }

    @Override
    public int w() {
        return f97292r.bitLength();
    }

    @Override
    public jk.i x() {
        return this.f97295q;
    }
}
