package Eg;

import Bg.r;
import Eg.h;
import java.io.IOException;
import yg.C16188d;

public class i extends b<a> {

    public final char[] f5797f;

    public zg.h f5798g;

    public static class a extends d {

        public final String f5799b;

        public a(String str, Bg.m mVar) {
            super(mVar);
            this.f5799b = str;
        }
    }

    public i(r rVar, char[] cArr, Bg.l lVar, h.b bVar) {
        super(rVar, lVar, bVar);
        this.f5797f = cArr;
    }

    @Override
    public long d(a aVar) {
        return C16188d.g(q().b().b());
    }

    @Override
    public void f(a aVar, Dg.a aVar2) throws IOException {
        try {
            zg.k y10 = y(aVar.f5782a);
            try {
                for (Bg.j jVar : q().b().b()) {
                    if (jVar.j().startsWith("__MACOSX")) {
                        aVar2.x(jVar.o());
                    } else {
                        this.f5798g.a(jVar);
                        o(y10, jVar, aVar.f5799b, null, aVar2, new byte[aVar.f5782a.a()]);
                        j();
                    }
                }
                if (y10 != null) {
                    y10.close();
                }
            } finally {
            }
        } finally {
            zg.h hVar = this.f5798g;
            if (hVar != null) {
                hVar.close();
            }
        }
    }

    public final Bg.j x(r rVar) {
        if (rVar.b() == null || rVar.b().b() == null || rVar.b().b().size() == 0) {
            return null;
        }
        return rVar.b().b().get(0);
    }

    public final zg.k y(Bg.m mVar) throws IOException {
        this.f5798g = Fg.g.b(q());
        Bg.j x10 = x(q());
        if (x10 != null) {
            this.f5798g.a(x10);
        }
        return new zg.k(this.f5798g, this.f5797f, mVar);
    }
}
