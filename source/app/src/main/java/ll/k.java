package ll;

import java.lang.reflect.Array;

public class k {

    public h f96618b;

    public final int f96619c = 256;

    public C14155a f96617a = new C14155a();

    public k(h hVar) {
        this.f96618b = hVar;
    }

    public final short[] a(short[][] sArr) {
        int e10 = this.f96618b.e();
        short[] sArr2 = new short[e10];
        for (int i10 = 0; i10 < 8; i10++) {
            int pow = (int) Math.pow(2.0d, i10);
            short[] sArr3 = new short[e10];
            for (int i11 = pow; i11 < 256; i11 += pow * 2) {
                for (int i12 = 0; i12 < pow; i12++) {
                    sArr3 = this.f96617a.c(sArr3, sArr[i11 + i12]);
                }
            }
            C14155a c14155a = this.f96617a;
            sArr2 = c14155a.c(sArr2, c14155a.g((short) pow, sArr3));
        }
        return sArr2;
    }

    public final short[][] b(short[] sArr, short[] sArr2, short[][][] sArr3, int i10) {
        short[][] sArr4 = (short[][]) Array.newInstance(Short.TYPE, 256, i10);
        int length = sArr2.length;
        short[][] sArr5 = sArr3[0];
        if (length != sArr5.length || sArr.length != sArr5[0].length || sArr3.length != i10) {
            throw new RuntimeException("Accumulator calculation not possible!");
        }
        for (int i11 = 0; i11 < sArr2.length; i11++) {
            short[] g10 = this.f96617a.g(sArr2[i11], sArr);
            for (int i12 = 0; i12 < sArr.length; i12++) {
                for (int i13 = 0; i13 < sArr3.length; i13++) {
                    short s10 = g10[i12];
                    if (s10 != 0) {
                        short[] sArr6 = sArr4[s10];
                        sArr6[i13] = C14156b.a(sArr6[i13], sArr3[i13][i11][i12]);
                    }
                }
            }
        }
        return sArr4;
    }

    public short[] c(j jVar, short[] sArr) {
        return a(b(sArr, sArr, jVar.f96610e, this.f96618b.e()));
    }

    public short[] d(j jVar, short[] sArr) {
        int j10 = this.f96618b.j();
        int h10 = this.f96618b.h();
        int i10 = this.f96618b.i();
        short[][] sArr2 = (short[][]) Array.newInstance(Short.TYPE, 256, h10 + i10);
        short[] c02 = org.bouncycastle.util.a.c0(sArr, 0, j10);
        int i11 = j10 + h10;
        short[] c03 = org.bouncycastle.util.a.c0(sArr, j10, i11);
        short[] c04 = org.bouncycastle.util.a.c0(sArr, i11, sArr.length);
        C14157c c14157c = new C14157c(jVar.f96611f, jVar.e().a());
        short[][] a10 = this.f96617a.a(this.f96617a.a(this.f96617a.a(this.f96617a.a(this.f96617a.a(b(c02, c02, m.h(c14157c, h10, j10, j10, true), h10), b(c03, c02, m.h(c14157c, h10, j10, h10, false), h10)), b(c04, c02, jVar.f96612g, h10)), b(c03, c03, jVar.f96613h, h10)), b(c04, c03, jVar.f96614i, h10)), b(c04, c04, jVar.f96615j, h10));
        short[][] a11 = this.f96617a.a(this.f96617a.a(this.f96617a.a(this.f96617a.a(this.f96617a.a(b(c02, c02, m.h(c14157c, i10, j10, j10, true), i10), b(c03, c02, m.h(c14157c, i10, j10, h10, false), i10)), b(c04, c02, m.h(c14157c, i10, j10, i10, false), i10)), b(c03, c03, m.h(c14157c, i10, h10, h10, true), i10)), b(c04, c03, m.h(c14157c, i10, h10, i10, false), i10)), b(c04, c04, jVar.f96616k, i10));
        for (int i12 = 0; i12 < 256; i12++) {
            sArr2[i12] = org.bouncycastle.util.a.G(a10[i12], a11[i12]);
        }
        return a(sArr2);
    }
}
