package Oi;

import Bi.InterfaceC2379k;
import Bi.InterfaceC2392y;
import Xi.C3360o0;
import Xi.w0;

public class I extends Bi.L {

    public InterfaceC2392y f20145d;

    public I(InterfaceC2392y interfaceC2392y) {
        this.f20145d = interfaceC2392y;
    }

    @Override
    public InterfaceC2379k d(int i10) {
        return e(i10);
    }

    @Override
    public InterfaceC2379k e(int i10) {
        int i11 = i10 / 8;
        if (i11 <= this.f20145d.f()) {
            return new C3360o0(k(), 0, i11);
        }
        throw new IllegalArgumentException("Can't generate a derived key " + i11 + " bytes long.");
    }

    @Override
    public InterfaceC2379k f(int i10, int i11) {
        int i12 = i10 / 8;
        int i13 = i11 / 8;
        int i14 = i12 + i13;
        if (i14 <= this.f20145d.f()) {
            byte[] k10 = k();
            return new w0(new C3360o0(k10, 0, i12), k10, i12, i13);
        }
        throw new IllegalArgumentException("Can't generate a derived key " + i14 + " bytes long.");
    }

    public final byte[] k() {
        int f10 = this.f20145d.f();
        byte[] bArr = new byte[f10];
        InterfaceC2392y interfaceC2392y = this.f20145d;
        byte[] bArr2 = this.f1848a;
        interfaceC2392y.update(bArr2, 0, bArr2.length);
        InterfaceC2392y interfaceC2392y2 = this.f20145d;
        byte[] bArr3 = this.f1849b;
        interfaceC2392y2.update(bArr3, 0, bArr3.length);
        this.f20145d.c(bArr, 0);
        for (int i10 = 1; i10 < this.f1850c; i10++) {
            this.f20145d.update(bArr, 0, f10);
            this.f20145d.c(bArr, 0);
        }
        return bArr;
    }
}
