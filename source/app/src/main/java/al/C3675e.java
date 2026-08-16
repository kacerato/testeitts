package al;

import Bi.A;

public class C3675e implements A {

    public C3674d f32359a;

    public i f32360b;

    public C3675e(k kVar) {
        this.f32360b = kVar;
        d(kVar.d());
    }

    @Override
    public int a() {
        return this.f32359a.n();
    }

    @Override
    public byte[] b(byte[] bArr) {
        return c(bArr, this.f32359a.p());
    }

    public byte[] c(byte[] bArr, int i10) {
        byte[] bArr2 = new byte[i10 / 8];
        this.f32359a.u(bArr2, bArr, ((k) this.f32360b).i());
        return bArr2;
    }

    public final void d(j jVar) {
        this.f32359a = jVar.a();
        k kVar = (k) this.f32360b;
        if (kVar.i().length < this.f32359a.r()) {
            this.f32360b = new k(kVar.d(), this.f32359a.g(kVar.i()));
        }
    }
}
