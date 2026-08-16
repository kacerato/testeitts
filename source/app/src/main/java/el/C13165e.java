package el;

import Bi.C2371c;
import Bi.G;
import Bi.InterfaceC2372d;
import Xi.C3335c;
import java.security.SecureRandom;

public class C13165e implements InterfaceC2372d {

    public C13164d f85857g;

    public int f85858h;

    public int f85859i;

    public int f85860j;

    public SecureRandom f85861k;

    private C2371c c() {
        C13161a c10 = this.f85857g.c().c();
        byte[] bArr = new byte[c10.f()];
        byte[] bArr2 = new byte[c10.g()];
        c10.k(bArr2, bArr, this.f85861k);
        return new C2371c((C3335c) new j(this.f85857g.c(), bArr2), (C3335c) new i(this.f85857g.c(), bArr));
    }

    private void d(G g10) {
        this.f85857g = (C13164d) g10;
        this.f85861k = g10.a();
        this.f85858h = this.f85857g.c().d();
        this.f85859i = this.f85857g.c().b();
        this.f85860j = this.f85857g.c().a();
    }

    @Override
    public C2371c a() {
        return c();
    }

    @Override
    public void b(G g10) {
        d(g10);
    }
}
