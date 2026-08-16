package ol;

public class C14612u extends C14610s {

    public final C14605n f99695d;

    public final C14601j f99696e;

    public C14612u(C14611t c14611t, C14605n c14605n, C14601j c14601j) {
        super(true, c14611t);
        this.f99695d = c14605n;
        this.f99696e = c14601j;
    }

    public byte[] e() {
        C14601j c14601j = this.f99696e;
        return org.bouncycastle.util.a.B(c14601j.f99591a, c14601j.f99592b);
    }

    public byte[] f() {
        return org.bouncycastle.util.a.p(this.f99695d.f99601b);
    }

    public byte[] g() {
        C14601j c14601j = this.f99696e;
        return org.bouncycastle.util.a.B(c14601j.f99591a, c14601j.f99592b);
    }

    public byte[] getEncoded() {
        C14605n c14605n = this.f99695d;
        byte[] bArr = c14605n.f99600a;
        byte[] bArr2 = c14605n.f99601b;
        C14601j c14601j = this.f99696e;
        return org.bouncycastle.util.a.E(new byte[][]{bArr, bArr2, c14601j.f99591a, c14601j.f99592b});
    }

    public byte[] h() {
        return org.bouncycastle.util.a.p(this.f99696e.f99591a);
    }

    public byte[] i() {
        return org.bouncycastle.util.a.p(this.f99696e.f99592b);
    }

    public byte[] j() {
        return org.bouncycastle.util.a.p(this.f99695d.f99600a);
    }

    public C14612u(C14611t c14611t, byte[] bArr) {
        super(true, c14611t);
        int e10 = c14611t.e();
        int i10 = e10 * 4;
        if (bArr.length != i10) {
            throw new IllegalArgumentException("private key encoding does not match parameters");
        }
        int i11 = e10 * 2;
        this.f99695d = new C14605n(org.bouncycastle.util.a.X(bArr, 0, e10), org.bouncycastle.util.a.X(bArr, e10, i11));
        int i12 = e10 * 3;
        this.f99696e = new C14601j(org.bouncycastle.util.a.X(bArr, i11, i12), org.bouncycastle.util.a.X(bArr, i12, i10));
    }

    public C14612u(C14611t c14611t, byte[] bArr, byte[] bArr2, byte[] bArr3, byte[] bArr4) {
        super(true, c14611t);
        this.f99695d = new C14605n(bArr, bArr2);
        this.f99696e = new C14601j(bArr3, bArr4);
    }
}
