package Li;

import Bi.InterfaceC2374f;
import Bi.InterfaceC2379k;
import Xi.C3360o0;
import java.lang.reflect.Array;
import org.bouncycastle.crypto.DataLengthException;

public class O implements InterfaceC2374f {

    public static final int[] f13710A = {-1007687205, 1147300610, 2044886154, 2027892972, 1902027934, -947529206, -531697110, -440137385};

    public static final int f13711e = 16;

    public static final int f13712f = 4;

    public static final int f13713g = 4;

    public static final int f13714h = 3;

    public static final int f13715i = 6;

    public static final int f13716j = 8;

    public static final int f13717k = 7;

    public static final int f13718l = 16;

    public static final int f13719m = 0;

    public static final int f13720n = 1;

    public static final int f13721o = 2;

    public static final int f13722p = 3;

    public static final int f13723q = 4;

    public static final int f13724r = 5;

    public static final int f13725s = 1;

    public static final int f13726t = 3;

    public static final int f13727u = 5;

    public static final int f13728v = 6;

    public static final int f13729w = 9;

    public static final int f13730x = 11;

    public static final int f13731y = 13;

    public static final int f13732z = 17;

    public final int[] f13733a = new int[4];

    public int f13734b;

    public int[][] f13735c;

    public boolean f13736d;

    public static int f(byte[] bArr) {
        if (bArr == null) {
            return 0;
        }
        return bArr.length;
    }

    public static void i(byte[] bArr, int i10, boolean z10) {
        int f10 = f(bArr);
        int i11 = i10 + 16;
        if (i10 < 0 || i11 < 0 || i11 > f10) {
            if (!z10) {
                throw new DataLengthException("Input buffer too short.");
            }
        }
    }

    private int j(byte[] bArr, int i10, byte[] bArr2, int i11) {
        org.bouncycastle.util.p.t(bArr, i10, this.f13733a, 0, 4);
        for (int i12 = this.f13734b - 1; i12 >= 0; i12--) {
            k(i12);
        }
        org.bouncycastle.util.p.o(this.f13733a, bArr2, i11);
        return 16;
    }

    private int l(byte[] bArr, int i10, byte[] bArr2, int i11) {
        org.bouncycastle.util.p.t(bArr, i10, this.f13733a, 0, 4);
        for (int i12 = 0; i12 < this.f13734b; i12++) {
            m(i12);
        }
        org.bouncycastle.util.p.o(this.f13733a, bArr2, i11);
        return 16;
    }

    public static int r(int i10) {
        if (i10 == 0) {
            return 3;
        }
        return i10 - 1;
    }

    public static int s(int i10) {
        if (i10 == 3) {
            return 0;
        }
        return i10 + 1;
    }

    public static int t(int i10, int i11) {
        return (i10 >>> (32 - i11)) | (i10 << i11);
    }

    public static int u(int i10, int i11) {
        return (i10 << (32 - i11)) | (i10 >>> i11);
    }

    @Override
    public void a(boolean z10, InterfaceC2379k interfaceC2379k) {
        if (!(interfaceC2379k instanceof C3360o0)) {
            throw new IllegalArgumentException("Invalid parameter passed to LEA init - " + interfaceC2379k.getClass().getName());
        }
        byte[] b10 = ((C3360o0) interfaceC2379k).b();
        int length = b10.length;
        if ((length << 1) % 16 != 0 || length < 16 || length > 32) {
            throw new IllegalArgumentException("KeyBitSize must be 128, 192 or 256");
        }
        this.f13736d = z10;
        Bi.r.a(new Hi.c(b(), length * 8, interfaceC2379k, x0.a(this.f13736d)));
        q(b10);
    }

    @Override
    public String b() {
        return "LEA";
    }

    @Override
    public int c() {
        return 16;
    }

    @Override
    public int g(byte[] bArr, int i10, byte[] bArr2, int i11) {
        i(bArr, i10, false);
        i(bArr2, i11, true);
        return this.f13736d ? l(bArr, i10, bArr2, i11) : j(bArr, i10, bArr2, i11);
    }

    public final void k(int i10) {
        int[] iArr = this.f13735c[i10];
        int i11 = i10 % 4;
        int s10 = s(i11);
        int[] iArr2 = this.f13733a;
        iArr2[s10] = iArr[1] ^ (u(iArr2[s10], 9) - (this.f13733a[i11] ^ iArr[0]));
        int s11 = s(s10);
        int[] iArr3 = this.f13733a;
        iArr3[s11] = (t(iArr3[s11], 5) - (this.f13733a[s10] ^ iArr[2])) ^ iArr[3];
        int s12 = s(s11);
        int[] iArr4 = this.f13733a;
        iArr4[s12] = iArr[5] ^ (t(iArr4[s12], 3) - (this.f13733a[s11] ^ iArr[4]));
    }

