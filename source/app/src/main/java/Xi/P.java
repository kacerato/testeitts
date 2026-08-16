package Xi;

import fm.C13260d;
import java.io.EOFException;
import java.io.IOException;
import java.io.InputStream;
import pk.AbstractC15007b;

public final class P extends C3335c {

    public static final int f29266d = 32;

    public final AbstractC15007b.j f29267c;

    public P(InputStream inputStream) throws IOException {
        super(false);
        byte[] bArr = new byte[32];
        if (32 != C13260d.g(inputStream, bArr)) {
            throw new EOFException("EOF encountered in middle of Ed25519 public key");
        }
        this.f29267c = e(bArr, 0);
    }

    public static AbstractC15007b.j e(byte[] bArr, int i10) {
        AbstractC15007b.j l02 = AbstractC15007b.l0(bArr, i10);
        if (l02 != null) {
            return l02;
        }
        throw new IllegalArgumentException("invalid public key");
    }

    private static byte[] f(byte[] bArr) {
        if (bArr.length == 32) {
            return bArr;
        }
        throw new IllegalArgumentException("'buf' must have length 32");
    }

    public void d(byte[] bArr, int i10) {
        AbstractC15007b.n(this.f29267c, bArr, i10);
    }

    public boolean g(int i10, byte[] bArr, byte[] bArr2, int i11, int i12, byte[] bArr3, int i13) {
        if (i10 == 0) {
            if (bArr == null) {
                return AbstractC15007b.m0(bArr3, i13, this.f29267c, bArr2, i11, i12);
            }
            throw new IllegalArgumentException("ctx");
        }
        if (i10 == 1) {
            if (bArr == null) {
                throw new NullPointerException("'ctx' cannot be null");
            }
            if (bArr.length <= 255) {
                return AbstractC15007b.n0(bArr3, i13, this.f29267c, bArr, bArr2, i11, i12);
            }
            throw new IllegalArgumentException("ctx");
        }
        if (i10 != 2) {
            throw new IllegalArgumentException("algorithm");
        }
        if (bArr == null) {
            throw new NullPointerException("'ctx' cannot be null");
        }
        if (bArr.length > 255) {
            throw new IllegalArgumentException("ctx");
        }
        if (64 == i12) {
            return AbstractC15007b.r0(bArr3, i13, this.f29267c, bArr, bArr2, i11);
        }
        throw new IllegalArgumentException("msgLen");
    }

    public byte[] getEncoded() {
        byte[] bArr = new byte[32];
        d(bArr, 0);
        return bArr;
    }

    public P(AbstractC15007b.j jVar) {
        super(false);
        if (jVar == null) {
            throw new NullPointerException("'publicPoint' cannot be null");
        }
        this.f29267c = jVar;
    }

    public P(byte[] bArr) {
        this(f(bArr), 0);
    }

    public P(byte[] bArr, int i10) {
        super(false);
        this.f29267c = e(bArr, i10);
    }
}
