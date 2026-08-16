package el;

public class j extends f {

    public byte[] f85881d;

    public j(h hVar, byte[] bArr) {
        super(false, hVar);
        this.f85881d = org.bouncycastle.util.a.p(bArr);
    }

    public byte[] e() {
        return org.bouncycastle.util.a.p(this.f85881d);
    }

    public byte[] getEncoded() {
        return e();
    }
}
