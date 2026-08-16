package Oi;

import Bi.InterfaceC2379k;
import Bi.InterfaceC2392y;
import Xi.C3360o0;
import Xi.w0;

public class G extends Bi.L {

    public final InterfaceC2392y f20138d;

    public G() {
        this(org.bouncycastle.crypto.util.g.b());
    }

    @Override
    public InterfaceC2379k d(int i10) {
        return e(i10);
    }

    @Override
    public InterfaceC2379k e(int i10) {
        int i11 = i10 / 8;
        return new C3360o0(k(i11), 0, i11);
    }

    @Override
    public InterfaceC2379k f(int i10, int i11) {
        int i12 = i10 / 8;
        int i13 = i11 / 8;
        byte[] k10 = k(i12 + i13);
        return new w0(new C3360o0(k10, 0, i12), k10, i12, i13);
    }

    public final byte[] k(int i10) {
        int f10 = this.f20138d.f();
        byte[] bArr = new byte[f10];
        byte[] bArr2 = new byte[i10];
        int i11 = 0;
        while (true) {
            InterfaceC2392y interfaceC2392y = this.f20138d;
            byte[] bArr3 = this.f1848a;
            interfaceC2392y.update(bArr3, 0, bArr3.length);
            InterfaceC2392y interfaceC2392y2 = this.f20138d;
            byte[] bArr4 = this.f1849b;
            interfaceC2392y2.update(bArr4, 0, bArr4.length);
            this.f20138d.c(bArr, 0);
            int i12 = i10 > f10 ? f10 : i10;
            System.arraycopy(bArr, 0, bArr2, i11, i12);
            i11 += i12;
            i10 -= i12;
            if (i10 == 0) {
                return bArr2;
            }
            this.f20138d.reset();
            this.f20138d.update(bArr, 0, f10);
        }
    }

    public void l(byte[] bArr, byte[] bArr2) {
        super.j(bArr, bArr2, 1);
    }

    public G(InterfaceC2392y interfaceC2392y) {
        this.f20138d = interfaceC2392y;
    }
}
