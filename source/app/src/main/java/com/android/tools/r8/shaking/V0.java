package com.android.tools.r8.shaking;

import com.android.tools.r8.graph.C4460g1;
import com.android.tools.r8.graph.C4514j;
import com.android.tools.r8.graph.C4516j1;
import com.android.tools.r8.graph.C4798y;
import com.android.tools.r8.internal.AZ;
import com.android.tools.r8.internal.AbstractC5513Ll0;
import com.android.tools.r8.internal.AbstractC6114Vx;
import com.android.tools.r8.internal.BZ;
import com.android.tools.r8.internal.C10325xr0;
import com.android.tools.r8.internal.C7333fv;
import com.android.tools.r8.internal.C7905jK0;
import com.android.tools.r8.internal.C8066kH0;
import com.android.tools.r8.internal.C8659ns0;
import com.android.tools.r8.internal.CT;
import com.android.tools.r8.internal.EZ;
import com.android.tools.r8.internal.EnumC6871d70;
import com.android.tools.r8.internal.FZ;
import com.android.tools.r8.internal.InterfaceC10438yZ;
import com.android.tools.r8.internal.InterfaceC7158es0;
import com.android.tools.r8.internal.InterfaceC8005jx;
import com.android.tools.r8.internal.TU;
import java.util.Collection;
import java.util.Collections;
import java.util.HashMap;
import java.util.IdentityHashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Objects;
import java.util.Set;
import java.util.concurrent.ExecutorService;
import java.util.function.Consumer;
import java.util.function.Function;
import java.util.function.Predicate;

public final class V0 implements InterfaceC10438yZ, AZ, BZ, EZ, FZ, InterfaceC8005jx {

    public static final boolean f57047i = true;

    public final C4798y f57048a;

    public final HashMap f57049b;

    public final HashMap f57050c;

    public final Set f57051d;

    public final Set f57052e = AbstractC5513Ll0.c();

    public final Set f57053f = AbstractC5513Ll0.c();

    public boolean f57054g;

    public final C10325xr0 f57055h;

    public V0(C4798y c4798y, N n10, ExecutorService executorService) {
        Set c10;
        this.f57048a = c4798y;
        this.f57049b = a(c4798y.G().f56402l, true);
        this.f57050c = a(c4798y.G().f56402l, false);
        if (n10.f56786b.b()) {
            c10 = Collections.EMPTY_SET;
        } else {
            c10 = AbstractC5513Ll0.c();
            for (com.android.tools.r8.graph.H2 h22 : ((C4514j) c4798y.f()).d()) {
                Iterator<C4460g1> it = h22.I0().iterator();
                while (true) {
                    if (it.hasNext()) {
                        if (it.next().f37207l.j()) {
                            break;
                        }
                    } else {
                        for (C4516j1 c4516j1 : h22.z1()) {
                            c4516j1.L0();
                            if (c4516j1.f37320m.E()) {
                            }
                        }
                    }
                }
                c10.add(h22);
            }
        }
        this.f57051d = c10;
        this.f57055h = new C10325xr0(c4798y.E().G(), executorService, -1);
    }

    public static HashMap a(Set set, boolean z10) {
        HashMap hashMap = new HashMap(set.size());
        T0 t02 = new T0();
        Iterator it = set.iterator();
        while (it.hasNext()) {
            G3 g32 = (G3) it.next();
            if ((!g32.g().isEmpty()) == z10) {
                ((Set) hashMap.computeIfAbsent(new C7333fv(t02, g32), TU.a(new C7905jK0()))).add(g32);
            }
        }
        return hashMap;
    }

    public final void a(A4 a42, N n10, Collection collection, com.android.tools.r8.graph.V v10, C8659ns0 c8659ns0) {
        U0 u02 = new U0(this.f57048a, n10, a42, this.f57055h);
        u02.a(this.f57049b, v10, collection, EnumC6871d70.f47286b);
        HashMap hashMap = this.f57050c;
        C8066kH0 c8066kH0 = new C8066kH0();
        Function identity = Function.identity();
        IdentityHashMap identityHashMap = new IdentityHashMap(collection.size());
        for (Object obj : collection) {
            Object put = identityHashMap.put(c8066kH0.apply(obj), identity.apply(obj));
            if (!TU.f44487a && put != null) {
                throw new AssertionError();
            }
        }
        u02.a(hashMap, identityHashMap, c8659ns0);
    }

    public final C11535z4 a(N n10, boolean z10, C8659ns0 c8659ns0) {
        boolean z11;
        A4 a42 = new A4(this.f57048a, n10, n10.f56800i);
        U0 u02 = new U0(this.f57048a, n10, a42, this.f57055h);
        c8659ns0.b("If rules with members");
        boolean z12 = false;
        if (this.f57049b.isEmpty()) {
            z11 = false;
        } else {
            z11 = (!z10 || this.f57051d.isEmpty()) ? !this.f57053f.isEmpty() : true;
        }
        if (z11) {
            a(u02, z10);
        }
        c8659ns0.d();
        c8659ns0.b("If rules without members");
        if (!this.f57050c.isEmpty()) {
            z12 = (!z10 || this.f57051d.isEmpty()) ? !this.f57052e.isEmpty() : true;
        }
        if (z12) {
            a(u02, z10, c8659ns0);
        }
        c8659ns0.d();
        return new C11535z4(a42.f56599g, a42.f56605m, CT.a(a42.f56609q), a42.f56618z);
    }

