package Ql;

import Bi.InterfaceC2392y;

public class a {

    public InterfaceC2392y f22484a;

    public a(InterfaceC2392y interfaceC2392y) {
        this.f22484a = interfaceC2392y;
    }

    public final void a(byte[] bArr, byte[] bArr2) {
        byte b10 = 0;
        for (int i10 = 0; i10 < bArr.length; i10++) {
            int i11 = (bArr[i10] & 255) + (bArr2[i10] & 255) + b10;
            bArr[i10] = (byte) i11;
            b10 = (byte) (i11 >> 8);
        }
    }

    public final void b(byte[] bArr) {
        byte b10 = 1;
        for (int i10 = 0; i10 < bArr.length; i10++) {
            int i11 = (bArr[i10] & 255) + b10;
            bArr[i10] = (byte) i11;
            b10 = (byte) (i11 >> 8);
        }
    }

    public byte[] c(byte[] bArr) {
        byte[] bArr2 = new byte[bArr.length];
        this.f22484a.update(bArr, 0, bArr.length);
        byte[] bArr3 = new byte[this.f22484a.f()];
        this.f22484a.c(bArr3, 0);
        a(bArr, bArr3);
        b(bArr);
        return bArr3;
    }
}
