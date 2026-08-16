package Ti;

import Bi.C2388u;
import Bi.InterfaceC2374f;
import org.bouncycastle.crypto.DataLengthException;
import org.bouncycastle.crypto.InvalidCipherTextException;
import org.bouncycastle.crypto.OutputLengthException;

public class A extends C2388u {

    public static final int f25116q = 1;

    public static final int f25117r = 2;

    public static final int f25118s = 3;

    public final int f25119o;

    public final int f25120p;

    public A(int i10, InterfaceC2374f interfaceC2374f) {
        this.f25119o = i10;
        this.f1897k = C3092c.m(interfaceC2374f);
        int c10 = interfaceC2374f.c();
        this.f25120p = c10;
        this.f1894h = new byte[c10 * 2];
        this.f1895i = 0;
    }

    @Override
    public int a(byte[] bArr, int i10) throws DataLengthException, IllegalStateException, InvalidCipherTextException {
        if (this.f1895i + i10 > bArr.length) {
            throw new OutputLengthException("output buffer to small in doFinal");
        }
        int c10 = this.f1897k.c();
        int i11 = this.f1895i;
        int i12 = i11 - c10;
        byte[] bArr2 = new byte[c10];
        if (this.f1896j) {
            if (i11 < c10) {
                throw new DataLengthException("need at least one block of input for NISTCTS");
            }
            if (i11 > c10) {
                byte[] bArr3 = new byte[c10];
                int i13 = this.f25119o;
                if (i13 == 2 || i13 == 3) {
                    this.f1897k.g(this.f1894h, 0, bArr2, 0);
                    System.arraycopy(this.f1894h, c10, bArr3, 0, i12);
                    this.f1897k.g(bArr3, 0, bArr3, 0);
                    if (this.f25119o == 2 && i12 == c10) {
                        System.arraycopy(bArr2, 0, bArr, i10, c10);
                        System.arraycopy(bArr3, 0, bArr, i10 + c10, i12);
                    } else {
                        System.arraycopy(bArr3, 0, bArr, i10, c10);
                        System.arraycopy(bArr2, 0, bArr, i10 + c10, i12);
                    }
                } else {
                    System.arraycopy(this.f1894h, 0, bArr2, 0, c10);
                    this.f1897k.g(bArr2, 0, bArr2, 0);
                    System.arraycopy(bArr2, 0, bArr, i10, i12);
                    System.arraycopy(this.f1894h, this.f1895i - i12, bArr3, 0, i12);
                    this.f1897k.g(bArr3, 0, bArr3, 0);
                    System.arraycopy(bArr3, 0, bArr, i10 + i12, c10);
                }
            } else {
                this.f1897k.g(this.f1894h, 0, bArr2, 0);
                System.arraycopy(bArr2, 0, bArr, i10, c10);
            }
        } else {
            if (i11 < c10) {
                throw new DataLengthException("need at least one block of input for CTS");
            }
            byte[] bArr4 = new byte[c10];
            if (i11 > c10) {
                int i14 = this.f25119o;
                if (i14 == 3 || (i14 == 2 && (this.f1894h.length - i11) % c10 != 0)) {
                    InterfaceC2374f interfaceC2374f = this.f1897k;
                    if (interfaceC2374f instanceof InterfaceC3093d) {
                        ((InterfaceC3093d) interfaceC2374f).d().g(this.f1894h, 0, bArr2, 0);
                    } else {
                        interfaceC2374f.g(this.f1894h, 0, bArr2, 0);
                    }
                    for (int i15 = c10; i15 != this.f1895i; i15++) {
                        int i16 = i15 - c10;
                        bArr4[i16] = (byte) (bArr2[i16] ^ this.f1894h[i15]);
                    }
                    System.arraycopy(this.f1894h, c10, bArr2, 0, i12);
                    this.f1897k.g(bArr2, 0, bArr, i10);
                } else {
                    ((InterfaceC3093d) this.f1897k).d().g(this.f1894h, this.f1895i - c10, bArr4, 0);
                    System.arraycopy(this.f1894h, 0, bArr2, 0, c10);
                    if (i12 != c10) {
                        System.arraycopy(bArr4, i12, bArr2, i12, c10 - i12);
                    }
                    this.f1897k.g(bArr2, 0, bArr2, 0);
                    System.arraycopy(bArr2, 0, bArr, i10, c10);
                    for (int i17 = 0; i17 != i12; i17++) {
                        bArr4[i17] = (byte) (bArr4[i17] ^ this.f1894h[i17]);
                    }
                }
                System.arraycopy(bArr4, 0, bArr, i10 + c10, i12);
            } else {
                this.f1897k.g(this.f1894h, 0, bArr2, 0);
                System.arraycopy(bArr2, 0, bArr, i10, c10);
            }
        }
        int i18 = this.f1895i;
        i();
        return i18;
    }

    @Override
    public int c(int i10) {
        return i10 + this.f1895i;
    }

    @Override
    public int e(int i10) {
        int i11 = i10 + this.f1895i;
        byte[] bArr = this.f1894h;
        int length = i11 % bArr.length;
        return length == 0 ? i11 - bArr.length : i11 - length;
    }

    @Override
    public int g(byte b10, byte[] bArr, int i10) throws DataLengthException, IllegalStateException {
        int i11 = this.f1895i;
        byte[] bArr2 = this.f1894h;
        int i12 = 0;
        if (i11 == bArr2.length) {
            int g10 = this.f1897k.g(bArr2, 0, bArr, i10);
            byte[] bArr3 = this.f1894h;
            int i13 = this.f25120p;
            System.arraycopy(bArr3, i13, bArr3, 0, i13);
            this.f1895i = this.f25120p;
            i12 = g10;
        }
        byte[] bArr4 = this.f1894h;
        int i14 = this.f1895i;
        this.f1895i = i14 + 1;
        bArr4[i14] = b10;
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
            byte[] bArr4 = this.f1894h;
            System.arraycopy(bArr4, b10, bArr4, 0, b10);
            this.f1895i = b10;
            i11 -= i14;
            i10 += i14;
            while (i11 > b10) {
                System.arraycopy(bArr, i10, this.f1894h, this.f1895i, b10);
                g10 += this.f1897k.g(this.f1894h, 0, bArr2, i12 + g10);
                byte[] bArr5 = this.f1894h;
                System.arraycopy(bArr5, b10, bArr5, 0, b10);
                i11 -= b10;
                i10 += b10;
            }
            i15 = g10;
        }
        System.arraycopy(bArr, i10, this.f1894h, this.f1895i, i11);
        this.f1895i += i11;
        return i15;
    }
}
