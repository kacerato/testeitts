package Rl;

import Bi.C2371c;
import Bi.G;
import Bi.InterfaceC2372d;
import Wl.s;
import Wl.x;
import Wl.y;
import Xi.C3335c;
import java.security.SecureRandom;

public class c implements InterfaceC2372d {

    public static final String f22875n = "1.3.6.1.4.1.8301.3.1.3.4.2";

    public b f22876g;

    public int f22877h;

    public int f22878i;

    public int f22879j;

    public int f22880k;

    public SecureRandom f22881l;

    public boolean f22882m = false;

    private void c() {
        b(new b(null, new e()));
    }

    @Override
    public C2371c a() {
        if (!this.f22882m) {
            c();
        }
        Wl.h hVar = new Wl.h(this.f22877h, this.f22880k);
        y yVar = new y(hVar, this.f22879j, 'I', this.f22881l);
        s.a a10 = Wl.s.a(Wl.s.b(hVar, yVar), this.f22881l);
        Wl.e c10 = a10.c();
        x b10 = a10.b();
        Wl.e eVar = (Wl.e) c10.p();
        return new C2371c((C3335c) new h(this.f22878i, this.f22879j, eVar, this.f22876g.c().e()), (C3335c) new g(this.f22878i, eVar.d(), hVar, yVar, b10, this.f22876g.c().e()));
    }

    @Override
    public void b(G g10) {
        this.f22876g = (b) g10;
        this.f22881l = g10.a();
        this.f22877h = this.f22876g.c().b();
        this.f22878i = this.f22876g.c().c();
        this.f22879j = this.f22876g.c().d();
        this.f22880k = this.f22876g.c().a();
        this.f22882m = true;
    }
}
