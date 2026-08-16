package bl;

public class g extends C3903d {

    public final byte[] f33485d;

    public final byte[] f33486e;

    public g(C3904e c3904e, byte[] bArr) {
        super(false, c3904e);
        this.f33485d = org.bouncycastle.util.a.X(bArr, 0, 32);
        this.f33486e = org.bouncycastle.util.a.X(bArr, 32, bArr.length);
    }

    public static byte[] e(byte[] bArr, byte[] bArr2) {
        return org.bouncycastle.util.a.B(bArr, bArr2);
    }

    public byte[] f() {
        return org.bouncycastle.util.a.p(this.f33485d);
    }

    public byte[] g() {
        return org.bouncycastle.util.a.p(this.f33486e);
    }

    public byte[] getEncoded() {
        return e(this.f33485d, this.f33486e);
    }

    public g(C3904e c3904e, byte[] bArr, byte[] bArr2) {
        super(false, c3904e);
        this.f33485d = org.bouncycastle.util.a.p(bArr);
        this.f33486e = org.bouncycastle.util.a.p(bArr2);
    }
}
