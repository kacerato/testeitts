package Oi;

import Bi.InterfaceC2379k;
import Bi.InterfaceC2392y;
import Xi.C3360o0;
import Xi.w0;

public class J extends Bi.L {

    public Bi.I f20146d;

    public byte[] f20147e;

    public J() {
        this(org.bouncycastle.crypto.util.g.d());
    }

    private byte[] l(int i10) {
        int i11;
        int d10 = this.f20146d.d();
        int i12 = ((i10 + d10) - 1) / d10;
        byte[] bArr = new byte[4];
        byte[] bArr2 = new byte[i12 * d10];
        this.f20146d.a(new C3360o0(this.f1848a));
        int i13 = 0;
        for (int i14 = 1; i14 <= i12; i14++) {
            while (true) {
                byte b10 = (byte) (bArr[i11] + 1);
                bArr[i11] = b10;
                i11 = b10 == 0 ? i11 - 1 : 3;
            }
            k(this.f1849b, this.f1850c, bArr, bArr2, i13);
            i13 += d10;
        }
        return bArr2;
    }

    @Override
    public InterfaceC2379k d(int i10) {
        return e(i10);
    }

    @Override
    public InterfaceC2379k e(int i10) {
        int i11 = i10 / 8;
        return new C3360o0(l(i11), 0, i11);
    }

    @Override
    public InterfaceC2379k f(int i10, int i11) {
        int i12 = i10 / 8;
        int i13 = i11 / 8;
        byte[] l10 = l(i12 + i13);
        return new w0(new C3360o0(l10, 0, i12), l10, i12, i13);
    }

    public final void k(byte[] bArr, int i10, byte[] bArr2, byte[] bArr3, int i11) {
        if (i10 == 0) {
            throw new IllegalArgumentException("iteration count must be at least 1.");
        }
        if (bArr != null) {
            this.f20146d.update(bArr, 0, bArr.length);
        }
        this.f20146d.update(bArr2, 0, bArr2.length);
        this.f20146d.c(this.f20147e, 0);
        byte[] bArr4 = this.f20147e;
        System.arraycopy(bArr4, 0, bArr3, i11, bArr4.length);
        for (int i12 = 1; i12 < i10; i12++) {
            Bi.I i13 = this.f20146d;
            byte[] bArr5 = this.f20147e;
            i13.update(bArr5, 0, bArr5.length);
            this.f20146d.c(this.f20147e, 0);
            int i14 = 0;
            while (true) {
                byte[] bArr6 = this.f20147e;
                if (i14 != bArr6.length) {
                    int i15 = i11 + i14;
                    bArr3[i15] = (byte) (bArr6[i14] ^ bArr3[i15]);
                    i14++;
                }
            }
        }
    }

    public J(InterfaceC2392y interfaceC2392y) {
        Si.k kVar = new Si.k(interfaceC2392y);
        this.f20146d = kVar;
        this.f20147e = new byte[kVar.d()];
    }
}
