package com.android.tools.r8.dex;

import com.android.tools.r8.graph.A2;
import com.android.tools.r8.graph.AbstractC4497i0;
import com.android.tools.r8.graph.C4798y;
import com.android.tools.r8.graph.H2;
import com.android.tools.r8.graph.H5;
import com.android.tools.r8.graph.InterfaceC4443f3;
import com.android.tools.r8.graph.M2;
import com.android.tools.r8.internal.AbstractC8374m80;
import com.android.tools.r8.internal.AbstractC9148qo0;
import com.android.tools.r8.internal.C10257xS;
import com.android.tools.r8.internal.C6614bd0;
import com.android.tools.r8.internal.C7189f20;
import com.android.tools.r8.internal.C8040k80;
import com.android.tools.r8.internal.C9648to0;
import com.android.tools.r8.internal.C9982vo0;
import com.android.tools.r8.internal.InterfaceC6160Wr0;
import com.android.tools.r8.internal.InterfaceC7033e6;
import com.android.tools.r8.internal.RR;
import com.android.tools.r8.internal.TU;
import java.util.Collection;
import java.util.IdentityHashMap;
import java.util.LinkedHashSet;
import java.util.Map;
import java.util.function.BiConsumer;
import java.util.function.Consumer;

public final class h0 extends C4322w {

    public final AbstractC9148qo0 f35854e;

    public final LinkedHashSet f35855f;

    public final LinkedHashSet f35856g;

    public final LinkedHashSet f35857h;

    public final LinkedHashSet f35858i;

    public final LinkedHashSet f35859j;

    public final C10257xS f35860k;

    public final LinkedHashSet f35861l;

    public final LinkedHashSet f35862m;

    public final LinkedHashSet f35863n;

    public h0(C4798y c4798y, J j10, AbstractC9148qo0 abstractC9148qo0, t0 t0Var) {
        super(c4798y, j10);
        this.f35854e = abstractC9148qo0;
        this.f35855f = new LinkedHashSet(((C7189f20) j10.f35726e.o()).f47823b.f49465l);
        this.f35856g = new LinkedHashSet(((C7189f20) j10.f35729h.o()).f47823b.f49465l);
        this.f35857h = new LinkedHashSet(((C7189f20) j10.f35727f.o()).f47823b.f49465l);
        this.f35858i = new LinkedHashSet(((C7189f20) j10.f35728g.o()).f47823b.f49465l);
        this.f35859j = new LinkedHashSet(((C6614bd0) j10.f35730i.o()).f46807b.f48317l);
        int i10 = ((C6614bd0) j10.f35722a.o()).f46807b.f48317l;
        C8040k80 c8040k80 = AbstractC8374m80.f50207d;
        this.f35860k = new C10257xS(i10);
        this.f35861l = new LinkedHashSet(((C7189f20) j10.f35731j.o()).f47823b.f49465l);
        this.f35862m = new LinkedHashSet(((C6614bd0) j10.f35725d.o()).f46807b.f48317l);
        this.f35863n = new LinkedHashSet(((C7189f20) j10.f35724c.o()).f47823b.f49465l);
        a(t0Var);
    }

    public final void b(final g0 g0Var, Map map, C9648to0 c9648to0) {
        H2 h22 = (H2) map.get(c9648to0.f52698b);
        if (h22 != null) {
            g0Var.a(h22);
            h22.getType().a(this.f35974b, g0Var);
            h22.e(new Consumer() {
                @Override
                public final void accept(Object obj) {
                    com.android.tools.r8.dex.h0.this.a(g0Var, (M2) obj);
                }
            });
        }
    }

    @Override
    public final Collection c() {
        LinkedHashSet linkedHashSet = this.f35857h;
        linkedHashSet.addAll(this.f35975c.f35727f.o());
        return linkedHashSet;
    }

    @Override
    public final Collection d() {
        LinkedHashSet linkedHashSet = this.f35858i;
        linkedHashSet.addAll(this.f35975c.f35728g.o());
        return linkedHashSet;
    }

    @Override
    public final Collection e() {
        LinkedHashSet linkedHashSet = this.f35859j;
        linkedHashSet.addAll(this.f35975c.f35730i.o());
        return linkedHashSet;
    }

    @Override
    public final Collection f() {
        C10257xS c10257xS = this.f35860k;
        c10257xS.addAll(a(this.f35975c.f35730i.o()));
        return c10257xS;
    }

    @Override
    public final Collection g() {
        LinkedHashSet linkedHashSet = this.f35861l;
        linkedHashSet.addAll(this.f35975c.f35731j.o());
        return linkedHashSet;
    }

    @Override
    public final Collection h() {
        LinkedHashSet linkedHashSet = this.f35862m;
        linkedHashSet.addAll(this.f35975c.f35725d.o());
        return linkedHashSet;
    }

    @Override
    public final Collection i() {
        LinkedHashSet linkedHashSet = this.f35863n;
        linkedHashSet.addAll(this.f35975c.f35724c.o());
        return linkedHashSet;
    }

    @Override
    public final Collection b() {
        LinkedHashSet linkedHashSet = this.f35855f;
        linkedHashSet.addAll(this.f35975c.f35726e.o());
        return linkedHashSet;
    }

    public final void a(final t0 t0Var) {
        final IdentityHashMap a10 = TU.a(new InterfaceC7033e6() {
            @Override
            public final void forEach(BiConsumer biConsumer) {
                com.android.tools.r8.dex.h0.a(com.android.tools.r8.dex.t0.this, biConsumer);
            }
        }, t0Var.f35956b.f35937c.size());
        final RR rr = new RR(this.f35974b, 0);
        final g0 g0Var = new g0(this);
        this.f35854e.a(new InterfaceC6160Wr0() {
            @Override
            public final void accept(Object obj) {
                com.android.tools.r8.dex.h0.this.b(g0Var, a10, (C9648to0) obj);
            }
        }, new InterfaceC6160Wr0() {
            @Override
            public final void accept(Object obj) {
                com.android.tools.r8.dex.h0.this.a(g0Var, a10, rr, (C9982vo0) obj);
            }
        });
    }

    public final void a(g0 g0Var, M2 m22) {
        m22.a(this.f35974b, g0Var);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final void a(g0 g0Var, Map map, RR rr, C9982vo0 c9982vo0) {
        A2 c10 = c9982vo0.c();
        H2 h22 = (H2) map.get(c10.s0());
        H5 e10 = h22 != null ? h22.e(c10) : null;
        if (e10 != null) {
            C4798y c4798y = this.f35974b;
            if (c10.b(c4798y, g0Var)) {
                c10.c(c4798y, g0Var);
            }
            if (e10.d().b1()) {
                g0Var.f35849a.f35860k.add((C10257xS) e10);
                InterfaceC4443f3 m02 = e10.d().Q0().m0();
                C4798y c4798y2 = this.f35974b;
                ((AbstractC4497i0) m02).getClass();
                m02.a(this.f35974b, c4798y2.f38414g, g0Var, e10, rr);
            }
        }
    }

    @Override
    public final Collection a() {
        LinkedHashSet linkedHashSet = this.f35856g;
        linkedHashSet.addAll(this.f35975c.f35729h.o());
        return linkedHashSet;
    }

    public static void a(t0 t0Var, final BiConsumer biConsumer) {
        t0Var.f35956b.f35937c.forEach(new Consumer() {
            @Override
            public final void accept(Object obj) {
                BiConsumer.this.accept(r2.getType(), (H2) obj);
            }
        });
    }
}
