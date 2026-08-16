package gl;

public class C13399l extends C13396i {

    public byte[] f90104d;

    public C13399l(C13397j c13397j, byte[] bArr) {
        super(true, c13397j);
        this.f90104d = org.bouncycastle.util.a.p(bArr);
    }

    public byte[] e() {
        return org.bouncycastle.util.a.p(this.f90104d);
    }

    public byte[] getEncoded() {
        return e();
    }
}
