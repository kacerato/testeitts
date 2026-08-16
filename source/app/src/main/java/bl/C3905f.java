package bl;

public class C3905f extends C3903d {

    public final byte[] f33478d;

    public final byte[] f33479e;

    public final byte[] f33480f;

    public final byte[] f33481g;

    public final byte[] f33482h;

    public final byte[] f33483i;

    public final byte[] f33484j;

    public C3905f(C3904e c3904e, byte[] bArr, g gVar) {
        super(true, c3904e);
        C3900a a10 = c3904e.a(null);
        this.f33478d = org.bouncycastle.util.a.X(bArr, 0, 32);
        this.f33479e = org.bouncycastle.util.a.X(bArr, 32, 64);
        this.f33480f = org.bouncycastle.util.a.X(bArr, 64, 128);
        int l10 = (a10.l() * a10.o()) + 128;
        this.f33481g = org.bouncycastle.util.a.X(bArr, 128, l10);
        int k10 = (a10.k() * a10.o()) + l10;
        this.f33482h = org.bouncycastle.util.a.X(bArr, l10, k10);
        this.f33483i = org.bouncycastle.util.a.X(bArr, k10, (a10.k() * 416) + k10);
        if (gVar != null) {
            this.f33484j = gVar.g();
        } else {
            this.f33484j = null;
        }
    }

    public byte[] e() {
        return org.bouncycastle.util.a.p(this.f33479e);
    }

    public byte[] f() {
        return getEncoded();
    }

    public byte[] g() {
        return g.e(this.f33478d, this.f33484j);
    }

    public byte[] getEncoded() {
        return org.bouncycastle.util.a.E(new byte[][]{this.f33478d, this.f33479e, this.f33480f, this.f33481g, this.f33482h, this.f33483i});
    }

    public g h() {
        return new g(d(), this.f33478d, this.f33484j);
    }

    public byte[] i() {
        return org.bouncycastle.util.a.p(this.f33478d);
    }

    public byte[] j() {
        return org.bouncycastle.util.a.p(this.f33481g);
    }

    public byte[] k() {
        return org.bouncycastle.util.a.p(this.f33482h);
    }

    public byte[] l() {
        return org.bouncycastle.util.a.p(this.f33483i);
    }

    public byte[] m() {
        return org.bouncycastle.util.a.p(this.f33484j);
    }

    public byte[] n() {
        return org.bouncycastle.util.a.p(this.f33480f);
    }

    public C3905f(C3904e c3904e, byte[] bArr, byte[] bArr2, byte[] bArr3, byte[] bArr4, byte[] bArr5, byte[] bArr6, byte[] bArr7) {
        super(true, c3904e);
        this.f33478d = org.bouncycastle.util.a.p(bArr);
        this.f33479e = org.bouncycastle.util.a.p(bArr2);
        this.f33480f = org.bouncycastle.util.a.p(bArr3);
        this.f33481g = org.bouncycastle.util.a.p(bArr4);
        this.f33482h = org.bouncycastle.util.a.p(bArr5);
        this.f33483i = org.bouncycastle.util.a.p(bArr6);
        this.f33484j = org.bouncycastle.util.a.p(bArr7);
    }
}
