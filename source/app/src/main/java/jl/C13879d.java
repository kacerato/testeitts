package jl;

import Bi.C2371c;
import Bi.G;
import Bi.InterfaceC2372d;
import Xi.C3335c;

public class C13879d implements InterfaceC2372d {

    public C13878c f93959g;

    @Override
    public C2371c a() {
        int c10 = this.f93959g.c().c();
        int f10 = this.f93959g.c().f();
        int m10 = this.f93959g.c().m();
        byte[] bArr = new byte[32];
        this.f93959g.a().nextBytes(bArr);
        short[] sArr = new short[c10];
        q.j(sArr, bArr, c10, f10);
        byte[] bArr2 = new byte[c10];
        q.u(this.f93959g.a(), bArr2, c10, m10);
        short[] sArr2 = new short[c10];
        q.I(sArr2, sArr, bArr2, c10, f10);
        short[] sArr3 = new short[c10];
        q.K(sArr3, sArr2);
        byte[] bArr3 = new byte[this.f93959g.c().e() - 32];
        q.y(bArr3, sArr3, c10, f10);
        h hVar = new h(this.f93959g.c(), bArr, bArr3);
        byte[] bArr4 = new byte[(c10 + 3) / 4];
        q.o(bArr4, bArr2, c10);
        byte[] bArr5 = new byte[32];
        this.f93959g.a().nextBytes(bArr5);
        byte[] p10 = q.p(new byte[]{4}, hVar.getEncoded());
        return new C2371c((C3335c) hVar, (C3335c) new g(this.f93959g.c(), bArr4, hVar.getEncoded(), bArr5, org.bouncycastle.util.a.X(p10, 0, p10.length / 2)));
    }

    @Override
    public void b(G g10) {
        this.f93959g = (C13878c) g10;
    }

    public C13878c c() {
        return this.f93959g;
    }
}
