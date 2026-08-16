package Bi;

import org.bouncycastle.crypto.DataLengthException;
import org.bouncycastle.crypto.InvalidCipherTextException;
import org.bouncycastle.crypto.OutputLengthException;

public class C2388u extends C2376h {

    public byte[] f1894h;

    public int f1895i;

    public boolean f1896j;

    public InterfaceC2374f f1897k;

    public K f1898l;

    public boolean f1899m;

    public boolean f1900n;

    public C2388u() {
    }

    @Override
    public int a(byte[] bArr, int i10) throws DataLengthException, IllegalStateException, InvalidCipherTextException {
        try {
            int i11 = this.f1895i;
            if (i10 + i11 > bArr.length) {
                throw new OutputLengthException("output buffer too short for doFinal()");
            }
            int i12 = 0;
            if (i11 != 0) {
                if (!this.f1899m) {
                    throw new DataLengthException("data not block size aligned");
                }
                InterfaceC2374f interfaceC2374f = this.f1897k;
                byte[] bArr2 = this.f1894h;
                interfaceC2374f.g(bArr2, 0, bArr2, 0);
                int i13 = this.f1895i;
                this.f1895i = 0;
                System.arraycopy(this.f1894h, 0, bArr, i10, i13);
                i12 = i13;
            }
            i();
            return i12;
        } catch (Throwable th2) {
            i();
            throw th2;
        }
    }

    @Override
    public int b() {
        return this.f1897k.c();
    }

    @Override
    public int c(int i10) {
        int i11;
        if (this.f1900n && this.f1896j) {
            i10 += this.f1895i;
            i11 = this.f1897k.c() + 2;
        } else {
            i11 = this.f1895i;
        }
        return i10 + i11;
    }

    @Override
    public InterfaceC2374f d() {
        return this.f1897k;
    }

    @Override
    public int e(int i10) {
        int length;
        int i11;
        int i12 = i10 + this.f1895i;
        if (!this.f1900n) {
            length = this.f1894h.length;
        } else {
            if (this.f1896j) {
                i11 = (i12 % this.f1894h.length) - (this.f1897k.c() + 2);
                return i12 - i11;
            }
            length = this.f1894h.length;
        }
        i11 = i12 % length;
        return i12 - i11;
    }

    @Override
    public void f(boolean z10, InterfaceC2379k interfaceC2379k) throws IllegalArgumentException {
        this.f1896j = z10;
        i();
        this.f1897k.a(z10, interfaceC2379k);
    }

    @Override
    public int g(byte b10, byte[] bArr, int i10) throws DataLengthException, IllegalStateException {
        byte[] bArr2 = this.f1894h;
        int i11 = this.f1895i;
        int i12 = i11 + 1;
        this.f1895i = i12;
        bArr2[i11] = b10;
        if (i12 != bArr2.length) {
            return 0;
        }
        int g10 = this.f1897k.g(bArr2, 0, bArr, i10);
        this.f1895i = 0;
        return g10;
    }

    @Override
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
        byte[] bArr3 = this.f1894h;
        int length = bArr3.length;
        int i16 = this.f1895i;
        int i17 = length - i16;
        if (i11 > i17) {
            System.arraycopy(bArr, i10, bArr3, i16, i17);
            i15 = this.f1897k.g(this.f1894h, 0, bArr2, i12);
            this.f1895i = 0;
            i14 = i11 - i17;
            i13 = i10 + i17;
            K k10 = this.f1898l;
            if (k10 != null) {
                int h10 = i14 / k10.h();
                if (h10 > 0) {
                    i15 += this.f1898l.e(bArr, i13, h10, bArr2, i12 + i15);
                    int h11 = h10 * this.f1898l.h();
                    i14 -= h11;
                    i13 += h11;
                }
            } else {
                while (i14 > this.f1894h.length) {
                    i15 += this.f1897k.g(bArr, i13, bArr2, i12 + i15);
                    i14 -= b10;
                    i13 += b10;
                }
            }
        } else {
            i13 = i10;
            i14 = i11;
            i15 = 0;
        }
        System.arraycopy(bArr, i13, this.f1894h, this.f1895i, i14);
        int i18 = this.f1895i + i14;
        this.f1895i = i18;
        byte[] bArr4 = this.f1894h;
        if (i18 != bArr4.length) {
            return i15;
        }
        int g10 = i15 + this.f1897k.g(bArr4, 0, bArr2, i12 + i15);
        this.f1895i = 0;
        return g10;
    }

    @Override
    public void i() {
        int i10 = 0;
        while (true) {
            byte[] bArr = this.f1894h;
            if (i10 >= bArr.length) {
                this.f1895i = 0;
                this.f1897k.reset();
                return;
            } else {
                bArr[i10] = 0;
                i10++;
            }
        }
    }

    public C2388u(InterfaceC2374f interfaceC2374f) {
        this.f1897k = interfaceC2374f;
        if (interfaceC2374f instanceof K) {
            K k10 = (K) interfaceC2374f;
            this.f1898l = k10;
            this.f1894h = new byte[k10.h()];
        } else {
            this.f1898l = null;
            this.f1894h = new byte[interfaceC2374f.c()];
        }
        boolean z10 = false;
        this.f1895i = 0;
        String b10 = interfaceC2374f.b();
        int indexOf = b10.indexOf(47) + 1;
        boolean z11 = indexOf > 0 && b10.startsWith("PGP", indexOf);
        this.f1900n = z11;
        if (z11 || (interfaceC2374f instanceof Y)) {
            this.f1899m = true;
            return;
        }
        if (indexOf > 0 && b10.startsWith("OpenPGP", indexOf)) {
            z10 = true;
        }
        this.f1899m = z10;
    }
}
