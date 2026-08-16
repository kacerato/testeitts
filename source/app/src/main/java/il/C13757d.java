package il;

import Bi.C2371c;
import Bi.G;
import Bi.InterfaceC2372d;
import Xi.C3335c;
import java.security.SecureRandom;

public class C13757d implements InterfaceC2372d {

    public C13756c f92400g;

    public SecureRandom f92401h;

    @Override
    public C2371c a() {
        bm.i iVar = this.f92400g.c().f92412c;
        byte[] bArr = new byte[iVar.o()];
        this.f92401h.nextBytes(bArr);
        l f10 = new f(iVar).f(bArr);
        byte[] bArr2 = f10.f92418a;
        byte[] bArr3 = new byte[iVar.f()];
        byte[] bArr4 = f10.f92419b;
        System.arraycopy(bArr4, 0, bArr3, 0, bArr4.length);
        int m10 = iVar.m();
        byte[] bArr5 = new byte[m10];
        this.f92401h.nextBytes(bArr5);
        System.arraycopy(bArr5, 0, bArr3, iVar.j(), m10);
        return new C2371c((C3335c) new i(this.f92400g.c(), bArr2), (C3335c) new h(this.f92400g.c(), bArr3));
    }

    @Override
    public void b(G g10) {
        this.f92400g = (C13756c) g10;
        this.f92401h = g10.a();
    }
}
