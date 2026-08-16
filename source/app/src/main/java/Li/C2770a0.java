package Li;

import Bi.InterfaceC2374f;
import Bi.InterfaceC2379k;
import Xi.C3360o0;
import org.bouncycastle.crypto.DataLengthException;
import org.bouncycastle.crypto.OutputLengthException;

public class C2770a0 implements InterfaceC2374f {

    public static final int f13827c = 32;

    public static final int f13828d = 4;

    public static final int f13829e = 20;

    public static final int f13830f = -1209970333;

    public static final int f13831g = -1640531527;

    public static final int f13832h = 5;

    public int[] f13833a = null;

    public boolean f13834b;

    private int f(byte[] bArr, int i10) {
        int i11 = 0;
        for (int i12 = 3; i12 >= 0; i12--) {
            i11 = (i11 << 8) + (bArr[i12 + i10] & 255);
        }
        return i11;
    }

    private int i(byte[] bArr, int i10, byte[] bArr2, int i11) {
        int f10 = f(bArr, i10);
        int f11 = f(bArr, i10 + 4);
        int f12 = f(bArr, i10 + 8);
        int f13 = f(bArr, i10 + 12);
        int[] iArr = this.f13833a;
        int i12 = f12 - iArr[43];
        int i13 = f10 - iArr[42];
        int i14 = 20;
        while (i14 >= 1) {
            int k10 = k(((i13 * 2) + 1) * i13, 5);
            int k11 = k(((i12 * 2) + 1) * i12, 5);
            int i15 = i14 * 2;
            int l10 = l(f11 - this.f13833a[i15 + 1], k10) ^ k11;
            i14--;
            int i16 = i13;
            i13 = l(f13 - this.f13833a[i15], k11) ^ k10;
            f13 = i12;
            i12 = l10;
            f11 = i16;
        }
        int[] iArr2 = this.f13833a;
        int i17 = f13 - iArr2[1];
        int i18 = f11 - iArr2[0];
        n(i13, bArr2, i11);
        n(i18, bArr2, i11 + 4);
        n(i12, bArr2, i11 + 8);
        n(i17, bArr2, i11 + 12);
        return 16;
    }

    private int j(byte[] bArr, int i10, byte[] bArr2, int i11) {
        int f10 = f(bArr, i10);
        int f11 = f(bArr, i10 + 4);
        int f12 = f(bArr, i10 + 8);
        int f13 = f(bArr, i10 + 12);
        int[] iArr = this.f13833a;
        int i12 = f11 + iArr[0];
        int i13 = f13 + iArr[1];
        int i14 = 1;
        while (i14 <= 20) {
            int k10 = k(((i12 * 2) + 1) * i12, 5);
            int k11 = k(((i13 * 2) + 1) * i13, 5);
            int i15 = i14 * 2;
            int k12 = k(f10 ^ k10, k11) + this.f13833a[i15];
            int k13 = k(f12 ^ k11, k10) + this.f13833a[i15 + 1];
            i14++;
            f12 = i13;
            i13 = k12;
            f10 = i12;
            i12 = k13;
        }
        int[] iArr2 = this.f13833a;
        int i16 = f10 + iArr2[42];
        int i17 = f12 + iArr2[43];
        n(i16, bArr2, i11);
        n(i12, bArr2, i11 + 4);
        n(i17, bArr2, i11 + 8);
        n(i13, bArr2, i11 + 12);
        return 16;
    }

    private int k(int i10, int i11) {
        return (i10 >>> (-i11)) | (i10 << i11);
    }

    private int l(int i10, int i11) {
        return (i10 << (-i11)) | (i10 >>> i11);
    }

    private void m(byte[] bArr) {
        int[] iArr;
        int length = bArr.length;
        int length2 = (bArr.length + 3) / 4;
        int[] iArr2 = new int[length2];
        for (int length3 = bArr.length - 1; length3 >= 0; length3--) {
            int i10 = length3 / 4;
            iArr2[i10] = (iArr2[i10] << 8) + (bArr[length3] & 255);
        }
        int[] iArr3 = new int[44];
        this.f13833a = iArr3;
        iArr3[0] = -1209970333;
        int i11 = 1;
        while (true) {
            iArr = this.f13833a;
            if (i11 >= iArr.length) {
                break;
            }
            iArr[i11] = iArr[i11 - 1] - 1640531527;
            i11++;
        }
        int length4 = length2 > iArr.length ? length2 * 3 : iArr.length * 3;
        int i12 = 0;
        int i13 = 0;
        int i14 = 0;
        int i15 = 0;
        for (int i16 = 0; i16 < length4; i16++) {
            int[] iArr4 = this.f13833a;
            i13 = k(iArr4[i12] + i13 + i14, 3);
            iArr4[i12] = i13;
            i14 = k(iArr2[i15] + i13 + i14, i14 + i13);
            iArr2[i15] = i14;
            i12 = (i12 + 1) % this.f13833a.length;
            i15 = (i15 + 1) % length2;
        }
    }

    private void n(int i10, byte[] bArr, int i11) {
        for (int i12 = 0; i12 < 4; i12++) {
            bArr[i12 + i11] = (byte) i10;
            i10 >>>= 8;
        }
    }

    @Override
    public void a(boolean z10, InterfaceC2379k interfaceC2379k) {
        if (!(interfaceC2379k instanceof C3360o0)) {
            throw new IllegalArgumentException("invalid parameter passed to RC6 init - " + interfaceC2379k.getClass().getName());
        }
        this.f13834b = z10;
        byte[] b10 = ((C3360o0) interfaceC2379k).b();
        m(b10);
        Bi.r.a(new Hi.c(b(), b10.length * 8, interfaceC2379k, x0.a(z10)));
    }

    @Override
    public String b() {
        return "RC6";
    }

    @Override
    public int c() {
        return 16;
    }

    @Override
    public int g(byte[] bArr, int i10, byte[] bArr2, int i11) {
        int c10 = c();
        if (this.f13833a == null) {
            throw new IllegalStateException("RC6 engine not initialised");
        }
        if (i10 + c10 > bArr.length) {
            throw new DataLengthException("input buffer too short");
        }
        if (c10 + i11 <= bArr2.length) {
            return this.f13834b ? j(bArr, i10, bArr2, i11) : i(bArr, i10, bArr2, i11);
        }
        throw new OutputLengthException("output buffer too short");
    }

    @Override
    public void reset() {
    }
}