    public final void a(U0 u02, boolean z10) {
        if (z10 && !this.f57051d.isEmpty()) {
            u02.a(this.f57049b, com.android.tools.r8.graph.V.f36877c, AbstractC6114Vx.b(this.f57051d, this.f57053f), new Predicate() {
                @Override
                public final boolean test(Object obj) {
                    return V0.this.a((com.android.tools.r8.graph.H2) obj);
                }
            });
        } else {
            HashMap hashMap = this.f57049b;
            com.android.tools.r8.graph.V v10 = com.android.tools.r8.graph.V.f36877c;
            final Set set = this.f57053f;
            Objects.requireNonNull(set);
            u02.a(hashMap, v10, set, new Predicate() {
                @Override
                public final boolean test(Object obj) {
                    return Set.this.contains((com.android.tools.r8.graph.H2) obj);
                }
            });
        }
        this.f57053f.clear();
    }

    public final boolean a(com.android.tools.r8.graph.H2 h22) {
        return this.f57051d.contains(h22) || this.f57053f.contains(h22);
    }

    public final void a(U0 u02, boolean z10, C8659ns0 c8659ns0) {
        if (z10 && !this.f57051d.isEmpty()) {
            final IdentityHashMap identityHashMap = new IdentityHashMap(this.f57052e.size() + this.f57051d.size());
            this.f57051d.forEach(new Consumer() {
                @Override
                public final void accept(Object obj) {
                    Map.this.put(r2.getType(), (com.android.tools.r8.graph.H2) obj);
                }
            });
            this.f57052e.forEach(new Consumer() {
                @Override
                public final void accept(Object obj) {
                    Map.this.put(r2.getType(), (com.android.tools.r8.graph.H2) obj);
                }
            });
            u02.a(this.f57050c, identityHashMap, c8659ns0);
        } else {
            final IdentityHashMap identityHashMap2 = new IdentityHashMap(this.f57052e.size());
            this.f57052e.forEach(new Consumer() {
                @Override
                public final void accept(Object obj) {
                    Map.this.put(r2.getType(), (com.android.tools.r8.graph.H2) obj);
                }
            });
            u02.a(this.f57050c, identityHashMap2, c8659ns0);
        }
        this.f57052e.clear();
    }

    @Override
    public final void a(final N n10, L0 l02, ExecutorService executorService, final C8659ns0 c8659ns0) {
        final boolean z10;
        boolean z11;
        boolean z12 = false;
        if (this.f57054g) {
            z10 = false;
        } else {
            this.f57054g = true;
            z10 = true;
        }
        if (z10) {
            A4 a42 = new A4(this.f57048a, n10, n10.f56800i);
            C8659ns0 b10 = c8659ns0.b("Apply if rules to classpath classes");
            try {
                a(a42, n10, this.f57048a.e().a().f37230l, com.android.tools.r8.graph.V.f36878d, c8659ns0);
                b10.d();
                if (this.f57048a.H().f50846U) {
                    b10 = c8659ns0.b("Apply if rules to library classes");
                    try {
                        a(a42, n10, this.f57048a.e().a().k(), com.android.tools.r8.graph.V.f36879e, c8659ns0);
                        b10.d();
                    } finally {
                    }
                }
                n10.a(new C11535z4(a42.f56599g, a42.f56605m, CT.a(a42.f56609q), a42.f56618z));
            } finally {
            }
        }
        if (this.f57049b.isEmpty()) {
            z11 = false;
        } else {
            z11 = (!z10 || this.f57051d.isEmpty()) ? !this.f57053f.isEmpty() : true;
        }
        if (!z11) {
            if (!this.f57050c.isEmpty()) {
                z12 = (!z10 || this.f57051d.isEmpty()) ? !this.f57052e.isEmpty() : true;
            }
            if (!z12) {
                return;
            }
        }
        long e10 = n10.e();
        n10.a((C11535z4) c8659ns0.a("Find consequent items for -if rules...", new InterfaceC7158es0() {
            @Override
            public final Object get() {
                return V0.this.a(n10, z10, c8659ns0);
            }
        }));
        if (!f57047i && n10.e() != e10) {
            throw new AssertionError();
        }
    }

    @Override
    public final void a(com.android.tools.r8.graph.H2 h22, L0 l02) {
        if (this.f57051d.contains(h22)) {
            return;
        }
        this.f57052e.add(h22);
    }

    @Override
    public final void a(com.android.tools.r8.graph.F5 f52, com.android.tools.r8.graph.D5 d52) {
        com.android.tools.r8.graph.H2 holder = f52.getHolder();
        if (this.f57054g || !this.f57051d.contains(holder)) {
            this.f57053f.add(holder);
        }
    }

    @Override
    public final void a(com.android.tools.r8.graph.H5 h52, com.android.tools.r8.graph.D5 d52, N n10) {
        com.android.tools.r8.graph.H2 holder = h52.getHolder();
        if (this.f57054g || !this.f57051d.contains(holder)) {
            this.f57053f.add(holder);
        }
    }

    @Override
    public final void a(com.android.tools.r8.graph.H5 h52) {
        com.android.tools.r8.graph.H2 holder = h52.getHolder();
        if (this.f57054g || !this.f57051d.contains(holder)) {
            this.f57053f.add(holder);
        }
    }
}
