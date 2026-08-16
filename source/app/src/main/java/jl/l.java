package jl;

import Bi.C2371c;
import Bi.G;
import Bi.InterfaceC2372d;
import Xi.C3335c;

public class l implements InterfaceC2372d {

    public k f93989g;

    @Override
    public C2371c a() {
        int b10 = this.f93989g.c().b();
        int e10 = this.f93989g.c().e();
        int i10 = this.f93989g.c().i();
        byte[] bArr = new byte[b10];
        byte[] bArr2 = new byte[b10];
        do {
            q.v(this.f93989g.a(), bArr);
        } while (!q.F(bArr, bArr2, b10));
        byte[] bArr3 = new byte[b10];
        q.u(this.f93989g.a(), bArr3, b10, i10);
        short[] sArr = new short[b10];
        q.s(sArr, bArr3, b10, e10);
        short[] sArr2 = new short[b10];
        q.I(sArr2, sArr, bArr, b10, e10);
        byte[] bArr4 = new byte[this.f93989g.c().d()];
        q.n(bArr4, sArr2, b10, e10);
        p pVar = new p(this.f93989g.c(), bArr4);
        int i11 = (b10 + 3) / 4;
        byte[] bArr5 = new byte[i11];
        q.o(bArr5, bArr3, b10);
        byte[] bArr6 = new byte[i11];
        q.o(bArr6, bArr2, b10);
        byte[] bArr7 = new byte[i11];
        this.f93989g.a().nextBytes(bArr7);
        byte[] p10 = q.p(new byte[]{4}, bArr4);
        return new C2371c((C3335c) pVar, (C3335c) new o(this.f93989g.c(), bArr5, bArr6, bArr4, bArr7, org.bouncycastle.util.a.X(p10, 0, p10.length / 2)));
    }

    @Override
    public void b(G g10) {
        this.f93989g = (k) g10;
    }

    public k c() {
        return this.f93989g;
    }
}
