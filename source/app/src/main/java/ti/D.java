package Ti;

import Bi.C2388u;
import Bi.InterfaceC2374f;
import org.bouncycastle.crypto.DataLengthException;
import org.bouncycastle.crypto.InvalidCipherTextException;
import org.bouncycastle.crypto.OutputLengthException;

public class D extends C2388u {

    public int f25150o;

    public D(InterfaceC2374f interfaceC2374f) {
        if ((interfaceC2374f instanceof C) || (interfaceC2374f instanceof C3096g)) {
            throw new IllegalArgumentException("CTSBlockCipher can only accept ECB, or CBC ciphers");
        }
        this.f1897k = interfaceC2374f;
        int c10 = interfaceC2374f.c();
        this.f25150o = c10;
        this.f1894h = new byte[c10 * 2];
        this.f1895i = 0;
    }

    @Override
    public int a(byte[] bArr, int i10) throws DataLengthException, IllegalStateException, InvalidCipherTextException {
        if (this.f1895i + i10 > bArr.length) {
            throw new OutputLengthException("output buffer to small in doFinal");
        }
        int c10 = this.f1897k.c();
        int i11 = this.f1895i - c10;
        byte[] bArr2 = new byte[c10];
        if (this.f1896j) {
            this.f1897k.g(this.f1894h, 0, bArr2, 0);
            int i12 = this.f1895i;
            if (i12 < c10) {
                throw new DataLengthException("need at least one block of input for CTS");
            }
            while (true) {
                byte[] bArr3 = this.f1894h;
                if (i12 == bArr3.length) {
                    break;
                }
                bArr3[i12] = bArr2[i12 - c10];
                i12++;
            }
            for (int i13 = c10; i13 != this.f1895i; i13++) {
                byte[] bArr4 = this.f1894h;
                bArr4[i13] = (byte) (bArr4[i13] ^ bArr2[i13 - c10]);
            }
            InterfaceC2374f interfaceC2374f = this.f1897k;
            if (interfaceC2374f instanceof C3092c) {
                ((C3092c) interfaceC2374f).d().g(this.f1894h, c10, bArr, i10);
            } else {
                interfaceC2374f.g(this.f1894h, c10, bArr, i10);
            }
            System.arraycopy(bArr2, 0, bArr, i10 + c10, i11);
        } else {
            byte[] bArr5 = new byte[c10];
            InterfaceC2374f interfaceC2374f2 = this.f1897k;
            if (interfaceC2374f2 instanceof C3092c) {
                ((C3092c) interfaceC2374f2).d().g(this.f1894h, 0, bArr2, 0);
            } else {
                interfaceC2374f2.g(this.f1894h, 0, bArr2, 0);
            }
            for (int i14 = c10; i14 != this.f1895i; i14++) {
                int i15 = i14 - c10;
                bArr5[i15] = (byte) (bArr2[i15] ^ this.f1894h[i14]);
            }
            System.arraycopy(this.f1894h, c10, bArr2, 0, i11);
            this.f1897k.g(bArr2, 0, bArr, i10);
            System.arraycopy(bArr5, 0, bArr, i10 + c10, i11);
        }
        int i16 = this.f1895i;
        i();
        return i16;
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
            int i13 = this.f25150o;
            System.arraycopy(bArr3, i13, bArr3, 0, i13);
            this.f1895i = this.f25150o;
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
