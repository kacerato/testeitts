package Xi;

import fm.C13260d;
import java.io.EOFException;
import java.io.IOException;
import java.io.InputStream;
import java.security.SecureRandom;
import ok.AbstractC14579a;

public final class N0 extends C3335c {

    public static final int f29257d = 32;

    public static final int f29258e = 32;

    public final byte[] f29259c;

    public N0(InputStream inputStream) throws IOException {
        super(true);
        byte[] bArr = new byte[32];
        this.f29259c = bArr;
        if (32 != C13260d.g(inputStream, bArr)) {
            throw new EOFException("EOF encountered in middle of X25519 private key");
        }
    }

    private static byte[] g(byte[] bArr) {
        if (bArr.length == 32) {
            return bArr;
        }
        throw new IllegalArgumentException("'buf' must have length 32");
    }

    public void d(byte[] bArr, int i10) {
        System.arraycopy(this.f29259c, 0, bArr, i10, 32);
    }

    public O0 e() {
        byte[] bArr = new byte[32];
        AbstractC14579a.e(this.f29259c, 0, bArr, 0);
        return new O0(bArr, 0);
    }

    public void f(O0 o02, byte[] bArr, int i10) {
        byte[] bArr2 = new byte[32];
        o02.d(bArr2, 0);
        if (!AbstractC14579a.a(this.f29259c, 0, bArr2, 0, bArr, i10)) {
            throw new IllegalStateException("X25519 agreement failed");
        }
    }

    public byte[] getEncoded() {
        return org.bouncycastle.util.a.p(this.f29259c);
    }

    public N0(SecureRandom secureRandom) {
        super(true);
        byte[] bArr = new byte[32];
        this.f29259c = bArr;
        AbstractC14579a.d(secureRandom, bArr);
    }

    public N0(byte[] bArr) {
        this(g(bArr), 0);
    }

    public N0(byte[] bArr, int i10) {
        super(true);
        byte[] bArr2 = new byte[32];
        this.f29259c = bArr2;
        System.arraycopy(bArr, i10, bArr2, 0, 32);
    }
}
