package Xi;

import fm.C13260d;
import java.io.EOFException;
import java.io.IOException;
import java.io.InputStream;
import pk.AbstractC15008c;

public final class T extends C3335c {

    public static final int f29280d = 57;

    public final AbstractC15008c.g f29281c;

    public T(InputStream inputStream) throws IOException {
        super(false);
        byte[] bArr = new byte[57];
        if (57 != C13260d.g(inputStream, bArr)) {
            throw new EOFException("EOF encountered in middle of Ed448 public key");
        }
        this.f29281c = e(bArr, 0);
    }

    public static AbstractC15008c.g e(byte[] bArr, int i10) {
        AbstractC15008c.g g02 = AbstractC15008c.g0(bArr, i10);
        if (g02 != null) {
            return g02;
        }
        throw new IllegalArgumentException("invalid public key");
    }

    private static byte[] f(byte[] bArr) {
        if (bArr.length == 57) {
            return bArr;
        }
        throw new IllegalArgumentException("'buf' must have length 57");
    }

    public void d(byte[] bArr, int i10) {
        AbstractC15008c.n(this.f29281c, bArr, i10);
    }

    public boolean g(int i10, byte[] bArr, byte[] bArr2, int i11, int i12, byte[] bArr3, int i13) {
        if (i10 == 0) {
            if (bArr == null) {
                throw new NullPointerException("'ctx' cannot be null");
            }
            if (bArr.length <= 255) {
                return AbstractC15008c.h0(bArr3, i13, this.f29281c, bArr, bArr2, i11, i12);
            }
            throw new IllegalArgumentException("ctx");
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
        if (64 == i12) {
            return AbstractC15008c.k0(bArr3, i13, this.f29281c, bArr, bArr2, i11);
        }
        throw new IllegalArgumentException("msgLen");
    }

    public byte[] getEncoded() {
        byte[] bArr = new byte[57];
        d(bArr, 0);
        return bArr;
    }

    public T(AbstractC15008c.g gVar) {
        super(false);
        if (gVar == null) {
            throw new NullPointerException("'publicPoint' cannot be null");
        }
        this.f29281c = gVar;
    }

    public T(byte[] bArr) {
        this(f(bArr), 0);
    }

    public T(byte[] bArr, int i10) {
        super(false);
        this.f29281c = e(bArr, i10);
    }
}
