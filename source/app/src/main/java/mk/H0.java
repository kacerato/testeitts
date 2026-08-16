package mk;

import android.view.KeyEvent;
import java.math.BigInteger;
import jk.AbstractC13871a;
import jk.AbstractC13875e;
import jk.InterfaceC13874d;
import sk.AbstractC15324j;

public class H0 extends AbstractC13875e.b {

    public static final int f97193s = 6;

    public static final jk.f[] f97194t = {new G0(InterfaceC13874d.f93854b)};

    public I0 f97195r;

    public class a extends AbstractC13871a {

        public final int f97196a;

        public final long[] f97197b;

        public a(int i10, long[] jArr) {
            this.f97196a = i10;
            this.f97197b = jArr;
        }

        private jk.i c(long[] jArr, long[] jArr2) {
            return H0.this.k(new G0(jArr), new G0(jArr2), H0.f97194t);
        }

        @Override
        public jk.i a(int i10) {
            long[] c10 = AbstractC15324j.c();
            long[] c11 = AbstractC15324j.c();
            int i11 = 0;
            for (int i12 = 0; i12 < this.f97196a; i12++) {
                long j10 = ((i12 ^ i10) - 1) >> 31;
                for (int i13 = 0; i13 < 5; i13++) {
                    long j11 = c10[i13];
                    long[] jArr = this.f97197b;
                    c10[i13] = j11 ^ (jArr[i11 + i13] & j10);
                    c11[i13] = c11[i13] ^ (jArr[(i11 + 5) + i13] & j10);
                }
                i11 += 10;
            }
            return c(c10, c11);
        }

        @Override
        public jk.i b(int i10) {
            long[] c10 = AbstractC15324j.c();
            long[] c11 = AbstractC15324j.c();
            int i11 = i10 * 10;
            for (int i12 = 0; i12 < 5; i12++) {
                long[] jArr = this.f97197b;
                c10[i12] = jArr[i11 + i12];
                c11[i12] = jArr[5 + i11 + i12];
            }
            return c(c10, c11);
        }

        @Override
        public int getSize() {
            return this.f97196a;
        }
    }

    public H0() {
        super(KeyEvent.KEYCODE_SYSTEM_NAVIGATION_RIGHT, 5, 7, 12);
        this.f97195r = new I0(this, null, null);
        this.f93868b = o(BigInteger.valueOf(0L));
        this.f93869c = o(BigInteger.valueOf(1L));
        this.f93870d = new BigInteger(1, em.h.d("01FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE9AE2ED07577265DFF7F94451E061E163C61"));
        this.f93871e = BigInteger.valueOf(4L);
        this.f93872f = 6;
    }

    @Override
    public boolean J(int i10) {
        return i10 == 6;
    }

    @Override
    public boolean P() {
        return true;
    }

    public int S() {
        return 5;
    }

    public int T() {
        return 7;
    }

    public int U() {
        return 12;
    }

    public int V() {
        return KeyEvent.KEYCODE_SYSTEM_NAVIGATION_RIGHT;
    }

    public boolean W() {
        return false;
    }

    @Override
    public AbstractC13875e e() {
        return new H0();
    }

    @Override
    public jk.g g(jk.i[] iVarArr, int i10, int i11) {
        long[] jArr = new long[i11 * 10];
        int i12 = 0;
        for (int i13 = 0; i13 < i11; i13++) {
            jk.i iVar = iVarArr[i10 + i13];
            AbstractC15324j.a(((G0) iVar.n()).f97192g, 0, jArr, i12);
            AbstractC15324j.a(((G0) iVar.o()).f97192g, 0, jArr, i12 + 5);
            i12 += 10;
        }
        return new a(i11, jArr);
    }

    @Override
    public jk.h h() {
        return new jk.C();
    }

    @Override
    public jk.i j(jk.f fVar, jk.f fVar2) {
        return new I0(this, fVar, fVar2);
    }

    @Override
    public jk.i k(jk.f fVar, jk.f fVar2, jk.f[] fVarArr) {
        return new I0(this, fVar, fVar2, fVarArr);
    }

    @Override
    public jk.f o(BigInteger bigInteger) {
        return new G0(bigInteger);
    }

    @Override
    public int w() {
        return KeyEvent.KEYCODE_SYSTEM_NAVIGATION_RIGHT;
    }

    @Override
    public jk.i x() {
        return this.f97195r;
    }
}
