package com.android.tools.r8.naming;

import com.android.tools.r8.internal.AbstractC6333Zs0;
import com.android.tools.r8.internal.C10604zY0;
import com.android.tools.r8.internal.C5863Rn;
import com.android.tools.r8.internal.C6162Ws0;
import com.android.tools.r8.internal.C6276Ys0;
import com.android.tools.r8.internal.TU;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;
import java.util.function.BiConsumer;
import java.util.function.BiFunction;
import java.util.function.Function;

public final class I implements Comparable {

    public final HashSet f55646b = new HashSet();

    public final C5863Rn f55647c = C5863Rn.k();

    public final ArrayList f55648d = new ArrayList();

    public final K f55649e;

    public I(K k10) {
        this.f55649e = k10;
    }

    public final void a(com.android.tools.r8.graph.H0 h02, J j10) {
        C5863Rn c5863Rn = this.f55647c;
        Function a10 = TU.a(new C10604zY0());
        c5863Rn.getClass();
        ((Set) c5863Rn.a(a10, c5863Rn.b(h02))).add(j10);
    }

    public final void b(final com.android.tools.r8.graph.L2 l22) {
        a(new BiConsumer() {
            @Override
            public final void accept(Object obj, Object obj2) {
                I.this.b(l22, (com.android.tools.r8.graph.H0) obj, (J) obj2);
            }
        });
    }

    @Override
    public final int compareTo(Object obj) {
        return ((I) obj).f55647c.f43368b.size() - this.f55647c.f43368b.size();
    }

    public final void b(com.android.tools.r8.graph.L2 l22, com.android.tools.r8.graph.H0 h02, J j10) {
        com.android.tools.r8.graph.L2 a10 = j10.a(h02);
        if (a10 != null) {
            j10.c(h02, a10);
            this.f55649e.f55673c.a(h02, a10);
        } else {
            j10.c(h02, l22);
            this.f55649e.f55673c.a(h02, l22);
        }
    }

    public final void a(I i10) {
        this.f55646b.addAll(i10.f55646b);
        this.f55648d.addAll(i10.f55648d);
        i10.f55647c.forEach(new BiConsumer() {
            @Override
            public final void accept(Object obj, Object obj2) {
                I.this.a((com.android.tools.r8.graph.H0) obj, (Set) obj2);
            }
        });
    }

    public final void a(com.android.tools.r8.graph.H0 h02, Set set) {
        C5863Rn c5863Rn = this.f55647c;
        Function a10 = TU.a(new C10604zY0());
        c5863Rn.getClass();
        ((Set) c5863Rn.a(a10, c5863Rn.b(h02))).addAll(set);
    }

    public final com.android.tools.r8.graph.L2 a() {
        com.android.tools.r8.graph.L2 l22 = null;
        if (this.f55647c.f43368b.isEmpty()) {
            return null;
        }
        ArrayList i10 = this.f55647c.i();
        int size = i10.size();
        int i11 = 0;
        while (i11 < size) {
            Object obj = i10.get(i11);
            i11++;
            com.android.tools.r8.graph.H0 h02 = (com.android.tools.r8.graph.H0) obj;
            C5863Rn c5863Rn = this.f55647c;
            Iterator it = ((Set) c5863Rn.f43368b.get(c5863Rn.b(h02))).iterator();
            while (it.hasNext()) {
                com.android.tools.r8.graph.L2 a10 = ((J) it.next()).a(h02);
                if (h02.getReference().t0().g(a10)) {
                    return h02.getReference().t0();
                }
                if (a10 != null) {
                    l22 = a10;
                }
            }
        }
        return l22;
    }

    public final boolean a(final com.android.tools.r8.graph.L2 l22) {
        Boolean bool = (Boolean) a(new BiFunction() {
            @Override
            public final Object apply(Object obj, Object obj2) {
                return I.a(com.android.tools.r8.graph.L2.this, (com.android.tools.r8.graph.H0) obj, (J) obj2);
            }
        });
        return bool == null || bool.booleanValue();
    }

    public static Boolean a(com.android.tools.r8.graph.L2 l22, com.android.tools.r8.graph.H0 h02, J j10) {
        if (j10.b(h02, l22)) {
            return null;
        }
        return Boolean.FALSE;
    }

    public final void a(final com.android.tools.r8.graph.L2 l22, final Y y10) {
        a(new BiConsumer() {
            @Override
            public final void accept(Object obj, Object obj2) {
                I.a(com.android.tools.r8.graph.L2.this, y10, (com.android.tools.r8.graph.H0) obj, (J) obj2);
            }
        });
    }

    public static void a(com.android.tools.r8.graph.L2 l22, Y y10, com.android.tools.r8.graph.H0 h02, J j10) {
        j10.a(h02, l22);
        y10.a(h02, l22);
    }

    public final void a(final BiConsumer biConsumer) {
        a(new BiFunction() {
            @Override
            public final Object apply(Object obj, Object obj2) {
                return I.a(BiConsumer.this, (com.android.tools.r8.graph.H0) obj, (J) obj2);
            }
        });
    }

    public static Object a(BiConsumer biConsumer, com.android.tools.r8.graph.H0 h02, J j10) {
        biConsumer.accept(h02, j10);
        return null;
    }

    public final Object a(final BiFunction biFunction) {
        AbstractC6333Zs0 a10 = this.f55647c.a(new BiFunction() {
            @Override
            public final Object apply(Object obj, Object obj2) {
                return I.a(BiFunction.this, (com.android.tools.r8.graph.H0) obj, (Set) obj2);
            }
        });
        if (a10.c()) {
            return a10.a().e();
        }
        return null;
    }

    public static AbstractC6333Zs0 a(BiFunction biFunction, com.android.tools.r8.graph.H0 h02, Set set) {
        Iterator it = set.iterator();
        while (it.hasNext()) {
            Object apply = biFunction.apply(h02, (J) it.next());
            if (apply != null) {
                return new C6162Ws0(apply);
            }
        }
        return C6276Ys0.f46097c;
    }
}
