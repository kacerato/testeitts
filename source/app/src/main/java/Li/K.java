package Li;

import Bi.InterfaceC2374f;
import Bi.InterfaceC2379k;
import Xi.C3360o0;
import org.bouncycastle.crypto.DataLengthException;
import org.bouncycastle.crypto.OutputLengthException;

public class K implements InterfaceC2374f {

    public static final int f13632c = 8;

    public static final int f13633d = 65535;

    public static final int f13634e = 65537;

    public int[] f13635a = null;

    public boolean f13636b;

    public K() {
        Bi.r.a(new Hi.c(b(), 128));
    }

    private int[] k(boolean z10, byte[] bArr) {
        return z10 ? j(bArr) : m(j(bArr));
    }

    @Override
    public void a(boolean z10, InterfaceC2379k interfaceC2379k) {
        if (!(interfaceC2379k instanceof C3360o0)) {
            throw new IllegalArgumentException("invalid parameter passed to IDEA init - " + interfaceC2379k.getClass().getName());
        }
        byte[] b10 = ((C3360o0) interfaceC2379k).b();
        this.f13635a = k(z10, b10);
        this.f13636b = z10;
        Bi.r.a(new Hi.c(b(), b10.length * 8, interfaceC2379k, x0.a(z10)));
    }

    @Override
    public String b() {
        return "IDEA";
    }

    @Override
    public int c() {
        return 8;
    }

    public int f(int i10) {
        return (0 - i10) & 65535;
    }

    @Override
    public int g(byte[] bArr, int i10, byte[] bArr2, int i11) {
        int[] iArr = this.f13635a;
        if (iArr == null) {
            throw new IllegalStateException("IDEA engine not initialised");
        }
        if (i10 + 8 > bArr.length) {
            throw new DataLengthException("input buffer too short");
        }
        if (i11 + 8 > bArr2.length) {
            throw new OutputLengthException("output buffer too short");
        }
        l(iArr, bArr, i10, bArr2, i11);
        return 8;
    }

    public final int i(byte[] bArr, int i10) {
        return ((bArr[i10] << 8) & 65280) + (bArr[i10 + 1] & 255);
    }

    public final int[] j(byte[] bArr) {
        int i10;
        int[] iArr = new int[52];
        int i11 = 0;
        if (bArr.length < 16) {
            byte[] bArr2 = new byte[16];
            System.arraycopy(bArr, 0, bArr2, 16 - bArr.length, bArr.length);
            bArr = bArr2;
        }
        while (true) {
            if (i11 >= 8) {
                break;
            }
            iArr[i11] = i(bArr, i11 * 2);
            i11++;
        }
        for (i10 = 8; i10 < 52; i10++) {
            int i12 = i10 & 7;
            if (i12 < 6) {
                iArr[i10] = (((iArr[i10 - 7] & 127) << 9) | (iArr[i10 - 6] >> 7)) & 65535;
            } else if (i12 == 6) {
                iArr[i10] = (((iArr[i10 - 7] & 127) << 9) | (iArr[i10 - 14] >> 7)) & 65535;
            } else {
                iArr[i10] = (((iArr[i10 - 15] & 127) << 9) | (iArr[i10 - 14] >> 7)) & 65535;
            }
        }
        return iArr;
    }

    public final void l(int[] iArr, byte[] bArr, int i10, byte[] bArr2, int i11) {
        int i12 = i(bArr, i10);
        int i13 = i(bArr, i10 + 2);
        int i14 = i(bArr, i10 + 4);
        int i15 = i(bArr, i10 + 6);
        int i16 = 0;
        int i17 = i14;
        int i18 = i13;
        int i19 = i12;
        int i20 = 0;
        while (i16 < 8) {
            int n10 = n(i19, iArr[i20]);
            int i21 = (i18 + iArr[i20 + 1]) & 65535;
            int i22 = (i17 + iArr[i20 + 2]) & 65535;
            int n11 = n(i15, iArr[i20 + 3]);
            int i23 = i20 + 5;
            int n12 = n(i22 ^ n10, iArr[i20 + 4]);
            i20 += 6;
            int n13 = n(((i21 ^ n11) + n12) & 65535, iArr[i23]);
            int i24 = 65535 & (n12 + n13);
            i19 = n10 ^ n13;
            i15 = n11 ^ i24;
            int i25 = i22 ^ n13;
            i16++;
            i17 = i21 ^ i24;
            i18 = i25;
        }
        p(n(i19, iArr[i20]), bArr2, i11);
        p(i17 + iArr[i20 + 1], bArr2, i11 + 2);
        p(i18 + iArr[i20 + 2], bArr2, i11 + 4);
        p(n(i15, iArr[i20 + 3]), bArr2, i11 + 6);
    }

    public final int[] m(int[] iArr) {
        int[] iArr2 = new int[52];
        int o10 = o(iArr[0]);
        int f10 = f(iArr[1]);
        int f11 = f(iArr[2]);
        iArr2[51] = o(iArr[3]);
        iArr2[50] = f11;
        iArr2[49] = f10;
        int i10 = 48;
        iArr2[48] = o10;
        int i11 = 4;
        for (int i12 = 1; i12 < 8; i12++) {
            int i13 = iArr[i11];
            iArr2[i10 - 1] = iArr[i11 + 1];
            iArr2[i10 - 2] = i13;
            int o11 = o(iArr[i11 + 2]);
            int f12 = f(iArr[i11 + 3]);
            int i14 = i11 + 5;
            int f13 = f(iArr[i11 + 4]);
            i11 += 6;
            iArr2[i10 - 3] = o(iArr[i14]);
            iArr2[i10 - 4] = f12;
            iArr2[i10 - 5] = f13;
            i10 -= 6;
            iArr2[i10] = o11;
        }
        int i15 = iArr[i11];
        iArr2[i10 - 1] = iArr[i11 + 1];
        iArr2[i10 - 2] = i15;
        int o12 = o(iArr[i11 + 2]);
        int f14 = f(iArr[i11 + 3]);
        int f15 = f(iArr[i11 + 4]);
        iArr2[i10 - 3] = o(iArr[i11 + 5]);
        iArr2[i10 - 4] = f15;
        iArr2[i10 - 5] = f14;
        iArr2[i10 - 6] = o12;
        return iArr2;
    }

    public final int n(int i10, int i11) {
        int i12;
        if (i10 == 0) {
            i12 = 65537 - i11;
        } else if (i11 == 0) {
            i12 = 65537 - i10;
        } else {
            int i13 = i10 * i11;
            int i14 = i13 & 65535;
            int i15 = i13 >>> 16;
            i12 = (i14 - i15) + (i14 < i15 ? 1 : 0);
        }
        return i12 & 65535;
    }

    public final int o(int i10) {
        if (i10 < 2) {
            return i10;
        }
        int i11 = 65537 / i10;
        int i12 = 65537 % i10;
        int i13 = 1;
        while (i12 != 1) {
            int i14 = i10 / i12;
            i10 %= i12;
            i13 = (i13 + (i14 * i11)) & 65535;
            if (i10 == 1) {
                return i13;
            }
            int i15 = i12 / i10;
            i12 %= i10;
            i11 = (i11 + (i15 * i13)) & 65535;
        }
        return (1 - i11) & 65535;
    }

    public final void p(int i10, byte[] bArr, int i11) {
        bArr[i11] = (byte) (i10 >>> 8);
        bArr[i11 + 1] = (byte) i10;
    }

    @Override
    public void reset() {
    }
}
