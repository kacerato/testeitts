package mk;

import java.math.BigInteger;
import java.security.SecureRandom;
import jk.AbstractC13871a;
import jk.AbstractC13875e;
import jk.InterfaceC13874d;
import sk.AbstractC15320f;

public class C14283e extends AbstractC13875e.c {

    public static final int f97318s = 2;

    public C14285f f97320q;

    public static final BigInteger f97317r = C14299m.f97375h;

    public static final jk.f[] f97319t = {new C14299m(InterfaceC13874d.f93854b)};

    public class a extends AbstractC13871a {

        public final int f97321a;

        public final int[] f97322b;

        public a(int i10, int[] iArr) {
            this.f97321a = i10;
            this.f97322b = iArr;
        }

        private jk.i c(int[] iArr, int[] iArr2) {
            return C14283e.this.k(new C14299m(iArr), new C14299m(iArr2), C14283e.f97319t);
        }

        @Override
        public jk.i a(int i10) {
            int[] h10 = AbstractC15320f.h();
            int[] h11 = AbstractC15320f.h();
            int i11 = 0;
            for (int i12 = 0; i12 < this.f97321a; i12++) {
                int i13 = ((i12 ^ i10) - 1) >> 31;
                for (int i14 = 0; i14 < 5; i14++) {
                    int i15 = h10[i14];
                    int[] iArr = this.f97322b;
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
                int[] iArr = this.f97322b;
                h10[i12] = iArr[i11 + i12];
                h11[i12] = iArr[5 + i11 + i12];
            }
            return c(h10, h11);
        }

        @Override
        public int getSize() {
            return this.f97321a;
        }
    }

    public C14283e() {
        super(f97317r);
        this.f97320q = new C14285f(this, null, null);
        this.f93868b = o(InterfaceC13874d.f93853a);
        this.f93869c = o(BigInteger.valueOf(7L));
        this.f93870d = new BigInteger(1, em.h.d("0100000000000000000001B8FA16DFAB9ACA16B6B3"));
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
        return f97317r;
    }

    @Override
    public AbstractC13875e e() {
        return new C14283e();
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
        return new C14285f(this, fVar, fVar2);
    }

    @Override
    public jk.i k(jk.f fVar, jk.f fVar2, jk.f[] fVarArr) {
        return new C14285f(this, fVar, fVar2, fVarArr);
    }

    @Override
    public jk.f o(BigInteger bigInteger) {
        return new C14299m(bigInteger);
    }

    @Override
    public int w() {
        return f97317r.bitLength();
    }

    @Override
    public jk.i x() {
        return this.f97320q;
    }
}
