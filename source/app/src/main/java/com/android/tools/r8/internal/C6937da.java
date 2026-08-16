package com.android.tools.r8.internal;

import com.android.tools.r8.graph.C4798y;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.IdentityHashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.function.BiConsumer;
import java.util.function.Consumer;
import java.util.function.Function;

public final class C6937da extends AbstractC7103ea {

    public static final boolean f47417m = true;

    public final C4798y f47418c;

    public final BiConsumer f47419d;

    public final BiConsumer f47420e;

    public final Function f47421f;

    public final BiConsumer f47422g;

    public final com.android.tools.r8.shaking.Q f47423h;

    public final IdentityHashMap f47424i = new IdentityHashMap();

    public final ArrayList f47425j = new ArrayList();

    public final ArrayList f47426k = new ArrayList();

    public final BiConsumer f47427l;

    public C6937da(C4798y c4798y, BiConsumer biConsumer, BiConsumer biConsumer2, Function function, BiConsumer biConsumer3, com.android.tools.r8.shaking.Q q10, BiConsumer biConsumer4) {
        this.f47418c = c4798y;
        this.f47419d = biConsumer;
        this.f47420e = biConsumer2;
        this.f47421f = function;
        this.f47422g = biConsumer3;
        this.f47423h = q10;
        this.f47427l = biConsumer4;
    }

    @Override
    public final void a(com.android.tools.r8.graph.D5 d52, com.android.tools.r8.graph.H5 h52) {
    }

    @Override
    public final void b(com.android.tools.r8.graph.F5 f52, com.android.tools.r8.graph.H5 h52, com.android.tools.r8.graph.H0 h02) {
    }

    @Override
    public final void c(com.android.tools.r8.graph.H2 h22) {
    }

    @Override
    public final void d(com.android.tools.r8.graph.I0 i02) {
        this.f47423h.a(i02);
    }

    @Override
    public final void e(com.android.tools.r8.graph.I0 i02) {
        this.f47423h.a(i02);
    }

    @Override
    public final void f(com.android.tools.r8.graph.H5 h52, com.android.tools.r8.graph.H5 h53) {
    }

    @Override
    public final void g(com.android.tools.r8.graph.H5 h52, com.android.tools.r8.graph.H5 h53) {
        this.f47423h.a(new AW0(), h52);
    }

    @Override
    public final void h(com.android.tools.r8.graph.H5 h52, com.android.tools.r8.graph.H5 h53) {
    }

    @Override
    public final void i(com.android.tools.r8.graph.H5 h52, com.android.tools.r8.graph.H5 h53) {
        this.f47427l.accept(h52, h53);
    }

    @Override
    public final void j(com.android.tools.r8.graph.H5 h52, com.android.tools.r8.graph.H5 h53) {
    }

    @Override
    public final void k(com.android.tools.r8.graph.H5 h52, com.android.tools.r8.graph.H5 h53) {
    }

    @Override
    public final void l(com.android.tools.r8.graph.H5 h52, com.android.tools.r8.graph.H5 h53) {
    }

    @Override
    public final void m(com.android.tools.r8.graph.H5 h52, com.android.tools.r8.graph.H5 h53) {
    }

    @Override
    public final void n(com.android.tools.r8.graph.H5 h52, com.android.tools.r8.graph.H5 h53) {
    }

    @Override
    public final void o(com.android.tools.r8.graph.H5 h52, com.android.tools.r8.graph.H5 h53) {
    }

    @Override
    public final void p(com.android.tools.r8.graph.H5 h52, com.android.tools.r8.graph.H5 h53) {
    }

    @Override
    public final void q(com.android.tools.r8.graph.H5 h52, com.android.tools.r8.graph.H5 h53) {
        this.f47427l.accept(h52, h53);
    }

    @Override
    public final void r(com.android.tools.r8.graph.H5 h52, com.android.tools.r8.graph.H5 h53) {
    }

    @Override
    public final void s(com.android.tools.r8.graph.H5 h52, com.android.tools.r8.graph.H5 h53) {
    }

    @Override
    public final void t(com.android.tools.r8.graph.H5 h52, com.android.tools.r8.graph.H5 h53) {
        this.f47427l.accept(h52, h53);
    }

    @Override
    public final void u(com.android.tools.r8.graph.H5 h52, com.android.tools.r8.graph.H5 h53) {
    }

    @Override
    public final void v(com.android.tools.r8.graph.H5 h52, com.android.tools.r8.graph.H5 h53) {
    }

    @Override
    public final void w(com.android.tools.r8.graph.H5 h52, com.android.tools.r8.graph.H5 h53) {
    }

    @Override
    public final void x(com.android.tools.r8.graph.H5 h52, com.android.tools.r8.graph.H5 h53) {
    }

    @Override
    public final void y(com.android.tools.r8.graph.H5 h52, com.android.tools.r8.graph.H5 h53) {
    }

    @Override
    public final void z(com.android.tools.r8.graph.H5 h52, com.android.tools.r8.graph.H5 h53) {
    }

    @Override
    public final void a(com.android.tools.r8.graph.F5 f52, com.android.tools.r8.graph.H5 h52, com.android.tools.r8.graph.H0 h02) {
    }

