package Om;

import Nm.c;
import Um.v;
import Zm.e;
import Zm.h;
import ga.m;
import java.util.Collections;
import java.util.Map;
import java.util.Set;

public class b extends c {

    public final h f20553a;

    public final e f20554b;

    public static class a {

        public static final int[] f20555a;

        static {
            int[] iArr = new int[c.a.values().length];
            f20555a = iArr;
            try {
                iArr[c.a.LEFT.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f20555a[c.a.CENTER.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f20555a[c.a.RIGHT.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    public b(e eVar) {
        this.f20553a = eVar.b();
        this.f20554b = eVar;
    }

    public static String g(c.a aVar) {
        int i10 = a.f20555a[aVar.ordinal()];
        if (i10 == 1) {
            return m.f88234c;
        }
        if (i10 == 2) {
            return "center";
        }
        if (i10 == 3) {
            return "right";
        }
        throw new IllegalStateException("Unknown alignment: " + ((Object) aVar));
    }

    @Override
    public Set E() {
        return super.E();
    }

    @Override
    public void a(v vVar) {
        super.a(vVar);
    }

    @Override
    public void b(Nm.a aVar) {
        this.f20553a.b();
        this.f20553a.e("table", h(aVar, "table"));
        j(aVar);
        this.f20553a.d("/table");
        this.f20553a.b();
    }

    @Override
    public void c(Nm.b bVar) {
        this.f20553a.b();
        this.f20553a.e("tbody", h(bVar, "tbody"));
        j(bVar);
        this.f20553a.d("/tbody");
        this.f20553a.b();
    }

    @Override
    public void d(Nm.c cVar) {
        String str = cVar.q() ? "th" : "td";
        this.f20553a.b();
        this.f20553a.e(str, i(cVar, str));
        j(cVar);
        this.f20553a.d("/" + str);
        this.f20553a.b();
    }

    @Override
    public void e(Nm.d dVar) {
        this.f20553a.b();
        this.f20553a.e("thead", h(dVar, "thead"));
        j(dVar);
        this.f20553a.d("/thead");
        this.f20553a.b();
    }

    @Override
    public void f(Nm.e eVar) {
        this.f20553a.b();
        this.f20553a.e("tr", h(eVar, "tr"));
        j(eVar);
        this.f20553a.d("/tr");
        this.f20553a.b();
    }

    public final Map<String, String> h(v vVar, String str) {
        return this.f20554b.f(vVar, str, Collections.emptyMap());
    }

    public final Map<String, String> i(Nm.c cVar, String str) {
        return cVar.p() != null ? this.f20554b.f(cVar, str, Collections.singletonMap("align", g(cVar.p()))) : this.f20554b.f(cVar, str, Collections.emptyMap());
    }

    public final void j(v vVar) {
        v e10 = vVar.e();
        while (e10 != null) {
            v g10 = e10.g();
            this.f20554b.a(e10);
            e10 = g10;
        }
    }
}
