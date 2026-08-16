package Lg;

import Tg.C3089c;
import Tg.p;
import Tg.x;
import java.io.IOException;
import java.net.ProtocolException;
import okhttp3.C;
import okhttp3.E;
import okhttp3.w;

public final class b implements w {

    public final boolean f13418a;

    public static final class a extends Tg.h {

        public long f13419c;

        public a(x xVar) {
            super(xVar);
        }

        @Override
        public void h0(C3089c c3089c, long j10) throws IOException {
            super.h0(c3089c, j10);
            this.f13419c += j10;
        }
    }

    public b(boolean z10) {
        this.f13418a = z10;
    }

    @Override
    public E a(w.a aVar) throws IOException {
        g gVar = (g) aVar;
        c j10 = gVar.j();
        Kg.f l10 = gVar.l();
        Kg.c cVar = (Kg.c) gVar.d();
        C b02 = gVar.b0();
        long currentTimeMillis = System.currentTimeMillis();
        gVar.i().o(gVar.call());
        j10.d(b02);
        gVar.i().n(gVar.call(), b02);
        E.a aVar2 = null;
        if (f.b(b02.g()) && b02.a() != null) {
            if ("100-continue".equalsIgnoreCase(b02.c(F2.d.f6271s))) {
                j10.b();
                gVar.i().s(gVar.call());
                aVar2 = j10.f(true);
            }
            if (aVar2 == null) {
                gVar.i().m(gVar.call());
                a aVar3 = new a(j10.a(b02, b02.a().a()));
                Tg.d c10 = p.c(aVar3);
                b02.a().h(c10);
                c10.close();
                gVar.i().l(gVar.call(), aVar3.f13419c);
            } else if (!cVar.q()) {
                l10.j();
            }
        }
        j10.c();
        if (aVar2 == null) {
            gVar.i().s(gVar.call());
            aVar2 = j10.f(false);
        }
        E c11 = aVar2.q(b02).h(l10.d().c()).r(currentTimeMillis).o(System.currentTimeMillis()).c();
        int g10 = c11.g();
        if (g10 == 100) {
            c11 = j10.f(false).q(b02).h(l10.d().c()).r(currentTimeMillis).o(System.currentTimeMillis()).c();
            g10 = c11.g();
        }
        gVar.i().r(gVar.call(), c11);
        E c12 = (this.f13418a && g10 == 101) ? c11.r().b(Gg.c.f7800c).c() : c11.r().b(j10.e(c11)).c();
        if ("close".equalsIgnoreCase(c12.w().c(F2.d.f6259o)) || "close".equalsIgnoreCase(c12.j(F2.d.f6259o))) {
            l10.j();
        }
        if ((g10 != 204 && g10 != 205) || c12.c().g() <= 0) {
            return c12;
        }
        throw new ProtocolException("HTTP " + g10 + " had non-zero Content-Length: " + c12.c().g());
    }
}
