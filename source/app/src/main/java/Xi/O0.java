package Xi;

import fm.C13260d;
import java.io.EOFException;
import java.io.IOException;
import java.io.InputStream;

public final class O0 extends C3335c {

    public static final int f29264d = 32;

    public final byte[] f29265c;

    public O0(InputStream inputStream) throws IOException {
        super(false);
        byte[] bArr = new byte[32];
        this.f29265c = bArr;
        if (32 != C13260d.g(inputStream, bArr)) {
            throw new EOFException("EOF encountered in middle of X25519 public key");
        }
    }

    private static byte[] e(byte[] bArr) {
        if (bArr.length == 32) {
            return bArr;
        }
        throw new IllegalArgumentException("'buf' must have length 32");
    }

    public void d(byte[] bArr, int i10) {
        System.arraycopy(this.f29265c, 0, bArr, i10, 32);
    }

    public byte[] getEncoded() {
        return org.bouncycastle.util.a.p(this.f29265c);
    }

    public O0(byte[] bArr) {
        this(e(bArr), 0);
    }

    public O0(byte[] bArr, int i10) {
        super(false);
        byte[] bArr2 = new byte[32];
        this.f29265c = bArr2;
        System.arraycopy(bArr, i10, bArr2, 0, 32);
    }
}
