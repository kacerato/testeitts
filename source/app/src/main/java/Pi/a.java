package Pi;

import Li.C2769a;
import Ti.InterfaceC3091b;
import Ti.k;
import Ti.r;
import Xi.C3360o0;
import Xi.w0;
import org.bouncycastle.crypto.InvalidCipherTextException;
import org.bouncycastle.util.p;

public class a {

    public final short f21491a;

    public final byte[] f21492b;

    public final byte[] f21493c;

    public long f21494d = 0;

    public InterfaceC3091b f21495e;

    public a(short s10, byte[] bArr, byte[] bArr2) {
        InterfaceC3091b rVar;
        this.f21492b = bArr;
        this.f21493c = bArr2;
        this.f21491a = s10;
        if (s10 == 1 || s10 == 2) {
            rVar = new r(new C2769a());
        } else if (s10 != 3) {
            return;
        } else {
            rVar = new k();
        }
        this.f21495e = rVar;
    }

    public final byte[] a() {
        byte[] H10 = p.H(this.f21494d);
        byte[] bArr = this.f21493c;
        int length = bArr.length;
        byte[] p10 = org.bouncycastle.util.a.p(bArr);
        for (int i10 = 0; i10 < 8; i10++) {
            int i11 = (length - 8) + i10;
            p10[i11] = (byte) (p10[i11] ^ H10[i10]);
        }
        return p10;
    }

    public byte[] b(byte[] bArr, byte[] bArr2) throws InvalidCipherTextException {
        return c(bArr, bArr2, 0, bArr2.length);
    }

    public byte[] c(byte[] bArr, byte[] bArr2, int i10, int i11) throws InvalidCipherTextException {
        if (i10 < 0 || i10 > bArr2.length) {
            throw new IndexOutOfBoundsException("Invalid offset");
        }
        if (i10 + i11 > bArr2.length) {
            throw new IndexOutOfBoundsException("Invalid length");
        }
        short s10 = this.f21491a;
        if (s10 != 1 && s10 != 2 && s10 != 3) {
            throw new IllegalStateException("Export only mode, cannot be used to seal/open");
        }
        this.f21495e.a(false, new w0(new C3360o0(this.f21492b), a()));
        this.f21495e.j(bArr, 0, bArr.length);
        byte[] bArr3 = new byte[this.f21495e.h(i11)];
        this.f21495e.c(bArr3, this.f21495e.f(bArr2, i10, i11, bArr3, 0));
        this.f21494d++;
        return bArr3;
    }

    public byte[] d(byte[] bArr, byte[] bArr2) throws InvalidCipherTextException {
        return e(bArr, bArr2, 0, bArr2.length);
    }

    public byte[] e(byte[] bArr, byte[] bArr2, int i10, int i11) throws InvalidCipherTextException {
        if (i10 < 0 || i10 > bArr2.length) {
            throw new IndexOutOfBoundsException("Invalid offset");
        }
        if (i10 + i11 > bArr2.length) {
            throw new IndexOutOfBoundsException("Invalid length");
        }
        short s10 = this.f21491a;
        if (s10 != 1 && s10 != 2 && s10 != 3) {
            throw new IllegalStateException("Export only mode, cannot be used to seal/open");
        }
        this.f21495e.a(true, new w0(new C3360o0(this.f21492b), a()));
        this.f21495e.j(bArr, 0, bArr.length);
        byte[] bArr3 = new byte[this.f21495e.h(i11)];
        this.f21495e.c(bArr3, this.f21495e.f(bArr2, i10, i11, bArr3, 0));
        this.f21494d++;
        return bArr3;
    }
}
