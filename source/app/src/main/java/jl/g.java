package jl;

public class g extends C13880e {

    public final byte[] f93980d;

    public final byte[] f93981e;

    public final byte[] f93982f;

    public final byte[] f93983g;

    public g(C13881f c13881f, byte[] bArr, byte[] bArr2, byte[] bArr3, byte[] bArr4) {
        super(true, c13881f);
        this.f93980d = org.bouncycastle.util.a.p(bArr);
        this.f93981e = org.bouncycastle.util.a.p(bArr2);
        this.f93982f = org.bouncycastle.util.a.p(bArr3);
        this.f93983g = org.bouncycastle.util.a.p(bArr4);
    }

    public byte[] e() {
        return org.bouncycastle.util.a.p(this.f93980d);
    }

    public byte[] f() {
        return org.bouncycastle.util.a.p(this.f93983g);
    }

    public byte[] g() {
        return org.bouncycastle.util.a.p(this.f93981e);
    }

    public byte[] getEncoded() {
        byte[] bArr = new byte[d().d()];
        byte[] bArr2 = this.f93980d;
        System.arraycopy(bArr2, 0, bArr, 0, bArr2.length);
        byte[] bArr3 = this.f93981e;
        System.arraycopy(bArr3, 0, bArr, this.f93980d.length, bArr3.length);
        byte[] bArr4 = this.f93982f;
        System.arraycopy(bArr4, 0, bArr, this.f93980d.length + this.f93981e.length, bArr4.length);
        byte[] bArr5 = this.f93983g;
        System.arraycopy(bArr5, 0, bArr, this.f93980d.length + this.f93981e.length + this.f93982f.length, bArr5.length);
        return bArr;
    }

    public byte[] h() {
        return org.bouncycastle.util.a.p(this.f93982f);
    }
}
