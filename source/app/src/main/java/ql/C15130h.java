package ql;

import Bi.InterfaceC2392y;
import Bi.a0;
import oh.C14549x;

public final class C15130h {

    public final InterfaceC2392y f108351a;

    public final int f108352b;

    public C15130h(C14549x c14549x, int i10) {
        if (c14549x == null) {
            throw new NullPointerException("digest == null");
        }
        this.f108351a = C15128f.a(c14549x);
        this.f108352b = i10;
    }

    public byte[] a(byte[] bArr, byte[] bArr2) {
        int length = bArr.length;
        int i10 = this.f108352b;
        if (length != i10) {
            throw new IllegalArgumentException("wrong key length");
        }
        if (bArr2.length == i10) {
            return e(0, bArr, bArr2);
        }
        throw new IllegalArgumentException("wrong in length");
    }

    public byte[] b(byte[] bArr, byte[] bArr2) {
        int length = bArr.length;
        int i10 = this.f108352b;
        if (length != i10) {
            throw new IllegalArgumentException("wrong key length");
        }
        if (bArr2.length == i10 * 2) {
            return e(1, bArr, bArr2);
        }
        throw new IllegalArgumentException("wrong in length");
    }

    public byte[] c(byte[] bArr, byte[] bArr2) {
        if (bArr.length == this.f108352b * 3) {
            return e(2, bArr, bArr2);
        }
        throw new IllegalArgumentException("wrong key length");
    }

    public byte[] d(byte[] bArr, byte[] bArr2) {
        if (bArr.length != this.f108352b) {
            throw new IllegalArgumentException("wrong key length");
        }
        if (bArr2.length == 32) {
            return e(3, bArr, bArr2);
        }
        throw new IllegalArgumentException("wrong address length");
    }

    public final byte[] e(int i10, byte[] bArr, byte[] bArr2) {
        byte[] t10 = O.t(i10, this.f108352b);
        this.f108351a.update(t10, 0, t10.length);
        this.f108351a.update(bArr, 0, bArr.length);
        this.f108351a.update(bArr2, 0, bArr2.length);
        int i11 = this.f108352b;
        byte[] bArr3 = new byte[i11];
        InterfaceC2392y interfaceC2392y = this.f108351a;
        if (interfaceC2392y instanceof a0) {
            ((a0) interfaceC2392y).e(bArr3, 0, i11);
        } else {
            interfaceC2392y.c(bArr3, 0);
        }
        return bArr3;
    }
}
