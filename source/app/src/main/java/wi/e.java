package Wi;

import Bi.C2388u;
import Bi.InterfaceC2374f;
import Bi.InterfaceC2379k;
import Xi.x0;
import org.bouncycastle.crypto.DataLengthException;
import org.bouncycastle.crypto.InvalidCipherTextException;
import org.bouncycastle.crypto.OutputLengthException;

public class e extends C2388u {

    public a f27790o;

    public e(InterfaceC2374f interfaceC2374f) {
        this(interfaceC2374f, new d());
    }

    @Override
    public int a(byte[] bArr, int i10) throws DataLengthException, IllegalStateException, InvalidCipherTextException {
        int b10;
        int i11;
        int c10 = this.f1897k.c();
        if (this.f1896j) {
            if (this.f1895i != c10) {
                i11 = 0;
            } else {
                if ((c10 * 2) + i10 > bArr.length) {
                    i();
                    throw new OutputLengthException("output buffer too short");
                }
                i11 = this.f1897k.g(this.f1894h, 0, bArr, i10);
                this.f1895i = 0;
            }
            this.f27790o.a(this.f1894h, this.f1895i);
            b10 = i11 + this.f1897k.g(this.f1894h, 0, bArr, i10 + i11);
        } else {
            if (this.f1895i != c10) {
                i();
                throw new DataLengthException("last block incomplete in decryption");
            }
            InterfaceC2374f interfaceC2374f = this.f1897k;
            byte[] bArr2 = this.f1894h;
            int g10 = interfaceC2374f.g(bArr2, 0, bArr2, 0);
            this.f1895i = 0;
            try {
                b10 = g10 - this.f27790o.b(this.f1894h);
                System.arraycopy(this.f1894h, 0, bArr, i10, b10);
            } finally {
                i();
            }
        }
        return b10;
    }

    @Override
    public int c(int i10) {
        int i11 = i10 + this.f1895i;
        byte[] bArr = this.f1894h;
        int length = i11 % bArr.length;
        if (length != 0) {
            i11 -= length;
        } else if (!this.f1896j) {
            return i11;
        }
        return i11 + bArr.length;
    }

    @Override
    public int e(int i10) {
        int i11 = i10 + this.f1895i;
        byte[] bArr = this.f1894h;
        int length = i11 % bArr.length;
        return length == 0 ? Math.max(0, i11 - bArr.length) : i11 - length;
    }

    @Override
    public void f(boolean z10, InterfaceC2379k interfaceC2379k) throws IllegalArgumentException {
        InterfaceC2374f interfaceC2374f;
        this.f1896j = z10;
        i();
        if (interfaceC2379k instanceof x0) {
            x0 x0Var = (x0) interfaceC2379k;
            this.f27790o.c(x0Var.b());
            interfaceC2374f = this.f1897k;
            interfaceC2379k = x0Var.a();
        } else {
            this.f27790o.c(null);
            interfaceC2374f = this.f1897k;
        }
        interfaceC2374f.a(z10, interfaceC2379k);
    }

    @Override
    public int g(byte b10, byte[] bArr, int i10) throws DataLengthException, IllegalStateException {
        int i11 = this.f1895i;
        byte[] bArr2 = this.f1894h;
        int i12 = 0;
        if (i11 == bArr2.length) {
            int g10 = this.f1897k.g(bArr2, 0, bArr, i10);
            this.f1895i = 0;
            i12 = g10;
        }
        byte[] bArr3 = this.f1894h;
        int i13 = this.f1895i;
        this.f1895i = i13 + 1;
        bArr3[i13] = b10;
        return i12;
    }

    @Override
    public int h(byte[] bArr, int i10, int i11, byte[] bArr2, int i12) throws DataLengthException, IllegalStateException {
        if (i11 < 0) {
            throw new IllegalArgumentException("Can't have a negative input length!");
        }
        int b10 = b();
        int e10 = e(i11);
        if (e10 > 0 && e10 + i12 > bArr2.length) {
            throw new OutputLengthException("output buffer too short");
        }
        byte[] bArr3 = this.f1894h;
        int length = bArr3.length;
        int i13 = this.f1895i;
        int i14 = length - i13;
        int i15 = 0;
        if (i11 > i14) {
            System.arraycopy(bArr, i10, bArr3, i13, i14);
            int g10 = this.f1897k.g(this.f1894h, 0, bArr2, i12);
            this.f1895i = 0;
            i11 -= i14;
            i10 += i14;
            i15 = g10;
            while (i11 > this.f1894h.length) {
                i15 += this.f1897k.g(bArr, i10, bArr2, i12 + i15);
                i11 -= b10;
                i10 += b10;
            }
        }
        System.arraycopy(bArr, i10, this.f1894h, this.f1895i, i11);
        this.f1895i += i11;
        return i15;
    }

    public e(InterfaceC2374f interfaceC2374f, a aVar) {
        this.f1897k = interfaceC2374f;
        this.f27790o = aVar;
        this.f1894h = new byte[interfaceC2374f.c()];
        this.f1895i = 0;
    }
}
