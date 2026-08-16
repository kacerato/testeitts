package Xi;

import fm.C13260d;
import java.io.EOFException;
import java.io.IOException;
import java.io.InputStream;
import java.security.SecureRandom;
import pk.AbstractC15008c;

public final class S extends C3335c {

    public static final int f29273e = 57;

    public static final int f29274f = 114;

    public final byte[] f29275c;

    public T f29276d;

    public S(InputStream inputStream) throws IOException {
        super(true);
        byte[] bArr = new byte[57];
        this.f29275c = bArr;
        if (57 != C13260d.g(inputStream, bArr)) {
            throw new EOFException("EOF encountered in middle of Ed448 private key");
        }
    }

    private static byte[] h(byte[] bArr) {
        if (bArr.length == 57) {
            return bArr;
        }
        throw new IllegalArgumentException("'buf' must have length 57");
    }

    public void d(byte[] bArr, int i10) {
        System.arraycopy(this.f29275c, 0, bArr, i10, 57);
    }

    public T e() {
        T t10;
        synchronized (this.f29275c) {
            try {
                if (this.f29276d == null) {
                    this.f29276d = new T(AbstractC15008c.r(this.f29275c, 0));
                }
                t10 = this.f29276d;
            } catch (Throwable th2) {
                throw th2;
            }
        }
        return t10;
    }

    public void f(int i10, T t10, byte[] bArr, byte[] bArr2, int i11, int i12, byte[] bArr3, int i13) {
        g(i10, bArr, bArr2, i11, i12, bArr3, i13);
    }

    public void g(int i10, byte[] bArr, byte[] bArr2, int i11, int i12, byte[] bArr3, int i13) {
        byte[] bArr4 = new byte[57];
        e().d(bArr4, 0);
        if (i10 == 0) {
            if (bArr == null) {
                throw new NullPointerException("'ctx' cannot be null");
            }
            if (bArr.length > 255) {
                throw new IllegalArgumentException("ctx");
            }
            AbstractC15008c.X(this.f29275c, 0, bArr4, 0, bArr, bArr2, i11, i12, bArr3, i13);
            return;
        }
        if (i10 != 1) {
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
        AbstractC15008c.a0(this.f29275c, 0, bArr4, 0, bArr, bArr2, i11, bArr3, i13);
    }

    public byte[] getEncoded() {
        return org.bouncycastle.util.a.p(this.f29275c);
    }

    public S(SecureRandom secureRandom) {
        super(true);
        byte[] bArr = new byte[57];
        this.f29275c = bArr;
        AbstractC15008c.q(secureRandom, bArr);
    }

    public S(byte[] bArr) {
        this(h(bArr), 0);
    }

    public S(byte[] bArr, int i10) {
        super(true);
        byte[] bArr2 = new byte[57];
        this.f29275c = bArr2;
        System.arraycopy(bArr, i10, bArr2, 0, 57);
    }
}
