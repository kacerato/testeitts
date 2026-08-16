package Oi;

import Bi.InterfaceC2390w;
import Bi.InterfaceC2391x;
import Bi.InterfaceC2392y;
import Xi.C3362p0;
import org.bouncycastle.crypto.DataLengthException;
import org.bouncycastle.crypto.OutputLengthException;

public class D implements InterfaceC2390w {

    public InterfaceC2392y f20128a;

    public byte[] f20129b;

    public int f20130c;

    public D(InterfaceC2392y interfaceC2392y) {
        this.f20128a = interfaceC2392y;
        this.f20130c = interfaceC2392y.f();
    }

    private void d(int i10, byte[] bArr) {
        bArr[0] = (byte) (i10 >>> 24);
        bArr[1] = (byte) (i10 >>> 16);
        bArr[2] = (byte) (i10 >>> 8);
        bArr[3] = (byte) i10;
    }

    @Override
    public int a(byte[] bArr, int i10, int i11) throws DataLengthException, IllegalArgumentException {
        int i12;
        if (bArr.length - i11 < i10) {
            throw new OutputLengthException("output buffer too small");
        }
        byte[] bArr2 = new byte[this.f20130c];
        byte[] bArr3 = new byte[4];
        this.f20128a.reset();
        if (i11 > this.f20130c) {
            i12 = 0;
            do {
                d(i12, bArr3);
                InterfaceC2392y interfaceC2392y = this.f20128a;
                byte[] bArr4 = this.f20129b;
                interfaceC2392y.update(bArr4, 0, bArr4.length);
                this.f20128a.update(bArr3, 0, 4);
                this.f20128a.c(bArr2, 0);
                int i13 = this.f20130c;
                System.arraycopy(bArr2, 0, bArr, (i12 * i13) + i10, i13);
                i12++;
            } while (i12 < i11 / this.f20130c);
        } else {
            i12 = 0;
        }
        if (this.f20130c * i12 < i11) {
            d(i12, bArr3);
            InterfaceC2392y interfaceC2392y2 = this.f20128a;
            byte[] bArr5 = this.f20129b;
            interfaceC2392y2.update(bArr5, 0, bArr5.length);
            this.f20128a.update(bArr3, 0, 4);
            this.f20128a.c(bArr2, 0);
            int i14 = this.f20130c;
            System.arraycopy(bArr2, 0, bArr, i10 + (i12 * i14), i11 - (i12 * i14));
        }
        return i11;
    }

    public InterfaceC2392y b() {
        return this.f20128a;
    }

    @Override
    public void c(InterfaceC2391x interfaceC2391x) {
        if (!(interfaceC2391x instanceof C3362p0)) {
            throw new IllegalArgumentException("MGF parameters required for MGF1Generator");
        }
        this.f20129b = ((C3362p0) interfaceC2391x).a();
    }
}
