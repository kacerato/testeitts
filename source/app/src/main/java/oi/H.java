package Oi;

import Bi.InterfaceC2379k;
import Bi.InterfaceC2392y;
import Xi.C3360o0;
import Xi.w0;

public class H extends Bi.L {

    public static final int f20139g = 1;

    public static final int f20140h = 2;

    public static final int f20141i = 3;

    public InterfaceC2392y f20142d;

    public int f20143e;

    public int f20144f;

    public H(InterfaceC2392y interfaceC2392y) {
        this.f20142d = interfaceC2392y;
        if (interfaceC2392y instanceof Bi.D) {
            this.f20143e = interfaceC2392y.f();
            this.f20144f = ((Bi.D) interfaceC2392y).i();
        } else {
            throw new IllegalArgumentException("Digest " + interfaceC2392y.b() + " unsupported");
        }
    }

    @Override
    public InterfaceC2379k d(int i10) {
        int i11 = i10 / 8;
        return new C3360o0(l(3, i11), 0, i11);
    }

    @Override
    public InterfaceC2379k e(int i10) {
        int i11 = i10 / 8;
        return new C3360o0(l(1, i11), 0, i11);
    }

    @Override
    public InterfaceC2379k f(int i10, int i11) {
        int i12 = i10 / 8;
        int i13 = i11 / 8;
        byte[] l10 = l(1, i12);
        return new w0(new C3360o0(l10, 0, i12), l(2, i13), 0, i13);
    }

    public final void k(byte[] bArr, int i10, byte[] bArr2) {
        int i11 = (bArr2[bArr2.length - 1] & 255) + (bArr[(bArr2.length + i10) - 1] & 255) + 1;
        bArr[(bArr2.length + i10) - 1] = (byte) i11;
        int i12 = i11 >>> 8;
        for (int length = bArr2.length - 2; length >= 0; length--) {
            int i13 = i10 + length;
            int i14 = i12 + (bArr2[length] & 255) + (bArr[i13] & 255);
            bArr[i13] = (byte) i14;
            i12 = i14 >>> 8;
        }
    }

    public final byte[] l(int i10, int i11) {
        byte[] bArr;
        byte[] bArr2;
        int i12;
        int i13 = this.f20144f;
        byte[] bArr3 = new byte[i13];
        byte[] bArr4 = new byte[i11];
        int i14 = 0;
        for (int i15 = 0; i15 != i13; i15++) {
            bArr3[i15] = (byte) i10;
        }
        byte[] bArr5 = this.f1849b;
        int i16 = 1;
        if (bArr5 == null || bArr5.length == 0) {
            bArr = new byte[0];
        } else {
            int i17 = this.f20144f;
            int length = i17 * (((bArr5.length + i17) - 1) / i17);
            bArr = new byte[length];
            for (int i18 = 0; i18 != length; i18++) {
                byte[] bArr6 = this.f1849b;
                bArr[i18] = bArr6[i18 % bArr6.length];
            }
        }
        byte[] bArr7 = this.f1848a;
        if (bArr7 == null || bArr7.length == 0) {
            bArr2 = new byte[0];
        } else {
            int i19 = this.f20144f;
            int length2 = i19 * (((bArr7.length + i19) - 1) / i19);
            bArr2 = new byte[length2];
            for (int i20 = 0; i20 != length2; i20++) {
                byte[] bArr8 = this.f1848a;
                bArr2[i20] = bArr8[i20 % bArr8.length];
            }
        }
        int length3 = bArr.length + bArr2.length;
        byte[] bArr9 = new byte[length3];
        System.arraycopy(bArr, 0, bArr9, 0, bArr.length);
        System.arraycopy(bArr2, 0, bArr9, bArr.length, bArr2.length);
        int i21 = this.f20144f;
        byte[] bArr10 = new byte[i21];
        int i22 = this.f20143e;
        int i23 = ((i11 + i22) - 1) / i22;
        byte[] bArr11 = new byte[i22];
        int i24 = 1;
        while (i24 <= i23) {
            this.f20142d.update(bArr3, i14, i13);
            this.f20142d.update(bArr9, i14, length3);
            this.f20142d.c(bArr11, i14);
            for (int i25 = i16; i25 < this.f1850c; i25++) {
                this.f20142d.update(bArr11, i14, i22);
                this.f20142d.c(bArr11, i14);
            }
            for (int i26 = i14; i26 != i21; i26++) {
                bArr10[i26] = bArr11[i26 % i22];
            }
            int i27 = i14;
            while (true) {
                int i28 = this.f20144f;
                if (i27 == length3 / i28) {
                    break;
                }
                k(bArr9, i28 * i27, bArr10);
                i27++;
            }
            if (i24 == i23) {
                int i29 = i24 - 1;
                int i30 = this.f20143e;
                int i31 = i29 * i30;
                int i32 = i11 - (i29 * i30);
                i12 = 0;
                System.arraycopy(bArr11, 0, bArr4, i31, i32);
            } else {
                i12 = 0;
                System.arraycopy(bArr11, 0, bArr4, (i24 - 1) * this.f20143e, i22);
            }
            i24++;
            i14 = i12;
            i16 = 1;
        }
        return bArr4;
    }
}
