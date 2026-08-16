package ol;

import android.util.DisplayMetrics;
import java.lang.reflect.Array;

public class C14598g extends C14597f {
    public C14598g(byte[] bArr) {
        byte[] bArr2 = new byte[DisplayMetrics.DENSITY_XXXHIGH];
        update(bArr, 0, bArr.length);
        e(bArr2, 0, DisplayMetrics.DENSITY_XXXHIGH);
        this.f99582a = (long[][]) Array.newInstance(Long.TYPE, 10, 8);
        this.f99583b = (int[][]) Array.newInstance(Integer.TYPE, 10, 8);
        for (int i10 = 0; i10 < 10; i10++) {
            w(this.f99583b[i10], bArr2, i10 << 5);
            v(this.f99582a[i10], bArr2, i10 << 6);
        }
    }

    public String b() {
        return "Haraka-S";
    }

    public int e(byte[] bArr, int i10, int i11) {
        byte[] bArr2 = this.f99584c;
        int i12 = this.f99585d;
        bArr2[i12] = (byte) (bArr2[i12] ^ 31);
        bArr2[31] = (byte) (bArr2[31] ^ 128);
        int i13 = i11;
        while (i13 >= 32) {
            u(this.f99584c);
            System.arraycopy(this.f99584c, 0, bArr, i10, 32);
            i10 += 32;
            i13 -= 32;
        }
        if (i13 > 0) {
            u(this.f99584c);
            System.arraycopy(this.f99584c, 0, bArr, i10, i13);
        }
        reset();
        return i11;
    }

    public void update(byte b10) {
        byte[] bArr = this.f99584c;
        int i10 = this.f99585d;
        int i11 = i10 + 1;
        this.f99585d = i11;
        bArr[i10] = (byte) (b10 ^ bArr[i10]);
        if (i11 == 32) {
            u(bArr);
            this.f99585d = 0;
        }
    }

    public void update(byte[] bArr, int i10, int i11) {
        int i12 = (this.f99585d + i11) >> 5;
        int i13 = i10;
        for (int i14 = 0; i14 < i12; i14++) {
            while (true) {
                int i15 = this.f99585d;
                if (i15 < 32) {
                    byte[] bArr2 = this.f99584c;
                    this.f99585d = i15 + 1;
                    bArr2[i15] = (byte) (bArr[i13] ^ bArr2[i15]);
                    i13++;
                }
            }
            u(this.f99584c);
            this.f99585d = 0;
        }
        while (i13 < i10 + i11) {
            byte[] bArr3 = this.f99584c;
            int i16 = this.f99585d;
            this.f99585d = i16 + 1;
            bArr3[i16] = (byte) (bArr3[i16] ^ bArr[i13]);
            i13++;
        }
    }
}
