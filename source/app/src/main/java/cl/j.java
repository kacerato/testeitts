package cl;

public class j extends h {

    public final byte[] f35015d;

    public final byte[] f35016e;

    public final byte[] f35017f;

    public final byte[] f35018g;

    public final byte[] f35019h;

    public j(i iVar, byte[] bArr) {
        super(true, iVar);
        C4219b a10 = iVar.a();
        this.f35015d = org.bouncycastle.util.a.X(bArr, 0, a10.m());
        int m10 = a10.m();
        this.f35018g = org.bouncycastle.util.a.X(bArr, m10, (a10.l() + m10) - 32);
        int l10 = m10 + (a10.l() - 32);
        int i10 = l10 + 32;
        this.f35019h = org.bouncycastle.util.a.X(bArr, l10, i10);
        int i11 = l10 + 64;
        this.f35016e = org.bouncycastle.util.a.X(bArr, i10, i11);
        this.f35017f = org.bouncycastle.util.a.X(bArr, i11, l10 + 96);
    }

    public byte[] e() {
        return org.bouncycastle.util.a.p(this.f35016e);
    }

    public byte[] f() {
        return org.bouncycastle.util.a.p(this.f35017f);
    }

    public byte[] g() {
        return getEncoded();
    }

    public byte[] getEncoded() {
        return org.bouncycastle.util.a.E(new byte[][]{this.f35015d, this.f35018g, this.f35019h, this.f35016e, this.f35017f});
    }

    public byte[] h() {
        return k.e(this.f35018g, this.f35019h);
    }

    public k i() {
        return new k(d(), this.f35018g, this.f35019h);
    }

    public byte[] j() {
        return org.bouncycastle.util.a.p(this.f35019h);
    }

    public byte[] k() {
        return org.bouncycastle.util.a.p(this.f35015d);
    }

    public byte[] l() {
        return org.bouncycastle.util.a.p(this.f35018g);
    }

    public j(i iVar, byte[] bArr, byte[] bArr2, byte[] bArr3, byte[] bArr4, byte[] bArr5) {
        super(true, iVar);
        this.f35015d = org.bouncycastle.util.a.p(bArr);
        this.f35016e = org.bouncycastle.util.a.p(bArr2);
        this.f35017f = org.bouncycastle.util.a.p(bArr3);
        this.f35018g = org.bouncycastle.util.a.p(bArr4);
        this.f35019h = org.bouncycastle.util.a.p(bArr5);
    }
}
