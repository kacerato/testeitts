package Dl;

import Wl.s;
import Wl.x;
import Wl.y;

public final class h {
    public static Wl.g[] a(a aVar, Wl.g gVar) {
        int d10 = aVar.d();
        x i10 = aVar.i();
        Wl.h a10 = aVar.a();
        y b10 = aVar.b();
        Wl.e c10 = aVar.c();
        y[] j10 = aVar.j();
        Wl.g gVar2 = (Wl.g) gVar.e(i10.a());
        Wl.g c11 = s.c((Wl.g) c10.i(gVar2), a10, b10, j10);
        Wl.g gVar3 = (Wl.g) ((Wl.g) gVar2.a(c11)).e(i10);
        return new Wl.g[]{gVar3.h(d10), (Wl.g) c11.e(i10)};
    }

    public static Wl.g[] b(Rl.g gVar, Wl.g gVar2) {
        int h10 = gVar.h();
        x j10 = gVar.j();
        Wl.h e10 = gVar.e();
        y f10 = gVar.f();
        Wl.e g10 = gVar.g();
        y[] k10 = gVar.k();
        Wl.g gVar3 = (Wl.g) gVar2.e(j10.a());
        Wl.g c10 = s.c((Wl.g) g10.i(gVar3), e10, f10, k10);
        Wl.g gVar4 = (Wl.g) ((Wl.g) gVar3.a(c10)).e(j10);
        return new Wl.g[]{gVar4.h(h10), (Wl.g) c10.e(j10)};
    }

    public static Wl.g c(b bVar, Wl.g gVar, Wl.g gVar2) {
        return (Wl.g) bVar.a().A(gVar).a(gVar2);
    }

    public static Wl.g d(Rl.h hVar, Wl.g gVar, Wl.g gVar2) {
        return (Wl.g) hVar.e().A(gVar).a(gVar2);
    }
}
