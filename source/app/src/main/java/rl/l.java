package Rl;

import Bi.C2371c;
import Bi.G;
import Bi.InterfaceC2372d;
import Wl.A;
import Wl.s;
import Wl.x;
import Wl.y;
import Xi.C3335c;
import java.security.SecureRandom;

public class l implements InterfaceC2372d {

    public static final String f22914n = "1.3.6.1.4.1.8301.3.1.3.4.1";

    public k f22915g;

    public int f22916h;

    public int f22917i;

    public int f22918j;

    public int f22919k;

    public SecureRandom f22920l;

    public boolean f22921m = false;

    private C2371c c() {
        if (!this.f22921m) {
            e();
        }
        Wl.h hVar = new Wl.h(this.f22916h, this.f22919k);
        y yVar = new y(hVar, this.f22918j, 'I', this.f22920l);
        new A(hVar, yVar).c();
        s.a a10 = Wl.s.a(Wl.s.b(hVar, yVar), this.f22920l);
        Wl.e c10 = a10.c();
        x b10 = a10.b();
        Wl.e eVar = (Wl.e) c10.p();
        Wl.e r10 = eVar.r();
        int d10 = eVar.d();
        Wl.e[] q10 = Wl.e.q(d10, this.f22920l);
        x xVar = new x(this.f22917i, this.f22920l);
        return new C2371c((C3335c) new r(this.f22917i, this.f22918j, (Wl.e) ((Wl.e) q10[0].g(r10)).h(xVar)), (C3335c) new q(this.f22917i, d10, hVar, yVar, b10, xVar, q10[1]));
    }

    private void d(G g10) {
        this.f22915g = (k) g10;
        this.f22920l = g10.a();
        this.f22916h = this.f22915g.c().b();
        this.f22917i = this.f22915g.c().c();
        this.f22918j = this.f22915g.c().d();
        this.f22919k = this.f22915g.c().a();
        this.f22921m = true;
    }

    private void e() {
        d(new k(null, new o()));
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
