package com.android.tools.r8.graph;

import com.android.tools.r8.internal.AbstractC5308Hz;
import com.android.tools.r8.internal.AbstractC5513Ll0;
import com.android.tools.r8.internal.C8085kR;
import com.android.tools.r8.internal.RR;
import com.android.tools.r8.internal.TU;
import com.android.tools.r8.shaking.C11245i;
import java.util.ArrayList;
import java.util.IdentityHashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import java.util.function.BiConsumer;
import java.util.function.Consumer;
import java.util.function.Function;

public final class C4690s5 extends AbstractC4709t5 {

    public static final boolean f37724i = true;

    public C4671r5 f37725h;

    public C4690s5(boolean z10, com.android.tools.r8.shaking.S0 s02) {
        this.f37725h = new C4671r5(z10, s02);
    }

    @Override
    public final void a(Consumer consumer, C11245i c11245i) {
        consumer.accept(this);
        a(c11245i);
    }

    public final void b(InterfaceC4403d1 interfaceC4403d1, H2 h22) {
        a(interfaceC4403d1, (E0) h22);
    }

    public final void c(InterfaceC4403d1 interfaceC4403d1, H2 h22) {
        a(interfaceC4403d1, (E0) h22);
    }

    public final void d(InterfaceC4403d1 interfaceC4403d1, H2 h22) {
        boolean z10 = f37724i;
        if (!z10 && h22.isInterface()) {
            throw new AssertionError();
        }
        if (!z10 && this.f37782a.containsKey(h22)) {
            throw new AssertionError();
        }
        if (z10) {
            return;
        }
        a(h22.z0(), interfaceC4403d1);
    }

    public final void g(H2 h22) {
        this.f37782a.remove(h22);
        this.f37783b.remove(h22);
        this.f37787f = null;
    }

    public final void b(final InterfaceC4403d1 interfaceC4403d1) {
        this.f37782a.forEach(new BiConsumer() {
            @Override
            public final void accept(Object obj, Object obj2) {
                C4690s5.this.a(interfaceC4403d1, (H2) obj, (Set) obj2);
            }
        });
        this.f37783b.forEach(new Consumer() {
            @Override
            public final void accept(Object obj) {
                C4690s5.this.d(interfaceC4403d1, (H2) obj);
            }
        });
        this.f37786e.forEach(new BiConsumer() {
            @Override
            public final void accept(Object obj, Object obj2) {
                C4690s5.this.a(interfaceC4403d1, (M2) obj, (List) obj2);
            }
        });
        Iterator it = this.f37785d.iterator();
        while (it.hasNext()) {
            a(((H2) it.next()).z0(), interfaceC4403d1);
        }
        this.f37787f.forEach(new BiConsumer() {
            @Override
            public final void accept(Object obj, Object obj2) {
                C4690s5.this.a((M2) obj, (Set) obj2);
            }
        });
    }

    public final boolean a(H2 h22, H5 h52, int i10, com.android.tools.r8.shaking.X1 x12, C4477h c4477h) {
        boolean z10 = f37724i;
        if (!z10 && h22.isInterface()) {
            throw new AssertionError();
        }
        com.android.tools.r8.shaking.S0 s02 = this.f37725h.f37704b;
        if (s02 != null) {
            s02.a(h22, x12);
        }
        a((InterfaceC4403d1) c4477h, (E0) h22);
        if (!this.f37725h.f37703a || i10 != 3 || this.f37783b.contains(h22)) {
            return this.f37783b.add(h22) && ((Set) this.f37782a.remove(h22)) == null;
        }
        if (!z10 && h52 == null) {
            throw new AssertionError();
        }
        Set set = (Set) this.f37782a.computeIfAbsent(h22, new Function() {
            @Override
            public final Object apply(Object obj) {
                Set c10;
                c10 = AbstractC5513Ll0.c();
                return c10;
            }
        });
        set.add(h52.d());
        return set.size() == 1;
    }

    public static List a(M2 m22) {
        return new ArrayList();
    }

    public final void a(M2 m22, C8085kR c8085kR, C4477h c4477h) {
        ((List) this.f37786e.computeIfAbsent(m22, new Function() {
            @Override
            public final Object apply(Object obj) {
                return C4690s5.a((M2) obj);
            }
        })).add(c8085kR);
        E0 g10 = c4477h.g(m22);
        if (g10 != null) {
            a(c4477h, g10);
        }
    }

