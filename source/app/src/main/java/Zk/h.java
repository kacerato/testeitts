package Zk;

public class h extends f {

    public byte[] f31500d;

    public byte[] f31501e;

    public byte[] f31502f;

    public h(g gVar, byte[] bArr, byte[] bArr2, byte[] bArr3) {
        super(true, gVar);
        this.f31500d = org.bouncycastle.util.a.p(bArr);
        this.f31501e = org.bouncycastle.util.a.p(bArr2);
        this.f31502f = org.bouncycastle.util.a.p(bArr3);
    }

    public byte[] e() {
        return this.f31500d;
    }

    public byte[] f() {
        return this.f31501e;
    }

    public byte[] g() {
        return this.f31502f;
    }

    public byte[] getEncoded() {
        return org.bouncycastle.util.a.C(this.f31500d, this.f31501e, this.f31502f);
    }
}
