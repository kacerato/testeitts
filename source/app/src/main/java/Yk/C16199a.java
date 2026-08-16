package yk;

import java.io.IOException;
import java.io.OutputStream;
import java.math.BigInteger;

public class C16199a {

    public static final byte[] f130413c = {Byte.MIN_VALUE, 64, 32, 16, 8, 4, 2, 1};

    public byte[] f130414a = new byte[1];

    public int f130415b = 0;

    public void a() {
        int i10 = this.f130415b;
        this.f130415b = i10 + (i10 % 8);
    }

    public int b(OutputStream outputStream) throws IOException {
        int i10 = this.f130415b;
        int i11 = (i10 + (i10 % 8)) / 8;
        outputStream.write(this.f130414a, 0, i11);
        outputStream.flush();
        return i11;
    }

    public void c(int i10) {
        boolean z10 = false;
        for (int i11 = 4; i11 >= 0; i11--) {
            if (!z10 && ((-33554432) & i10) != 0) {
                z10 = true;
            }
            if (z10) {
                f(i11).h(i10, 32, 7);
            }
            i10 <<= 7;
        }
    }

    public void d(BigInteger bigInteger) {
        int bitLength = (bigInteger.bitLength() + (bigInteger.bitLength() % 8)) / 8;
        BigInteger shiftLeft = BigInteger.valueOf(254L).shiftLeft(bitLength * 8);
        boolean z10 = false;
        while (bitLength >= 0) {
            if (!z10 && bigInteger.and(shiftLeft).compareTo(BigInteger.ZERO) != 0) {
                z10 = true;
            }
            if (z10) {
                f(bitLength).h(bigInteger.and(shiftLeft).shiftRight(r3 - 8).intValue(), 8, 7);
            }
            bigInteger = bigInteger.shiftLeft(7);
            bitLength--;
        }
    }

    public int e(OutputStream outputStream) throws IOException {
        int i10 = this.f130415b;
        int i11 = (i10 + (i10 % 8)) / 8;
        outputStream.write(this.f130414a, 0, i11);
        outputStream.flush();
        i();
        return i11;
    }

    public C16199a f(int i10) {
        int i11 = this.f130415b;
        int i12 = i11 / 8;
        byte[] bArr = this.f130414a;
        if (i12 >= bArr.length) {
            byte[] bArr2 = new byte[bArr.length + 4];
            System.arraycopy(bArr, 0, bArr2, 0, i11 / 8);
            org.bouncycastle.util.a.n(this.f130414a);
            this.f130414a = bArr2;
        }
        if (i10 == 0) {
            byte[] bArr3 = this.f130414a;
            int i13 = this.f130415b;
            int i14 = i13 / 8;
            bArr3[i14] = (byte) ((~f130413c[i13 % 8]) & bArr3[i14]);
        } else {
            byte[] bArr4 = this.f130414a;
            int i15 = this.f130415b;
            int i16 = i15 / 8;
            bArr4[i16] = (byte) (f130413c[i15 % 8] | bArr4[i16]);
        }
        this.f130415b++;
        return this;
    }

    public C16199a g(long j10, int i10) {
        for (int i11 = i10 - 1; i11 >= 0; i11--) {
            f(((1 << i11) & j10) > 0 ? 1 : 0);
        }
        return this;
    }

    public C16199a h(long j10, int i10, int i11) {
        for (int i12 = i10 - 1; i12 >= i10 - i11; i12--) {
            f(((1 << i12) & j10) != 0 ? 1 : 0);
        }
        return this;
    }

    public void i() {
        org.bouncycastle.util.a.n(this.f130414a);
        this.f130415b = 0;
    }
}