    public final void a(final InterfaceC4403d1 interfaceC4403d1) {
        this.f37787f = new IdentityHashMap();
        this.f37782a.o().forEach(new Consumer() {
            @Override
            public final void accept(Object obj) {
                C4690s5.this.a(interfaceC4403d1, (H2) obj);
            }
        });
        this.f37783b.forEach(new Consumer() {
            @Override
            public final void accept(Object obj) {
                C4690s5.this.b(interfaceC4403d1, (H2) obj);
            }
        });
        this.f37785d.forEach(new Consumer() {
            @Override
            public final void accept(Object obj) {
                C4690s5.this.c(interfaceC4403d1, (H2) obj);
            }
        });
        this.f37786e.o().forEach(new Consumer() {
            @Override
            public final void accept(Object obj) {
                C4690s5.this.a(interfaceC4403d1, (M2) obj);
            }
        });
    }

    public final void a(InterfaceC4403d1 interfaceC4403d1, H2 h22) {
        a(interfaceC4403d1, (E0) h22);
    }

    public final void a(InterfaceC4403d1 interfaceC4403d1, M2 m22) {
        E0 g10 = interfaceC4403d1.g(m22);
        if (g10 != null) {
            a(interfaceC4403d1, g10);
        }
    }

    public final void a(InterfaceC4403d1 interfaceC4403d1, E0 e02) {
        M2 m22 = e02.f36247g;
        if (m22 != null) {
            a(interfaceC4403d1, m22, e02);
        }
        for (M2 m23 : e02.f36248h.f36675b) {
            a(interfaceC4403d1, m23, e02);
        }
    }

    public final void a(InterfaceC4403d1 interfaceC4403d1, M2 m22, E0 e02) {
        if (m22 == interfaceC4403d1.b().f38068i2) {
            return;
        }
        Set set = (Set) this.f37787f.get(m22);
        if (set != null) {
            set.add(e02);
            return;
        }
        Set c10 = AbstractC5513Ll0.c();
        c10.add(e02);
        this.f37787f.put(m22, c10);
        E0 g10 = interfaceC4403d1.g(m22);
        if (g10 != null) {
            a(interfaceC4403d1, g10);
        }
    }

    public final C4690s5 a(AbstractC4709t5 abstractC4709t5, final InterfaceC4403d1 interfaceC4403d1, final AbstractC5308Hz abstractC5308Hz, final AbstractC5308Hz abstractC5308Hz2) {
        this.f37787f = null;
        a(abstractC4709t5.f37783b, interfaceC4403d1, abstractC5308Hz, abstractC5308Hz2, this.f37783b, true);
        abstractC4709t5.f37782a.forEach(new BiConsumer() {
            @Override
            public final void accept(Object obj, Object obj2) {
                C4690s5.this.a(abstractC5308Hz, abstractC5308Hz2, interfaceC4403d1, (H2) obj, (Set) obj2);
            }
        });
        a(abstractC4709t5.f37785d, interfaceC4403d1, abstractC5308Hz, abstractC5308Hz2, this.f37785d, false);
        a(abstractC4709t5.f37784c, interfaceC4403d1, abstractC5308Hz, abstractC5308Hz2, this.f37784c, false);
        final RR rr = new RR(interfaceC4403d1, abstractC5308Hz, abstractC5308Hz2);
        abstractC4709t5.f37786e.forEach(new BiConsumer() {
            @Override
            public final void accept(Object obj, Object obj2) {
                C4690s5.this.a(abstractC5308Hz, abstractC5308Hz2, rr, (M2) obj, (List) obj2);
            }
        });
        return this;
    }

