package dl;

public class C12964n extends C12961k {

    public final byte[] f84817d;

    public final byte[] f84818e;

    public final byte[] f84819f;

    public final byte[] f84820g;

    public C12964n(C12963m c12963m, byte[] bArr, byte[] bArr2, byte[] bArr3, byte[] bArr4) {
        super(true, c12963m);
        this.f84818e = org.bouncycastle.util.a.p(bArr);
        this.f84819f = org.bouncycastle.util.a.p(bArr2);
        this.f84820g = org.bouncycastle.util.a.p(bArr3);
        this.f84817d = org.bouncycastle.util.a.p(bArr4);
    }

    public byte[] e() {
        return org.bouncycastle.util.a.p(this.f84819f);
    }

    public byte[] f() {
        return org.bouncycastle.util.a.p(this.f84817d);
    }

    public byte[] g() {
        return org.bouncycastle.util.a.p(this.f84820g);
    }

    public byte[] getEncoded() {
        return org.bouncycastle.util.a.C(this.f84818e, this.f84819f, this.f84820g);
    }

    public byte[] h() {
        return org.bouncycastle.util.a.p(this.f84818e);
    }
}
