package Zk;

import Bi.A;

public class b implements A {

    public a f31477a;

    public f f31478b;

    public b(h hVar) {
        this.f31478b = hVar;
        c(hVar.d());
    }

    @Override
    public int a() {
        return this.f31478b.d().g() + this.f31478b.d().c();
    }

    @Override
    public byte[] b(byte[] bArr) {
        byte[] bArr2 = new byte[this.f31477a.p()];
        h hVar = (h) this.f31478b;
        byte[] X10 = org.bouncycastle.util.a.X(bArr, 0, hVar.d().g());
        byte[] X11 = org.bouncycastle.util.a.X(bArr, hVar.d().g(), bArr.length);
        this.f31477a.i(bArr2, hVar.e(), hVar.f(), hVar.g(), X10, X11);
        return org.bouncycastle.util.a.X(bArr2, 0, this.f31478b.d().h() / 8);
    }

    public final void c(g gVar) {
        this.f31477a = gVar.a();
    }
}