    @Override
    public final void b(com.android.tools.r8.graph.H2 h22, com.android.tools.r8.graph.H5 h52) {
    }

    @Override
    public final void c(com.android.tools.r8.graph.H2 h22, com.android.tools.r8.graph.H5 h52) {
    }

    @Override
    public final void d(com.android.tools.r8.graph.H5 h52, com.android.tools.r8.graph.H5 h53) {
        this.f47423h.a(new AW0(), h52);
    }

    @Override
    public final void e(com.android.tools.r8.graph.H5 h52, com.android.tools.r8.graph.H5 h53) {
        this.f47422g.accept(h52, h53);
    }

    @Override
    public final void a(com.android.tools.r8.graph.H2 h22) {
    }

    @Override
    public final void b(com.android.tools.r8.graph.H5 h52, com.android.tools.r8.graph.H5 h53) {
    }

    @Override
    public final void c(com.android.tools.r8.graph.H5 h52, com.android.tools.r8.graph.H5 h53) {
    }

    public final void d() {
        ArrayList arrayList = new ArrayList(this.f47424i.entrySet());
        arrayList.sort(Comparator.comparing(new Function() {
            @Override
            public final Object apply(Object obj) {
                return C6937da.a((Map.Entry) obj);
            }
        }));
        final Set c10 = AbstractC5513Ll0.c();
        arrayList.forEach(new Consumer() {
            @Override
            public final void accept(Object obj) {
                C6937da.this.a(c10, (Map.Entry) obj);
            }
        });
        if (!f47417m && !this.f47418c.E().P() && !c10.isEmpty()) {
            throw new AssertionError();
        }
        AbstractC8252lR.a(this.f47418c, c10);
    }

    @Override
    public final void a(com.android.tools.r8.graph.H2 h22, com.android.tools.r8.graph.D5 d52) {
    }

    public final void b(C6572bK c6572bK) {
        c6572bK.f46747c.a(c6572bK.f46748d, this.f47418c);
    }

    @Override
    public final void c(com.android.tools.r8.graph.I0 i02) {
        this.f47423h.a(i02);
    }

    @Override
    public final void a(com.android.tools.r8.graph.H2 h22, com.android.tools.r8.graph.H5 h52) {
    }

    public final void c() {
        Collections.sort(this.f47425j);
        this.f47425j.forEach(new Consumer() {
            @Override
            public final void accept(Object obj) {
                C6937da.this.b((C6572bK) obj);
            }
        });
    }

    @Override
    public final void a(com.android.tools.r8.graph.H5 h52, com.android.tools.r8.graph.A2 a22) {
    }

    @Override
    public final void a(com.android.tools.r8.graph.H5 h52, com.android.tools.r8.graph.H5 h53, com.android.tools.r8.graph.E0 e02, com.android.tools.r8.graph.H0 h02) {
    }

    @Override
    public final void b(com.android.tools.r8.graph.I0 i02) {
        this.f47423h.a(i02);
    }

    @Override
    public final void a(com.android.tools.r8.graph.H5 h52, com.android.tools.r8.graph.H5 h53, com.android.tools.r8.graph.H0 h02) {
    }

    @Override
    public final void b() {
        if (!f47417m) {
            throw new AssertionError();
        }
    }

    @Override
    public final void a(com.android.tools.r8.graph.I0 i02) {
        this.f47423h.a(i02);
    }

    @Override
    public final void a(C6572bK c6572bK) {
        synchronized (this.f47425j) {
            this.f47425j.add(c6572bK);
        }
    }

    @Override
    public final void a(C7753iR c7753iR, com.android.tools.r8.graph.H5 h52) {
        synchronized (this.f47424i) {
            this.f47424i.put(c7753iR, h52);
        }
        this.f47419d.accept(c7753iR, h52);
    }

    @Override
    public final void a(C10294xh c10294xh, com.android.tools.r8.graph.H5 h52) {
        synchronized (this.f47426k) {
            this.f47426k.add(c10294xh);
        }
        this.f47420e.accept(c10294xh, h52);
    }

    @Override
    public final List a() {
        c();
        d();
        return Collections.EMPTY_LIST;
    }

    public static com.android.tools.r8.graph.M2 a(Map.Entry entry) {
        return ((C7753iR) entry.getKey()).f48942c;
    }

    public final void a(Set set, Map.Entry entry) {
        C7753iR c7753iR = (C7753iR) entry.getKey();
        com.android.tools.r8.graph.H5 h52 = (com.android.tools.r8.graph.H5) entry.getValue();
        AbstractC7586hR abstractC7586hR = c7753iR.f48946g;
        InterfaceC6342Zx a10 = InterfaceC6342Zx.a();
        InterfaceC9323rr0 interfaceC9323rr0 = (InterfaceC9323rr0) this.f47421f.apply(c7753iR);
        Consumer b10 = C6628bi.b();
        if (!abstractC7586hR.f48557d) {
            abstractC7586hR.a(a10, interfaceC9323rr0, b10);
            abstractC7586hR.f48557d = true;
        }
        if (c7753iR.f48943d.f49629e.contains(this.f47418c.b().f38032d6)) {
            set.add(h52.getHolder());
        }
    }
}
