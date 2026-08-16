package Xi;

import fm.C13260d;
import java.io.EOFException;
import java.io.IOException;
import java.io.InputStream;
import java.security.SecureRandom;
import pk.AbstractC15007b;

public final class O extends C3335c {

    public static final int f29260e = 32;

    public static final int f29261f = 64;

    public final byte[] f29262c;

    public P f29263d;

    public O(InputStream inputStream) throws IOException {
        super(true);
        byte[] bArr = new byte[32];
        this.f29262c = bArr;
        if (32 != C13260d.g(inputStream, bArr)) {
            throw new EOFException("EOF encountered in middle of Ed25519 private key");
        }
    }

    public static byte[] h(byte[] bArr) {
        if (bArr.length == 32) {
            return bArr;
        }
        throw new IllegalArgumentException("'buf' must have length 32");
    }

    public void d(byte[] bArr, int i10) {
        System.arraycopy(this.f29262c, 0, bArr, i10, 32);
    }

    public P e() {
        P p10;
        synchronized (this.f29262c) {
            try {
                if (this.f29263d == null) {
                    this.f29263d = new P(AbstractC15007b.r(this.f29262c, 0));
                }
                p10 = this.f29263d;
            } catch (Throwable th2) {
                throw th2;
            }
        }
        return p10;
    }

    public void f(int i10, P p10, byte[] bArr, byte[] bArr2, int i11, int i12, byte[] bArr3, int i13) {
        g(i10, bArr, bArr2, i11, i12, bArr3, i13);
    }

    public void g(int i10, byte[] bArr, byte[] bArr2, int i11, int i12, byte[] bArr3, int i13) {
        byte[] bArr4 = new byte[32];
        e().d(bArr4, 0);
        if (i10 == 0) {
            if (bArr != null) {
                throw new IllegalArgumentException("ctx");
            }
            AbstractC15007b.b0(this.f29262c, 0, bArr4, 0, bArr2, i11, i12, bArr3, i13);
            return;
        }
        if (i10 == 1) {
            if (bArr == null) {
                throw new NullPointerException("'ctx' cannot be null");
            }
            if (bArr.length > 255) {
                throw new IllegalArgumentException("ctx");
            }
            AbstractC15007b.c0(this.f29262c, 0, bArr4, 0, bArr, bArr2, i11, i12, bArr3, i13);
            return;
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
        if (64 != i12) {
            throw new IllegalArgumentException("msgLen");
        }
        AbstractC15007b.f0(this.f29262c, 0, bArr4, 0, bArr, bArr2, i11, bArr3, i13);
    }

    public byte[] getEncoded() {
        return org.bouncycastle.util.a.p(this.f29262c);
    }

    public O(SecureRandom secureRandom) {
        super(true);
        byte[] bArr = new byte[32];
        this.f29262c = bArr;
        AbstractC15007b.q(secureRandom, bArr);
    }

    public O(byte[] bArr) {
        this(h(bArr), 0);
    }

    public O(byte[] bArr, int i10) {
        super(true);
        byte[] bArr2 = new byte[32];
        this.f29262c = bArr2;
        System.arraycopy(bArr, i10, bArr2, 0, 32);
    }
}
