package Li;

import Bi.InterfaceC2374f;
import Bi.InterfaceC2379k;
import Xi.C3360o0;

public class Y implements InterfaceC2374f {

    public static final int f13800d = -1209970333;

    public static final int f13801e = -1640531527;

    public int f13802a = 12;

    public int[] f13803b = null;

    public boolean f13804c;

    private int f(byte[] bArr, int i10) {
        return ((bArr[i10 + 3] & 255) << 24) | (bArr[i10] & 255) | ((bArr[i10 + 1] & 255) << 8) | ((bArr[i10 + 2] & 255) << 16);
    }

    private int i(byte[] bArr, int i10, byte[] bArr2, int i11) {
        int f10 = f(bArr, i10);
        int f11 = f(bArr, i10 + 4);
        for (int i12 = this.f13802a; i12 >= 1; i12--) {
            int i13 = i12 * 2;
            f11 = l(f11 - this.f13803b[i13 + 1], f10) ^ f10;
            f10 = l(f10 - this.f13803b[i13], f11) ^ f11;
        }
        n(f10 - this.f13803b[0], bArr2, i11);
        n(f11 - this.f13803b[1], bArr2, i11 + 4);
        return 8;
    }

    private int j(byte[] bArr, int i10, byte[] bArr2, int i11) {
        int f10 = f(bArr, i10) + this.f13803b[0];
        int f11 = f(bArr, i10 + 4) + this.f13803b[1];
        for (int i12 = 1; i12 <= this.f13802a; i12++) {
            int i13 = i12 * 2;
            f10 = k(f10 ^ f11, f11) + this.f13803b[i13];
            f11 = k(f11 ^ f10, f10) + this.f13803b[i13 + 1];
        }
        n(f10, bArr2, i11);
        n(f11, bArr2, i11 + 4);
        return 8;
    }

    private int k(int i10, int i11) {
        int i12 = i11 & 31;
        return (i10 >>> (32 - i12)) | (i10 << i12);
    }

    private int l(int i10, int i11) {
        int i12 = i11 & 31;
        return (i10 << (32 - i12)) | (i10 >>> i12);
    }

    private void m(byte[] bArr) {
        int[] iArr;
        int length = (bArr.length + 3) / 4;
        int[] iArr2 = new int[length];
        for (int i10 = 0; i10 != bArr.length; i10++) {
            int i11 = i10 / 4;
            iArr2[i11] = iArr2[i11] + ((bArr[i10] & 255) << ((i10 % 4) * 8));
        }
        int[] iArr3 = new int[(this.f13802a + 1) * 2];
        this.f13803b = iArr3;
        iArr3[0] = -1209970333;
        int i12 = 1;
        while (true) {
            iArr = this.f13803b;
            if (i12 >= iArr.length) {
                break;
            }
            iArr[i12] = iArr[i12 - 1] - 1640531527;
            i12++;
        }
        int length2 = length > iArr.length ? length * 3 : iArr.length * 3;
        int i13 = 0;
        int i14 = 0;
        int i15 = 0;
        int i16 = 0;
        for (int i17 = 0; i17 < length2; i17++) {
            int[] iArr4 = this.f13803b;
            i14 = k(iArr4[i13] + i14 + i15, 3);
            iArr4[i13] = i14;
            i15 = k(iArr2[i16] + i14 + i15, i15 + i14);
            iArr2[i16] = i15;
            i13 = (i13 + 1) % this.f13803b.length;
            i16 = (i16 + 1) % length;
        }
    }

    private void n(int i10, byte[] bArr, int i11) {
        bArr[i11] = (byte) i10;
        bArr[i11 + 1] = (byte) (i10 >> 8);
        bArr[i11 + 2] = (byte) (i10 >> 16);
        bArr[i11 + 3] = (byte) (i10 >> 24);
    }

    @Override
    public void a(boolean z10, InterfaceC2379k interfaceC2379k) {
        byte[] b10;
        if (interfaceC2379k instanceof Xi.C0) {
            Xi.C0 c02 = (Xi.C0) interfaceC2379k;
            this.f13802a = c02.b();
            b10 = c02.a();
            m(b10);
        } else {
            if (!(interfaceC2379k instanceof C3360o0)) {
                throw new IllegalArgumentException("invalid parameter passed to RC532 init - " + interfaceC2379k.getClass().getName());
            }
            b10 = ((C3360o0) interfaceC2379k).b();
            m(b10);
        }
        this.f13804c = z10;
        Bi.r.a(new Hi.c(b(), b10.length * 8, interfaceC2379k, x0.a(z10)));
    }

    @Override
    public String b() {
        return "RC5-32";
    }

    @Override
    public int c() {
        return 8;
    }

    @Override
    public int g(byte[] bArr, int i10, byte[] bArr2, int i11) {
        return this.f13804c ? j(bArr, i10, bArr2, i11) : i(bArr, i10, bArr2, i11);
    }

    @Override
    public void reset() {
    }
}
