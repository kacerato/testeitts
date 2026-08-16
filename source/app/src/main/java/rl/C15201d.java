package rl;

import Bi.C2371c;
import Bi.G;
import Bi.InterfaceC2372d;
import Oi.P;
import Xi.C3335c;
import Xi.M0;
import cl.C4223f;
import cl.i;
import java.security.SecureRandom;

public class C15201d implements InterfaceC2372d {

    public SecureRandom f109086g;

    private C2371c c() {
        cl.g gVar = new cl.g();
        gVar.b(new C4223f(this.f109086g, i.f35009g));
        P p10 = new P();
        p10.b(new M0(this.f109086g));
        C2371c a10 = gVar.a();
        C2371c a11 = p10.a();
        return new C2371c((C3335c) new C15204g(a10.b(), a11.b()), (C3335c) new C15203f(a10.a(), a11.a()));
    }

    private void d(G g10) {
        this.f109086g = g10.a();
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
