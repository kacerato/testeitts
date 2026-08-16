package Lg;

import Tg.p;
import java.io.IOException;
import java.util.List;
import okhttp3.C;
import okhttp3.D;
import okhttp3.E;
import okhttp3.m;
import okhttp3.n;
import okhttp3.w;
import okhttp3.x;
import org.apache.commons.math3.geometry.VectorFormat;

public final class a implements w {

    public final n f13417a;

    public a(n nVar) {
        this.f13417a = nVar;
    }

    @Override
    public E a(w.a aVar) throws IOException {
        C b02 = aVar.b0();
        C.a h10 = b02.h();
        D a10 = b02.a();
        if (a10 != null) {
            x b10 = a10.b();
            if (b10 != null) {
                h10.h("Content-Type", b10.toString());
            }
            long a11 = a10.a();
            if (a11 != -1) {
                h10.h("Content-Length", Long.toString(a11));
                h10.n("Transfer-Encoding");
            } else {
                h10.h("Transfer-Encoding", "chunked");
                h10.n("Content-Length");
            }
        }
        boolean z10 = false;
        if (b02.c(F2.d.f6283w) == null) {
            h10.h(F2.d.f6283w, Gg.c.t(b02.k(), false));
        }
        if (b02.c(F2.d.f6259o) == null) {
            h10.h(F2.d.f6259o, F2.d.f6278u0);
        }
        if (b02.c(F2.d.f6244j) == null && b02.c(F2.d.f6168I) == null) {
            h10.h(F2.d.f6244j, g3.c.f88116s);
            z10 = true;
        }
        List<m> a12 = this.f13417a.a(b02.k());
        if (!a12.isEmpty()) {
            h10.h(F2.d.f6262p, b(a12));
        }
        if (b02.c("User-Agent") == null) {
            h10.h("User-Agent", Gg.d.a());
        }
        E c10 = aVar.c(h10.b());
        e.k(this.f13417a, b02.k(), c10.m());
        E.a q10 = c10.r().q(b02);
        if (z10 && g3.c.f88116s.equalsIgnoreCase(c10.j("Content-Encoding")) && e.c(c10)) {
            Tg.l lVar = new Tg.l(c10.c().n());
            q10.j(c10.m().i().j("Content-Encoding").j("Content-Length").h());
            q10.b(new h(c10.j("Content-Type"), -1L, p.d(lVar)));
        }
        return q10.c();
    }

    public final String b(List<m> list) {
        StringBuilder sb2 = new StringBuilder();
        int size = list.size();
        for (int i10 = 0; i10 < size; i10++) {
            if (i10 > 0) {
                sb2.append(VectorFormat.DEFAULT_SEPARATOR);
            }
            m mVar = list.get(i10);
            sb2.append(mVar.h());
            sb2.append('=');
            sb2.append(mVar.t());
        }
        return sb2.toString();
    }
}
