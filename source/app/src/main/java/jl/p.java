package jl;

public class p extends m {

    public final byte[] f94011d;

    public p(n nVar, byte[] bArr) {
        super(false, nVar);
        this.f94011d = org.bouncycastle.util.a.p(bArr);
    }

    public byte[] e() {
        return this.f94011d;
    }

    public byte[] getEncoded() {
        return org.bouncycastle.util.a.p(this.f94011d);
    }
}
