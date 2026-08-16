package n3;

import T2.C3049g;
import T2.InterfaceC3050h;
import T2.k;
import T2.v;
import java.util.Iterator;
import java.util.Set;
import w2.C15883c;

public class c implements i {

    public final String f97718a;

    public final d f97719b;

    public c(Set<f> set, d dVar) {
        this.f97718a = e(set);
        this.f97719b = dVar;
    }

    public static C3049g<i> c() {
        return C3049g.h(i.class).b(v.q(f.class)).f(new k() {
            @Override
            public final Object a(InterfaceC3050h interfaceC3050h) {
                i d10;
                d10 = c.d(interfaceC3050h);
                return d10;
            }
        }).d();
    }

    public static i d(InterfaceC3050h interfaceC3050h) {
        return new c(interfaceC3050h.d(f.class), d.a());
    }

    public static String e(Set<f> set) {
        StringBuilder sb2 = new StringBuilder();
        Iterator<f> it = set.iterator();
        while (it.hasNext()) {
            f next = it.next();
            sb2.append(next.b());
            sb2.append('/');
            sb2.append(next.c());
            if (it.hasNext()) {
                sb2.append(C15883c.f126249O);
            }
        }
        return sb2.toString();
    }

    @Override
    public String a() {
        if (this.f97719b.b().isEmpty()) {
            return this.f97718a;
        }
        return this.f97718a + C15883c.f126249O + e(this.f97719b.b());
    }
}
