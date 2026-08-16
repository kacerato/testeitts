package Xi;

import fm.C13260d;
import java.io.EOFException;
import java.io.IOException;
import java.io.InputStream;

public final class R0 extends C3335c {

    public static final int f29271d = 56;

    public final byte[] f29272c;

    public R0(InputStream inputStream) throws IOException {
        super(false);
        byte[] bArr = new byte[56];
        this.f29272c = bArr;
        if (56 != C13260d.g(inputStream, bArr)) {
            throw new EOFException("EOF encountered in middle of X448 public key");
        }
    }

    private static byte[] e(byte[] bArr) {
        if (bArr.length == 56) {
            return bArr;
        }
        throw new IllegalArgumentException("'buf' must have length 56");
    }

    public void d(byte[] bArr, int i10) {
        System.arraycopy(this.f29272c, 0, bArr, i10, 56);
    }

    public byte[] getEncoded() {
        return org.bouncycastle.util.a.p(this.f29272c);
    }

    public R0(byte[] bArr) {
        this(e(bArr), 0);
    }

    public R0(byte[] bArr, int i10) {
        super(false);
        byte[] bArr2 = new byte[56];
        this.f29272c = bArr2;
        System.arraycopy(bArr, i10, bArr2, 0, 56);
    }
}
