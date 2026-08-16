package jl;

public class h extends C13880e {

    public final byte[] f93984d;

    public final byte[] f93985e;

    public h(C13881f c13881f, byte[] bArr) {
        super(false, c13881f);
        byte[] X10 = org.bouncycastle.util.a.X(bArr, 0, 32);
        this.f93984d = X10;
        this.f93985e = org.bouncycastle.util.a.X(bArr, X10.length, bArr.length);
    }

    public byte[] e() {
        return this.f93985e;
    }

    public byte[] f() {
        return this.f93984d;
    }

    public byte[] getEncoded() {
        byte[] bArr = new byte[d().e()];
        byte[] bArr2 = this.f93984d;
        System.arraycopy(bArr2, 0, bArr, 0, bArr2.length);
        byte[] bArr3 = this.f93985e;
        System.arraycopy(bArr3, 0, bArr, this.f93984d.length, bArr3.length);
        return bArr;
    }

    public h(C13881f c13881f, byte[] bArr, byte[] bArr2) {
        super(false, c13881f);
        this.f93984d = org.bouncycastle.util.a.p(bArr);
        this.f93985e = org.bouncycastle.util.a.p(bArr2);
    }
}
