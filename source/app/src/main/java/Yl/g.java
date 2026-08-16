package Yl;

import java.lang.reflect.Array;

public class g {

    public long[] f30639a;

    public int f30640b;

    public g(e eVar) {
        int length = eVar.f30630a.length;
        this.f30640b = length;
        this.f30639a = new long[(length + 4) / 5];
        int i10 = 0;
        int i11 = 0;
        for (int i12 = 0; i12 < this.f30640b; i12++) {
            long[] jArr = this.f30639a;
            jArr[i10] = jArr[i10] | (eVar.f30630a[i12] << i11);
            i11 += 12;
            if (i11 >= 60) {
                i10++;
                i11 = 0;
            }
        }
    }

    public g a(m mVar) {
        long j10;
        int i10;
        long[][] jArr = (long[][]) Array.newInstance(Long.TYPE, 5, (this.f30639a.length + ((mVar.size() + 4) / 5)) - 1);
        int[] d10 = mVar.d();
        for (int i11 = 0; i11 != d10.length; i11++) {
            int i12 = d10[i11];
            int i13 = i12 / 5;
            int i14 = i12 - (i13 * 5);
            int i15 = 0;
            while (true) {
                long[] jArr2 = this.f30639a;
                if (i15 < jArr2.length) {
                    long[] jArr3 = jArr[i14];
                    jArr3[i13] = (jArr3[i13] + jArr2[i15]) & 576319980446939135L;
                    i13++;
                    i15++;
                }
            }
        }
        int[] f10 = mVar.f();
        for (int i16 = 0; i16 != f10.length; i16++) {
            int i17 = f10[i16];
            int i18 = i17 / 5;
            int i19 = i17 - (i18 * 5);
            int i20 = 0;
            while (true) {
                long[] jArr4 = this.f30639a;
                if (i20 < jArr4.length) {
                    long[] jArr5 = jArr[i19];
                    jArr5[i18] = ((jArr5[i18] + 576601524159907840L) - jArr4[i20]) & 576319980446939135L;
                    i18++;
                    i20++;
                }
            }
        }
        long[] jArr6 = jArr[0];
        long[] T10 = org.bouncycastle.util.a.T(jArr6, jArr6.length + 1);
        for (int i21 = 1; i21 <= 4; i21++) {
            int i22 = i21 * 12;
            int i23 = 60 - i22;
            long j11 = (1 << i23) - 1;
            int length = jArr[i21].length;
            int i24 = 0;
            while (i24 < length) {
                long j12 = jArr[i21][i24];
                T10[i24] = (T10[i24] + ((j12 & j11) << i22)) & 576319980446939135L;
                i24++;
                T10[i24] = (T10[i24] + (j12 >> i23)) & 576319980446939135L;
            }
        }
        int i25 = (this.f30640b % 5) * 12;
        for (int length2 = this.f30639a.length - 1; length2 < T10.length; length2++) {
            long[] jArr7 = this.f30639a;
            if (length2 == jArr7.length - 1) {
                j10 = this.f30640b == 5 ? 0L : T10[length2] >> i25;
                i10 = 0;
            } else {
                j10 = T10[length2];
                i10 = (length2 * 5) - this.f30640b;
            }
            int i26 = i10 / 5;
            int i27 = i10 - (i26 * 5);
            long j13 = j10 << (i27 * 12);
            long j14 = j10 >> ((5 - i27) * 12);
            T10[i26] = (T10[i26] + j13) & 576319980446939135L;
            int i28 = i26 + 1;
            if (i28 < jArr7.length) {
                T10[i28] = (T10[i28] + j14) & 576319980446939135L;
            }
        }
        return new g(T10, this.f30640b);
    }

    public e b() {
        int[] iArr = new int[this.f30640b];
        int i10 = 0;
        int i11 = 0;
        for (int i12 = 0; i12 < this.f30640b; i12++) {
            iArr[i12] = (int) ((this.f30639a[i10] >> i11) & 2047);
            i11 += 12;
            if (i11 >= 60) {
                i10++;
                i11 = 0;
            }
        }
        return new e(iArr);
    }

    public g(long[] jArr, int i10) {
        this.f30639a = jArr;
        this.f30640b = i10;
    }
}
