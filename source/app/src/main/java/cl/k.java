package cl;

public class k extends h {

    public final byte[] f35020d;

    public final byte[] f35021e;

    public k(i iVar, byte[] bArr) {
        super(false, iVar);
        this.f35020d = org.bouncycastle.util.a.X(bArr, 0, bArr.length - 32);
        this.f35021e = org.bouncycastle.util.a.X(bArr, bArr.length - 32, bArr.length);
    }

    public static byte[] e(byte[] bArr, byte[] bArr2) {
        return org.bouncycastle.util.a.B(bArr, bArr2);
    }

    public byte[] f() {
        return getEncoded();
    }

    public byte[] g() {
        return org.bouncycastle.util.a.p(this.f35021e);
    }

    public byte[] getEncoded() {
        return e(this.f35020d, this.f35021e);
    }

    public byte[] h() {
        return org.bouncycastle.util.a.p(this.f35020d);
    }

    public k(i iVar, byte[] bArr, byte[] bArr2) {
        super(false, iVar);
        this.f35020d = org.bouncycastle.util.a.p(bArr);
        this.f35021e = org.bouncycastle.util.a.p(bArr2);
    }
}
