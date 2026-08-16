package Zi;

import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.security.SecureRandom;

public class g extends SecureRandom {

    public byte[] f31327b;

    public int f31328c;

    public int f31329d;

    public g(boolean z10, byte[] bArr) {
        this(z10, new byte[][]{bArr});
    }

    public boolean a() {
        return this.f31328c == this.f31327b.length;
    }

    public final int b() {
        byte[] bArr = this.f31327b;
        int i10 = this.f31328c;
        this.f31328c = i10 + 1;
        return bArr[i10] & 255;
    }

    @Override
    public byte[] generateSeed(int i10) {
        byte[] bArr = new byte[i10];
        nextBytes(bArr);
        return bArr;
    }

    @Override
    public void nextBytes(byte[] bArr) {
        System.arraycopy(this.f31327b, this.f31328c, bArr, 0, bArr.length);
        this.f31328c += bArr.length;
    }

    @Override
    public int nextInt() {
        int b10 = (b() << 24) | (b() << 16);
        int i10 = this.f31329d;
        if (i10 == 2) {
            this.f31329d = i10 - 1;
        } else {
            b10 |= b() << 8;
        }
        int i11 = this.f31329d;
        if (i11 != 1) {
            return b10 | b();
        }
        this.f31329d = i11 - 1;
        return b10;
    }

    @Override
    public long nextLong() {
        return (b() << 56) | (b() << 48) | (b() << 40) | (b() << 32) | (b() << 24) | (b() << 16) | (b() << 8) | b();
    }

    public g(boolean z10, byte[][] bArr) {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        for (int i10 = 0; i10 != bArr.length; i10++) {
            try {
                byteArrayOutputStream.write(bArr[i10]);
            } catch (IOException unused) {
                throw new IllegalArgumentException("can't save value array.");
            }
        }
        byte[] byteArray = byteArrayOutputStream.toByteArray();
        this.f31327b = byteArray;
        if (z10) {
            this.f31329d = byteArray.length % 4;
        }
    }

    public g(byte[] bArr) {
        this(false, new byte[][]{bArr});
    }

    public g(byte[][] bArr) {
        this(false, bArr);
    }
}
