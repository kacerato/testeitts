package Xi;

import fm.C13260d;
import java.io.EOFException;
import java.io.IOException;
import java.io.InputStream;
import java.security.SecureRandom;

public final class Q0 extends C3335c {

    public static final int f29268d = 56;

    public static final int f29269e = 56;

    public final byte[] f29270c;

    public Q0(InputStream inputStream) throws IOException {
        super(true);
        byte[] bArr = new byte[56];
        this.f29270c = bArr;
        if (56 != C13260d.g(inputStream, bArr)) {
            throw new EOFException("EOF encountered in middle of X448 private key");
        }
    }

    private static byte[] g(byte[] bArr) {
        if (bArr.length == 56) {
            return bArr;
        }
        throw new IllegalArgumentException("'buf' must have length 56");
    }

    public void d(byte[] bArr, int i10) {
        System.arraycopy(this.f29270c, 0, bArr, i10, 56);
    }

    public R0 e() {
        byte[] bArr = new byte[56];
        ok.c.e(this.f29270c, 0, bArr, 0);
        return new R0(bArr, 0);
    }

    public void f(R0 r02, byte[] bArr, int i10) {
        byte[] bArr2 = new byte[56];
        r02.d(bArr2, 0);
        if (!ok.c.a(this.f29270c, 0, bArr2, 0, bArr, i10)) {
            throw new IllegalStateException("X448 agreement failed");
        }
    }

    public byte[] getEncoded() {
        return org.bouncycastle.util.a.p(this.f29270c);
    }

    public Q0(SecureRandom secureRandom) {
        super(true);
        byte[] bArr = new byte[56];
        this.f29270c = bArr;
        ok.c.d(secureRandom, bArr);
    }

    public Q0(byte[] bArr) {
        this(g(bArr), 0);
    }

    public Q0(byte[] bArr, int i10) {
        super(true);
        byte[] bArr2 = new byte[56];
        this.f29270c = bArr2;
        System.arraycopy(bArr, i10, bArr2, 0, 56);
    }
}
