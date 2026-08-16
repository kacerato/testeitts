package Bi;

import org.bouncycastle.crypto.DataLengthException;
import org.bouncycastle.crypto.InvalidCipherTextException;

public class C2375g {

    public byte[] f1854a;

    public int f1855b;

    public final InterfaceC2370b f1856c;

    public C2375g(InterfaceC2370b interfaceC2370b) {
        this.f1856c = interfaceC2370b;
    }

    public byte[] a() throws InvalidCipherTextException {
        byte[] b10 = this.f1856c.b(this.f1854a, 0, this.f1855b);
        i();
        return b10;
    }

    public int b() {
        return this.f1855b;
    }

    public int c() {
        return this.f1856c.d();
    }

    public int d() {
        return this.f1856c.c();
    }

    public InterfaceC2370b e() {
        return this.f1856c;
    }

    public void f(boolean z10, InterfaceC2379k interfaceC2379k) {
        i();
        this.f1856c.a(z10, interfaceC2379k);
        this.f1854a = new byte[this.f1856c.d() + (z10 ? 1 : 0)];
        this.f1855b = 0;
    }

    public void g(byte b10) {
        int i10 = this.f1855b;
        byte[] bArr = this.f1854a;
        if (i10 >= bArr.length) {
            throw new DataLengthException("attempt to process message too long for cipher");
        }
        this.f1855b = i10 + 1;
        bArr[i10] = b10;
    }

    public void h(byte[] bArr, int i10, int i11) {
        if (i11 == 0) {
            return;
        }
        if (i11 < 0) {
            throw new IllegalArgumentException("Can't have a negative input length!");
        }
        int i12 = this.f1855b;
        int i13 = i12 + i11;
        byte[] bArr2 = this.f1854a;
        if (i13 > bArr2.length) {
            throw new DataLengthException("attempt to process message too long for cipher");
        }
        System.arraycopy(bArr, i10, bArr2, i12, i11);
        this.f1855b += i11;
    }

    public void i() {
        if (this.f1854a != null) {
            int i10 = 0;
            while (true) {
                byte[] bArr = this.f1854a;
                if (i10 >= bArr.length) {
                    break;
                }
                bArr[i10] = 0;
                i10++;
            }
        }
        this.f1855b = 0;
    }
}
