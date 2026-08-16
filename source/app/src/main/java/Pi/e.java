package Pi;

import org.bouncycastle.crypto.InvalidCipherTextException;

public class e {

    public final a f21532a;

    public final c f21533b;

    public final byte[] f21534c;

    public final byte[] f21535d;

    public e(a aVar, c cVar, byte[] bArr, byte[] bArr2) {
        this.f21532a = aVar;
        this.f21533b = cVar;
        this.f21534c = bArr;
        this.f21535d = bArr2;
    }

    public byte[] a(byte[] bArr, byte[] bArr2, int i10) {
        return this.f21533b.a(bArr, bArr2, i10);
    }

    public byte[] b(byte[] bArr, int i10) {
        return this.f21533b.c(this.f21534c, this.f21535d, "sec", bArr, i10);
    }

    public byte[] c(byte[] bArr, byte[] bArr2) {
        return this.f21533b.b(bArr, bArr2);
    }

    public byte[] d(byte[] bArr, byte[] bArr2) throws InvalidCipherTextException {
        return this.f21532a.b(bArr, bArr2);
    }

    public byte[] e(byte[] bArr, byte[] bArr2, int i10, int i11) throws InvalidCipherTextException {
        return this.f21532a.c(bArr, bArr2, i10, i11);
    }

    public byte[] f(byte[] bArr, byte[] bArr2) throws InvalidCipherTextException {
        return this.f21532a.d(bArr, bArr2);
    }

    public byte[] g(byte[] bArr, byte[] bArr2, int i10, int i11) throws InvalidCipherTextException {
        return this.f21532a.e(bArr, bArr2, i10, i11);
    }
}
