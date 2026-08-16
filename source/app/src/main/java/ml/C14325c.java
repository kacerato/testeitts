package ml;

import Bi.A;

public class C14325c implements A {

    public C14324b f97497a;

    public C14329g f97498b;

    public C14325c(C14329g c14329g) {
        this.f97498b = c14329g;
        c(c14329g.d());
    }

    @Override
    public int a() {
        return this.f97497a.e();
    }

    @Override
    public byte[] b(byte[] bArr) {
        byte[] bArr2 = new byte[this.f97497a.s()];
        this.f97497a.b(bArr2, bArr, ((i) this.f97498b).e());
        return bArr2;
    }

    public final void c(h hVar) {
        this.f97497a = hVar.a();
    }
}
