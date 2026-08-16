package Zk;

public class i extends f {

    public byte[] f31503d;

    public i(g gVar, byte[] bArr) {
        super(false, gVar);
        this.f31503d = org.bouncycastle.util.a.p(bArr);
    }

    public byte[] getEncoded() {
        return org.bouncycastle.util.a.p(this.f31503d);
    }
}
