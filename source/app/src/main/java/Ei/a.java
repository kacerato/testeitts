package Ei;

import Bi.InterfaceC2390w;
import Bi.InterfaceC2391x;
import Bi.InterfaceC2392y;
import Xi.C3358n0;
import org.bouncycastle.crypto.DataLengthException;
import org.bouncycastle.crypto.OutputLengthException;

public class a implements InterfaceC2390w {

    public InterfaceC2392y f5820a;

    public byte[] f5821b;

    public byte[] f5822c;

    public int f5823d;

    public a(InterfaceC2392y interfaceC2392y) {
        this.f5820a = interfaceC2392y;
        this.f5823d = interfaceC2392y.f();
    }

    @Override
    public int a(byte[] bArr, int i10, int i11) throws DataLengthException, IllegalArgumentException {
        int i12;
        int i13;
        if (i11 <= 0) {
            throw new IllegalArgumentException("len must be > 0");
        }
        if (bArr.length - i11 < i10) {
            throw new OutputLengthException("output buffer too small");
        }
        byte[] bArr2 = new byte[this.f5823d];
        byte[] bArr3 = new byte[4];
        this.f5820a.reset();
        int i14 = 1;
        if (i11 > this.f5823d) {
            i12 = 0;
            while (true) {
                d(i14, bArr3);
                this.f5820a.update(bArr3, 0, 4);
                InterfaceC2392y interfaceC2392y = this.f5820a;
                byte[] bArr4 = this.f5821b;
                interfaceC2392y.update(bArr4, 0, bArr4.length);
                InterfaceC2392y interfaceC2392y2 = this.f5820a;
                byte[] bArr5 = this.f5822c;
                interfaceC2392y2.update(bArr5, 0, bArr5.length);
                this.f5820a.c(bArr2, 0);
                System.arraycopy(bArr2, 0, bArr, i10 + i12, this.f5823d);
                int i15 = this.f5823d;
                i12 += i15;
                i13 = i14 + 1;
                if (i14 >= i11 / i15) {
                    break;
                }
                i14 = i13;
            }
            i14 = i13;
        } else {
            i12 = 0;
        }
        if (i12 < i11) {
            d(i14, bArr3);
            this.f5820a.update(bArr3, 0, 4);
            InterfaceC2392y interfaceC2392y3 = this.f5820a;
            byte[] bArr6 = this.f5821b;
            interfaceC2392y3.update(bArr6, 0, bArr6.length);
            InterfaceC2392y interfaceC2392y4 = this.f5820a;
            byte[] bArr7 = this.f5822c;
            interfaceC2392y4.update(bArr7, 0, bArr7.length);
            this.f5820a.c(bArr2, 0);
            System.arraycopy(bArr2, 0, bArr, i10 + i12, i11 - i12);
        }
        return i11;
    }

    public InterfaceC2392y b() {
        return this.f5820a;
    }

    @Override
    public void c(InterfaceC2391x interfaceC2391x) {
        if (!(interfaceC2391x instanceof C3358n0)) {
            throw new IllegalArgumentException("KDF parameters required for generator");
        }
        C3358n0 c3358n0 = (C3358n0) interfaceC2391x;
        this.f5821b = c3358n0.b();
        this.f5822c = c3358n0.a();
    }

    public final void d(int i10, byte[] bArr) {
        bArr[0] = (byte) (i10 >>> 24);
        bArr[1] = (byte) (i10 >>> 16);
        bArr[2] = (byte) (i10 >>> 8);
        bArr[3] = (byte) i10;
    }
}
