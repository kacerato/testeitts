package Zm;

import Um.A;
import Um.AbstractC3152a;
import Um.AbstractC3153b;
import Um.B;
import Um.C3154c;
import Um.i;
import Um.j;
import Um.k;
import Um.l;
import Um.m;
import Um.n;
import Um.o;
import Um.p;
import Um.q;
import Um.r;
import Um.t;
import Um.u;
import Um.v;
import Um.w;
import Um.x;
import Um.y;
import Um.z;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashSet;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.Set;

public class d extends AbstractC3152a implements Ym.a {

    public final e f31516a;

    public final h f31517b;

    public static class b extends AbstractC3152a {

        public final StringBuilder f31518a;

        public b() {
            this.f31518a = new StringBuilder();
        }

        @Override
        public void I(l lVar) {
            this.f31518a.append('\n');
        }

        public String N() {
            return this.f31518a.toString();
        }

        @Override
        public void g(y yVar) {
            this.f31518a.append('\n');
        }

        @Override
        public void v(A a10) {
            this.f31518a.append(a10.p());
        }
    }

    public d(e eVar) {
        this.f31516a = eVar;
        this.f31517b = eVar.b();
    }

    @Override
    public void A(o oVar) {
        if (this.f31516a.e()) {
            this.f31517b.g(oVar.p());
        } else {
            this.f31517b.c(oVar.p());
        }
    }

    @Override
    public void B(z zVar) {
        this.f31517b.e("strong", N(zVar, "strong"));
        i(zVar);
        this.f31517b.d("/strong");
    }

    @Override
    public void D(m mVar) {
        String str = "h" + mVar.q();
        this.f31517b.b();
        this.f31517b.e(str, N(mVar, str));
        i(mVar);
        this.f31517b.d('/' + str);
        this.f31517b.b();
    }

    @Override
    public Set<Class<? extends v>> E() {
        return new HashSet(Arrays.asList(i.class, m.class, x.class, C3154c.class, Um.d.class, k.class, n.class, B.class, q.class, r.class, u.class, w.class, p.class, j.class, z.class, A.class, Um.e.class, o.class, y.class, l.class));
    }

    @Override
    public void H(n nVar) {
        this.f31517b.b();
        if (this.f31516a.e()) {
            this.f31517b.e(com.itsmagic.engine.Engines.Engine.Animation.a.f72594b, N(nVar, com.itsmagic.engine.Engines.Engine.Animation.a.f72594b));
            this.f31517b.g(nVar.q());
            this.f31517b.d("/p");
        } else {
            this.f31517b.c(nVar.q());
        }
        this.f31517b.b();
    }

    @Override
    public void I(l lVar) {
        this.f31517b.f("br", N(lVar, "br"), true);
        this.f31517b.b();
    }

    @Override
    public void K(Um.d dVar) {
        R(dVar, "ul", N(dVar, "ul"));
    }

    @Override
    public void L(q qVar) {
        Q(qVar.q(), qVar, Collections.emptyMap());
    }

    @Override
    public void M(B b10) {
        this.f31517b.b();
        this.f31517b.f("hr", N(b10, "hr"), true);
        this.f31517b.b();
    }

    public final Map<String, String> N(v vVar, String str) {
        return O(vVar, str, Collections.emptyMap());
    }

    public final Map<String, String> O(v vVar, String str, Map<String, String> map) {
        return this.f31516a.f(vVar, str, map);
    }

    public final boolean P(x xVar) {
        v h10;
        AbstractC3153b h11 = xVar.h();
        if (h11 == null || (h10 = h11.h()) == null || !(h10 instanceof t)) {
            return false;
        }
        return ((t) h10).q();
    }

    public final void Q(String str, v vVar, Map<String, String> map) {
        this.f31517b.b();
        this.f31517b.e("pre", N(vVar, "pre"));
        this.f31517b.e("code", O(vVar, "code", map));
        this.f31517b.g(str);
        this.f31517b.d("/code");
        this.f31517b.d("/pre");
        this.f31517b.b();
    }

    public final void R(t tVar, String str, Map<String, String> map) {
        this.f31517b.b();
        this.f31517b.e(str, map);
        this.f31517b.b();
        i(tVar);
        this.f31517b.b();
        this.f31517b.d('/' + str);
        this.f31517b.b();
    }

    @Override
    public void a(v vVar) {
        vVar.c(this);
    }

    @Override
    public void c(k kVar) {
        String u10 = kVar.u();
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        String t10 = kVar.t();
        if (t10 != null && !t10.isEmpty()) {
            int indexOf = t10.indexOf(" ");
            if (indexOf != -1) {
                t10 = t10.substring(0, indexOf);
            }
            linkedHashMap.put("class", "language-" + t10);
        }
        Q(u10, kVar, linkedHashMap);
    }

    @Override
    public void e(Um.e eVar) {
        this.f31517b.e("code", N(eVar, "code"));
        this.f31517b.g(eVar.p());
        this.f31517b.d("/code");
    }

    @Override
    public void f(p pVar) {
        String d10 = this.f31516a.d(pVar.p());
        b bVar = new b();
        pVar.c(bVar);
        String N10 = bVar.N();
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        linkedHashMap.put("src", d10);
        linkedHashMap.put("alt", N10);
        if (pVar.q() != null) {
            linkedHashMap.put("title", pVar.q());
        }
        this.f31517b.f("img", O(pVar, "img", linkedHashMap), true);
    }

    @Override
    public void g(y yVar) {
        this.f31517b.c(this.f31516a.c());
    }

    @Override
    public void i(v vVar) {
        v e10 = vVar.e();
        while (e10 != null) {
            v g10 = e10.g();
            this.f31516a.a(e10);
            e10 = g10;
        }
    }

    @Override
    public void j(u uVar) {
        this.f31517b.e("li", N(uVar, "li"));
        i(uVar);
        this.f31517b.d("/li");
        this.f31517b.b();
    }

    @Override
    public void k(i iVar) {
        i(iVar);
    }

    @Override
    public void r(x xVar) {
        boolean P10 = P(xVar);
        if (!P10) {
            this.f31517b.b();
            this.f31517b.e(com.itsmagic.engine.Engines.Engine.Animation.a.f72594b, N(xVar, com.itsmagic.engine.Engines.Engine.Animation.a.f72594b));
        }
        i(xVar);
        if (P10) {
            return;
        }
        this.f31517b.d("/p");
        this.f31517b.b();
    }

    @Override
    public void s(C3154c c3154c) {
        this.f31517b.b();
        this.f31517b.e("blockquote", N(c3154c, "blockquote"));
        this.f31517b.b();
        i(c3154c);
        this.f31517b.b();
        this.f31517b.d("/blockquote");
        this.f31517b.b();
    }

    @Override
    public void t(j jVar) {
        this.f31517b.e(ve.j.f121590b, N(jVar, ve.j.f121590b));
        i(jVar);
        this.f31517b.d("/em");
    }

    @Override
    public void u(w wVar) {
        int t10 = wVar.t();
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        if (t10 != 1) {
            linkedHashMap.put("start", String.valueOf(t10));
        }
        R(wVar, "ol", O(wVar, "ol", linkedHashMap));
    }

    @Override
    public void v(A a10) {
        this.f31517b.g(a10.p());
    }

    @Override
    public void y(r rVar) {
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        linkedHashMap.put("href", this.f31516a.d(rVar.p()));
        if (rVar.q() != null) {
            linkedHashMap.put("title", rVar.q());
        }
        this.f31517b.e("a", O(rVar, "a", linkedHashMap));
        i(rVar);
        this.f31517b.d("/a");
    }
}
