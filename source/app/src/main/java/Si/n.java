package Si;

import Bi.I;
import Bi.InterfaceC2379k;
import Bi.a0;
import Ii.C2651i;
import Ii.b0;
import Xi.C3360o0;
import org.bouncycastle.crypto.DataLengthException;

public class n implements I, a0 {

    public static final byte[] f23450g = new byte[100];

    public final C2651i f23451a;

    public final int f23452b;

    public final int f23453c;

    public byte[] f23454d;

    public boolean f23455e;

    public boolean f23456f;

    public n(int i10, byte[] bArr) {
        this.f23451a = new C2651i(i10, org.bouncycastle.util.w.j("KMAC"), bArr);
        this.f23452b = i10;
        this.f23453c = (i10 * 2) / 8;
    }

    public static byte[] j(byte[] bArr) {
        return org.bouncycastle.util.a.B(b0.c(bArr.length * 8), bArr);
    }

    @Override
    public void a(InterfaceC2379k interfaceC2379k) throws IllegalArgumentException {
        this.f23454d = org.bouncycastle.util.a.p(((C3360o0) interfaceC2379k).b());
        this.f23455e = true;
        reset();
    }

    @Override
    public String b() {
        return "KMAC" + this.f23451a.b().substring(6);
    }

    @Override
    public int c(byte[] bArr, int i10) throws DataLengthException, IllegalStateException {
        if (this.f23456f) {
            if (!this.f23455e) {
                throw new IllegalStateException("KMAC not initialized");
            }
            byte[] d10 = b0.d(d() * 8);
            this.f23451a.update(d10, 0, d10.length);
        }
        int e10 = this.f23451a.e(bArr, i10, d());
        reset();
        return e10;
    }

    @Override
    public int d() {
        return this.f23453c;
    }

    @Override
    public int e(byte[] bArr, int i10, int i11) {
        if (this.f23456f) {
            if (!this.f23455e) {
                throw new IllegalStateException("KMAC not initialized");
            }
            byte[] d10 = b0.d(i11 * 8);
            this.f23451a.update(d10, 0, d10.length);
        }
        int e10 = this.f23451a.e(bArr, i10, i11);
        reset();
        return e10;
    }

    @Override
    public int f() {
        return this.f23453c;
    }

    public final void g(byte[] bArr, int i10) {
        byte[] c10 = b0.c(i10);
        update(c10, 0, c10.length);
        byte[] j10 = j(bArr);
        update(j10, 0, j10.length);
        int length = i10 - ((c10.length + j10.length) % i10);
        if (length <= 0 || length == i10) {
            return;
        }
        while (true) {
            byte[] bArr2 = f23450g;
            if (length <= bArr2.length) {
                update(bArr2, 0, length);
                return;
            } else {
                update(bArr2, 0, bArr2.length);
                length -= bArr2.length;
            }
        }
    }

    @Override
    public int h(byte[] bArr, int i10, int i11) {
        if (this.f23456f) {
            if (!this.f23455e) {
                throw new IllegalStateException("KMAC not initialized");
            }
            byte[] d10 = b0.d(0L);
            this.f23451a.update(d10, 0, d10.length);
            this.f23456f = false;
        }
        return this.f23451a.h(bArr, i10, i11);
    }

    @Override
    public int i() {
        return this.f23451a.i();
    }

    @Override
    public void reset() {
        this.f23451a.reset();
        byte[] bArr = this.f23454d;
        if (bArr != null) {
            g(bArr, this.f23452b == 128 ? 168 : 136);
        }
        this.f23456f = true;
    }

    @Override
    public void update(byte b10) throws IllegalStateException {
        if (!this.f23455e) {
            throw new IllegalStateException("KMAC not initialized");
        }
        this.f23451a.update(b10);
    }

    @Override
    public void update(byte[] bArr, int i10, int i11) throws DataLengthException, IllegalStateException {
        if (!this.f23455e) {
            throw new IllegalStateException("KMAC not initialized");
        }
        this.f23451a.update(bArr, i10, i11);
    }
}