    public final void a(AbstractC5308Hz abstractC5308Hz, AbstractC5308Hz abstractC5308Hz2, InterfaceC4403d1 interfaceC4403d1, H2 h22, Set set) {
        M2 c10 = abstractC5308Hz.c(abstractC5308Hz2, h22.f36245e);
        if (c10.P0()) {
            return;
        }
        H2 a10 = H2.a(interfaceC4403d1.g(c10));
        if (!f37724i && a10 == null) {
            throw new AssertionError();
        }
        if (this.f37783b.contains(a10)) {
            return;
        }
        Set set2 = (Set) this.f37782a.computeIfAbsent(a10, new Function() {
            @Override
            public final Object apply(Object obj) {
                Set c11;
                c11 = AbstractC5513Ll0.c();
                return c11;
            }
        });
        AbstractC5308Hz g10 = AbstractC5308Hz.g();
        Set c11 = AbstractC5513Ll0.c();
        Iterator it = set.iterator();
        while (it.hasNext()) {
            C4516j1 c4516j1 = (C4516j1) it.next();
            c4516j1.getClass();
            boolean z10 = C4516j1.f37313x;
            if (!z10 && c4516j1 == C4516j1.f37311v) {
                throw new AssertionError();
            }
            A2 d10 = abstractC5308Hz.d(g10, c4516j1.getReference());
            E0 g11 = interfaceC4403d1.g(d10.s0());
            if (!z10 && g11 == null) {
                throw new AssertionError();
            }
            C4516j1 b10 = g11.b(d10);
            if (!z10 && b10 == null) {
                throw new AssertionError((Object) d10.j0());
            }
            c11.add(b10);
        }
        set2.addAll(c11);
    }

    public final void a(AbstractC5308Hz abstractC5308Hz, AbstractC5308Hz abstractC5308Hz2, RR rr, M2 m22, List list) {
        M2 c10 = abstractC5308Hz.c(abstractC5308Hz2, m22);
        if (c10.P0()) {
            if (!f37724i) {
                throw new AssertionError();
            }
        } else {
            List list2 = (List) this.f37786e.computeIfAbsent(c10, TU.a(new Uc()));
            Iterator it = list.iterator();
            while (it.hasNext()) {
                list2.add(((C8085kR) it.next()).a(abstractC5308Hz, abstractC5308Hz2, rr));
            }
        }
    }

    public static void a(Set set, InterfaceC4403d1 interfaceC4403d1, AbstractC5308Hz abstractC5308Hz, AbstractC5308Hz abstractC5308Hz2, Set set2, boolean z10) {
        Iterator it = set.iterator();
        while (it.hasNext()) {
            M2 c10 = abstractC5308Hz.c(abstractC5308Hz2, ((H2) it.next()).f36245e);
            if (c10.P0()) {
                if (!f37724i && !z10) {
                    throw new AssertionError();
                }
            } else {
                H2 a10 = H2.a(interfaceC4403d1.g(c10));
                boolean z11 = f37724i;
                if (!z11 && a10 == null) {
                    throw new AssertionError();
                }
                boolean add = set2.add(a10);
                if (!z11 && !z10 && !add) {
                    throw new AssertionError();
                }
            }
        }
    }

    public final void a(InterfaceC4403d1 interfaceC4403d1, H2 h22, Set set) {
        boolean z10 = f37724i;
        if (!z10 && h22.isInterface()) {
            throw new AssertionError();
        }
        if (!z10 && this.f37783b.contains(h22)) {
            throw new AssertionError();
        }
        if (z10) {
            return;
        }
        a(h22.z0(), interfaceC4403d1);
    }

    public final void a(InterfaceC4403d1 interfaceC4403d1, M2 m22, List list) {
        boolean z10 = f37724i;
        if (!z10 && list.isEmpty()) {
            throw new AssertionError();
        }
        E0 g10 = interfaceC4403d1.g(m22);
        if (g10 != null) {
            if (!z10 && !g10.isInterface()) {
                throw new AssertionError();
            }
            if (z10) {
                return;
            }
            a(g10.z0(), interfaceC4403d1);
        }
    }

    public final void a(M2 m22, Set set) {
        if (!f37724i && set.isEmpty()) {
            throw new AssertionError();
        }
        Iterator it = set.iterator();
        while (it.hasNext()) {
            E0 e02 = (E0) it.next();
            if (!f37724i) {
                Iterator it2 = e02.z0().iterator();
                while (it2.hasNext()) {
                    if (m22 == ((M2) it2.next())) {
                        break;
                    }
                }
                throw new AssertionError();
            }
        }
    }

    public final void a(Iterable iterable, InterfaceC4403d1 interfaceC4403d1) {
        Iterator it = iterable.iterator();
        while (it.hasNext()) {
            M2 m22 = (M2) it.next();
            if (!f37724i && m22 != interfaceC4403d1.b().f38068i2 && !this.f37787f.containsKey(m22)) {
                throw new AssertionError((Object) ("Type not found in hierarchy: " + ((Object) m22)));
            }
        }
    }
}
