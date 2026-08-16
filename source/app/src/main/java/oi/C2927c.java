package Oi;

import Bi.InterfaceC2391x;
import Bi.InterfaceC2392y;
import Bi.InterfaceC2393z;
import Xi.C3350j0;
import Xi.C3358n0;
import org.bouncycastle.crypto.DataLengthException;
import org.bouncycastle.crypto.OutputLengthException;

public class C2927c implements InterfaceC2393z {

    public int f20200a;

    public InterfaceC2392y f20201b;

    public byte[] f20202c;

    public byte[] f20203d;

    public C2927c(int i10, InterfaceC2392y interfaceC2392y) {
        this.f20200a = i10;
        this.f20201b = interfaceC2392y;
    }

    @Override
    public int a(byte[] bArr, int i10, int i11) throws DataLengthException, IllegalArgumentException {
        int i12 = i11;
        int i13 = i10;
        if (bArr.length - i12 < i13) {
            throw new OutputLengthException("output buffer too small");
        }
        long j10 = i12;
        int f10 = this.f20201b.f();
        if (j10 > 8589934591L) {
            throw new IllegalArgumentException("Output length too large");
        }
        long j11 = f10;
        int i14 = (int) (((j10 + j11) - 1) / j11);
        byte[] bArr2 = new byte[this.f20201b.f()];
        byte[] bArr3 = new byte[4];
        org.bouncycastle.util.p.h(this.f20200a, bArr3, 0);
        int i15 = this.f20200a & (-256);
        for (int i16 = 0; i16 < i14; i16++) {
            InterfaceC2392y interfaceC2392y = this.f20201b;
            byte[] bArr4 = this.f20202c;
            interfaceC2392y.update(bArr4, 0, bArr4.length);
            this.f20201b.update(bArr3, 0, 4);
            byte[] bArr5 = this.f20203d;
            if (bArr5 != null) {
                this.f20201b.update(bArr5, 0, bArr5.length);
            }
            this.f20201b.c(bArr2, 0);
            if (i12 > f10) {
                System.arraycopy(bArr2, 0, bArr, i13, f10);
                i13 += f10;
                i12 -= f10;
            } else {
                System.arraycopy(bArr2, 0, bArr, i13, i12);
            }
            byte b10 = (byte) (bArr3[3] + 1);
            bArr3[3] = b10;
            if (b10 == 0) {
                i15 += 256;
                org.bouncycastle.util.p.h(i15, bArr3, 0);
            }
        }
        this.f20201b.reset();
        return (int) j10;
    }

    @Override
    public InterfaceC2392y b() {
        return this.f20201b;
    }

    @Override
    public void c(InterfaceC2391x interfaceC2391x) {
        if (interfaceC2391x instanceof C3358n0) {
            C3358n0 c3358n0 = (C3358n0) interfaceC2391x;
            this.f20202c = c3358n0.b();
            this.f20203d = c3358n0.a();
        } else {
            if (!(interfaceC2391x instanceof C3350j0)) {
                throw new IllegalArgumentException("KDF parameters required for generator");
            }
            this.f20202c = ((C3350j0) interfaceC2391x).a();
            this.f20203d = null;
        }
    }
}
