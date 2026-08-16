package gl;

import Bi.A;

public class C13392e implements A {

    public C13391d f90070a;

    public C13396i f90071b;

    public C13392e(C13398k c13398k) {
        this.f90071b = c13398k;
        c(c13398k.d());
    }

    @Override
    public int a() {
        return this.f90071b.d().h() + this.f90071b.d().f() + 80;
    }

    @Override
    public byte[] b(byte[] bArr) {
        byte[] bArr2 = new byte[this.f90070a.k()];
        this.f90070a.a(bArr2, bArr, ((C13398k) this.f90071b).e());
        return org.bouncycastle.util.a.X(bArr2, 0, this.f90071b.d().c());
    }

    public final void c(C13397j c13397j) {
        this.f90070a = c13397j.b();
    }
}
