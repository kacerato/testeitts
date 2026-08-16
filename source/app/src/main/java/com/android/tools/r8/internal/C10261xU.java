package com.android.tools.r8.internal;

import com.android.tools.r8.graph.AbstractC4780x0;
import com.android.tools.r8.graph.C4551kh;
import com.android.tools.r8.graph.C4724u1;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.function.BiConsumer;
import java.util.stream.Collectors;

public class C10261xU implements InterfaceC9975vm {

    public final boolean f53764a;

    public final EU f53765b;

    public final CU f53766c;

    public int f53767d = -1;

    public C10261xU(boolean z10, EU eu, CU cu) {
        this.f53764a = z10;
        this.f53765b = eu;
        this.f53766c = cu;
    }

    public static C10261xU a(Map<com.android.tools.r8.graph.M2, com.android.tools.r8.graph.M2> map) {
        boolean z10 = CU.f39231s;
        final BU bu = new BU();
        map.forEach(new BiConsumer() {
            @Override
            public final void accept(Object obj, Object obj2) {
                BU.this.b((com.android.tools.r8.graph.M2) obj, (com.android.tools.r8.graph.M2) obj2);
            }
        });
        C2 c22 = C2.B;
        int i10 = AbstractC7552hC.f48487c;
        return new C10261xU(true, new EU(c22, "unused", null, null, false, C6190Xe0.f45779e), bu.a());
    }

    @Override
    public final boolean b() {
        return this.f53764a;
    }

    @Override
    public final Set c() {
        return (Set) this.f53766c.k().stream().map(new C4551kh()).collect(Collectors.toSet());
    }

    @Override
    public final C2 d() {
        return this.f53765b.d();
    }

    @Override
    public final List e() {
        return this.f53765b.a();
    }

    @Override
    public final String f() {
        return this.f53765b.e();
    }

    public Map<com.android.tools.r8.graph.A2, com.android.tools.r8.graph.A2[]> g() {
        return this.f53766c.c();
    }

    public Map<com.android.tools.r8.graph.M2, C9796ui> h() {
        return this.f53766c.e();
    }

    public Set<com.android.tools.r8.graph.M2> i() {
        return this.f53766c.k();
    }

    /* JADX WARN: Type inference failed for: r1v0, types: [java.util.Map, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r1v4, types: [java.util.Map, java.lang.Object] */
    @Override
    public final boolean isEmpty() {
        CU cu = this.f53766c;
        return cu.f39232a.isEmpty() && cu.f39233b.isEmpty() && cu.f39234c.isEmpty() && !cu.r() && cu.f39242k.isEmpty() && cu.f39244m.isEmpty();
    }

    public Map<com.android.tools.r8.graph.M2, com.android.tools.r8.graph.M2> j() {
        return this.f53766c.n();
    }

    public CU k() {
        return this.f53766c;
    }

    public EU l() {
        return this.f53765b;
    }

    public Map<com.android.tools.r8.graph.M2, C6510ay0> m() {
        return this.f53766c.q();
    }

    public boolean b(com.android.tools.r8.graph.J2 j22) {
        if (a(j22)) {
            return true;
        }
        if (!j22.r0()) {
            return false;
        }
        com.android.tools.r8.graph.A2 n02 = j22.n0();
        if (this.f53766c.p().containsKey(n02) || this.f53766c.l().containsKey(n02) || this.f53766c.h().containsKey(n02)) {
            return true;
        }
        Iterator<C7163eu> it = this.f53766c.g().values().iterator();
        while (it.hasNext()) {
            if (it.next().f47805b.containsKey(n02)) {
                return true;
            }
        }
        return false;
    }

    @Override
    public final String a() {
        return this.f53765b.f39884d;
    }

    public final C6830cu a(com.android.tools.r8.graph.A2 a22) {
        CU cu = this.f53766c;
        if (cu.f39242k.containsKey(a22.s0())) {
            return (C6830cu) ((C7163eu) cu.f39242k.get(a22.s0())).f47805b.get(a22);
        }
        return null;
    }

    public final boolean a(com.android.tools.r8.graph.J2 j22) {
        return j().containsKey(j22.S()) || i().contains(j22.S());
    }

    @Override
    public final C10261xU a(AbstractC4780x0 abstractC4780x0, C8659ns0 c8659ns0) {
        AbstractC7087eS.a(abstractC4780x0, this.f53764a, this.f53765b.d());
        return this;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r11v0, types: [java.util.Map, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r9v0, types: [java.util.Map, java.lang.Object] */
    public final C10261xU a(String str, C4724u1 c4724u1) {
        String e10 = this.f53765b.e();
        String str2 = e10 + C4932Bl.n(str);
        boolean z10 = this.f53764a;
        EU a10 = this.f53765b.a(str);
        CU cu = this.f53766c;
        return new C10261xU(z10, a10, new CU(cu.a((Map) cu.f39232a, c4724u1, e10, str2), cu.f39233b, cu.a((Map) cu.f39234c, c4724u1, e10, str2), cu.f39235d, cu.f39236e, cu.f39237f, cu.f39238g, cu.f39239h, cu.f39240i, cu.f39241j, cu.b(e10, c4724u1, str2), cu.f39243l, cu.f39244m, cu.f39245n, cu.a(e10, c4724u1, str2), cu.f39247p, cu.f39248q, cu.f39249r));
    }
}
