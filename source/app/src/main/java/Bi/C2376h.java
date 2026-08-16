package Bi;

import org.bouncycastle.crypto.DataLengthException;
import org.bouncycastle.crypto.InvalidCipherTextException;
import org.bouncycastle.crypto.OutputLengthException;

public class C2376h {

    public byte[] f1857a;

    public int f1858b;

    public boolean f1859c;

    public InterfaceC2374f f1860d;

    public K f1861e;

    public boolean f1862f;

    public boolean f1863g;

    public C2376h() {
    }

    public int a(byte[] bArr, int i10) throws DataLengthException, IllegalStateException, InvalidCipherTextException {
        try {
            int i11 = this.f1858b;
            if (i10 + i11 > bArr.length) {
                throw new OutputLengthException("output buffer too short for doFinal()");
            }
            int i12 = 0;
            if (i11 != 0) {
                if (!this.f1862f) {
                    throw new DataLengthException("data not block size aligned");
                }
                InterfaceC2374f interfaceC2374f = this.f1860d;
                byte[] bArr2 = this.f1857a;
                interfaceC2374f.g(bArr2, 0, bArr2, 0);
                int i13 = this.f1858b;
                this.f1858b = 0;
                System.arraycopy(this.f1857a, 0, bArr, i10, i13);
                i12 = i13;
            }
            i();
            return i12;
        } catch (Throwable th2) {
            i();
            throw th2;
        }
    }

    public int b() {
        return this.f1860d.c();
    }

    public int c(int i10) {
        int i11;
        if (this.f1863g && this.f1859c) {
            i10 += this.f1858b;
            i11 = this.f1860d.c() + 2;
        } else {
            i11 = this.f1858b;
        }
        return i10 + i11;
    }

    public InterfaceC2374f d() {
        return this.f1860d;
    }

    public int e(int i10) {
        int length;
        int i11;
        int i12 = i10 + this.f1858b;
        if (!this.f1863g) {
            length = this.f1857a.length;
        } else {
            if (this.f1859c) {
                i11 = (i12 % this.f1857a.length) - (this.f1860d.c() + 2);
                return i12 - i11;
            }
            length = this.f1857a.length;
        }
        i11 = i12 % length;
        return i12 - i11;
    }

    public void f(boolean z10, InterfaceC2379k interfaceC2379k) throws IllegalArgumentException {
        this.f1859c = z10;
        i();
        this.f1860d.a(z10, interfaceC2379k);
    }

    public int g(byte b10, byte[] bArr, int i10) throws DataLengthException, IllegalStateException {
        byte[] bArr2 = this.f1857a;
        int i11 = this.f1858b;
        int i12 = i11 + 1;
        this.f1858b = i12;
        bArr2[i11] = b10;
        if (i12 != bArr2.length) {
            return 0;
        }
        int g10 = this.f1860d.g(bArr2, 0, bArr, i10);
        this.f1858b = 0;
        return g10;
    }

    public int h(byte[] bArr, int i10, int i11, byte[] bArr2, int i12) throws DataLengthException, IllegalStateException {
        int i13;
        int i14;
        int i15;
        if (i11 < 0) {
            throw new IllegalArgumentException("Can't have a negative input length!");
        }
        int b10 = b();
        int e10 = e(i11);
        if (e10 > 0 && e10 + i12 > bArr2.length) {
            throw new OutputLengthException("output buffer too short");
        }
        byte[] bArr3 = this.f1857a;
        int length = bArr3.length;
        int i16 = this.f1858b;
        int i17 = length - i16;
        if (i11 > i17) {
            System.arraycopy(bArr, i10, bArr3, i16, i17);
            i15 = this.f1860d.g(this.f1857a, 0, bArr2, i12);
            this.f1858b = 0;
            i14 = i11 - i17;
            i13 = i10 + i17;
            K k10 = this.f1861e;
            if (k10 != null) {
                int h10 = i14 / k10.h();
                if (h10 > 0) {
                    i15 += this.f1861e.e(bArr, i13, h10, bArr2, i12 + i15);
                    int h11 = h10 * this.f1861e.h();
                    i14 -= h11;
                    i13 += h11;
                }
            } else {
                while (i14 > this.f1857a.length) {
                    i15 += this.f1860d.g(bArr, i13, bArr2, i12 + i15);
                    i14 -= b10;
                    i13 += b10;
                }
            }
        } else {
            i13 = i10;
            i14 = i11;
            i15 = 0;
        }
        System.arraycopy(bArr, i13, this.f1857a, this.f1858b, i14);
        int i18 = this.f1858b + i14;
        this.f1858b = i18;
        byte[] bArr4 = this.f1857a;
        if (i18 != bArr4.length) {
            return i15;
        }
        int g10 = i15 + this.f1860d.g(bArr4, 0, bArr2, i12 + i15);
        this.f1858b = 0;
        return g10;
    }

    public void i() {
        int i10 = 0;
        while (true) {
            byte[] bArr = this.f1857a;
            if (i10 >= bArr.length) {
                this.f1858b = 0;
                this.f1860d.reset();
                return;
            } else {
                bArr[i10] = 0;
                i10++;
            }
        }
    }

    public C2376h(InterfaceC2374f interfaceC2374f) {
        this.f1860d = interfaceC2374f;
        if (interfaceC2374f instanceof K) {
            K k10 = (K) interfaceC2374f;
            this.f1861e = k10;
            this.f1857a = new byte[k10.h()];
        } else {
            this.f1861e = null;
            this.f1857a = new byte[interfaceC2374f.c()];
        }
        boolean z10 = false;
        this.f1858b = 0;
        String b10 = interfaceC2374f.b();
        int indexOf = b10.indexOf(47) + 1;
        boolean z11 = indexOf > 0 && b10.startsWith("PGP", indexOf);
        this.f1863g = z11;
        if (z11 || (interfaceC2374f instanceof Y)) {
            this.f1862f = true;
            return;
        }
        if (indexOf > 0 && b10.startsWith("OpenPGP", indexOf)) {
            z10 = true;
        }
        this.f1862f = z10;
    }
}
