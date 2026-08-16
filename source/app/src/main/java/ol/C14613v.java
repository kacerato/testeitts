package ol;

public class C14613v extends C14610s {

    public final C14601j f99697d;

    public C14613v(C14611t c14611t, C14601j c14601j) {
        super(false, c14611t);
        this.f99697d = c14601j;
    }

    public byte[] e() {
        return org.bouncycastle.util.a.p(this.f99697d.f99592b);
    }

    public byte[] f() {
        return org.bouncycastle.util.a.p(this.f99697d.f99591a);
    }

    public byte[] getEncoded() {
        C14601j c14601j = this.f99697d;
        return org.bouncycastle.util.a.B(c14601j.f99591a, c14601j.f99592b);
    }

    public C14613v(C14611t c14611t, byte[] bArr) {
        super(false, c14611t);
        int e10 = c14611t.e();
        int i10 = e10 * 2;
        if (bArr.length != i10) {
            throw new IllegalArgumentException("public key encoding does not match parameters");
        }
        this.f99697d = new C14601j(org.bouncycastle.util.a.X(bArr, 0, e10), org.bouncycastle.util.a.X(bArr, e10, i10));
    }
}