    public final void m(int i10) {
        int[] iArr = this.f13735c[i10];
        int i11 = (i10 + 3) % 4;
        int r10 = r(i11);
        int[] iArr2 = this.f13733a;
        iArr2[i11] = u((iArr[4] ^ iArr2[r10]) + (iArr2[i11] ^ iArr[5]), 3);
        int r11 = r(r10);
        int[] iArr3 = this.f13733a;
        iArr3[r10] = u((iArr3[r11] ^ iArr[2]) + (iArr[3] ^ iArr3[r10]), 5);
        int r12 = r(r11);
        int[] iArr4 = this.f13733a;
        iArr4[r11] = t((iArr4[r12] ^ iArr[0]) + (iArr[1] ^ iArr4[r11]), 9);
    }

    public final void n(int[] iArr) {
        for (int i10 = 0; i10 < this.f13734b; i10++) {
            int t10 = t(f13710A[i10 & 3], i10);
            iArr[0] = t(iArr[0] + t10, 1);
            iArr[1] = t(iArr[1] + t(t10, 1), 3);
            iArr[2] = t(iArr[2] + t(t10, 2), 6);
            iArr[3] = t(iArr[3] + t(t10, 3), 11);
            int[] iArr2 = this.f13735c[i10];
            iArr2[0] = iArr[0];
            iArr2[1] = iArr[1];
            iArr2[2] = iArr[2];
            int i11 = iArr[1];
            iArr2[3] = i11;
            iArr2[4] = iArr[3];
            iArr2[5] = i11;
        }
    }

    public final void o(int[] iArr) {
        for (int i10 = 0; i10 < this.f13734b; i10++) {
            int t10 = t(f13710A[i10 % 6], i10);
            iArr[0] = t(iArr[0] + t(t10, 0), 1);
            iArr[1] = t(iArr[1] + t(t10, 1), 3);
            iArr[2] = t(iArr[2] + t(t10, 2), 6);
            iArr[3] = t(iArr[3] + t(t10, 3), 11);
            iArr[4] = t(iArr[4] + t(t10, 4), 13);
            iArr[5] = t(iArr[5] + t(t10, 5), 17);
            System.arraycopy(iArr, 0, this.f13735c[i10], 0, 6);
        }
    }

    public final void p(int[] iArr) {
        int i10 = 0;
        for (int i11 = 0; i11 < this.f13734b; i11++) {
            int t10 = t(f13710A[i11 & 7], i11);
            int[] iArr2 = this.f13735c[i11];
            int i12 = i10 & 7;
            int t11 = t(iArr[i12] + t10, 1);
            iArr2[0] = t11;
            iArr[i12] = t11;
            int i13 = (i10 + 1) & 7;
            int t12 = t(iArr[i13] + t(t10, 1), 3);
            iArr2[1] = t12;
            iArr[i13] = t12;
            int i14 = (i10 + 2) & 7;
            int t13 = t(iArr[i14] + t(t10, 2), 6);
            iArr2[2] = t13;
            iArr[i14] = t13;
            int i15 = (i10 + 3) & 7;
            int t14 = t(iArr[i15] + t(t10, 3), 11);
            iArr2[3] = t14;
            iArr[i15] = t14;
            int i16 = (i10 + 4) & 7;
            int t15 = t(iArr[i16] + t(t10, 4), 13);
            iArr2[4] = t15;
            iArr[i16] = t15;
            int i17 = (i10 + 5) & 7;
            int t16 = t(iArr[i17] + t(t10, 5), 17);
            iArr2[5] = t16;
            i10 += 6;
            iArr[i17] = t16;
        }
    }

    public final void q(byte[] bArr) {
        int length = (bArr.length >> 1) + 16;
        this.f13734b = length;
        this.f13735c = (int[][]) Array.newInstance(Integer.TYPE, length, 6);
        int length2 = bArr.length / 4;
        int[] iArr = new int[length2];
        org.bouncycastle.util.p.t(bArr, 0, iArr, 0, length2);
        if (length2 == 4) {
            n(iArr);
        } else if (length2 != 6) {
            p(iArr);
        } else {
            o(iArr);
        }
    }

    @Override
    public void reset() {
    }
}
