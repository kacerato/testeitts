package al;

public class l extends i {

    public final byte[] f32389d;

    public l(j jVar, byte[] bArr) {
        super(false, jVar);
        this.f32389d = org.bouncycastle.util.a.p(bArr);
    }

    public byte[] e() {
        return org.bouncycastle.util.a.p(this.f32389d);
    }

    public byte[] getEncoded() {
        return e();
    }
}
