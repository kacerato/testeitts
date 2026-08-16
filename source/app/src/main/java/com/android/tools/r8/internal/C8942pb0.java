package com.android.tools.r8.internal;

import com.android.tools.r8.graph.AbstractC4744v2;
import com.android.tools.r8.graph.C4462g3;
import com.android.tools.r8.graph.C4514j;
import com.android.tools.r8.graph.C4516j1;
import com.android.tools.r8.graph.C4798y;
import com.android.tools.r8.internal.C6694c4;
import com.android.tools.r8.internal.C9029q4;
import com.android.tools.r8.internal.C9195r4;
import com.android.tools.r8.shaking.C11433t2;
import com.android.tools.r8.shaking.C11450u2;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Comparator;
import java.util.List;
import java.util.Map;
import java.util.function.BiConsumer;
import java.util.function.BiPredicate;
import java.util.function.Consumer;
import java.util.function.Function;
import java.util.function.IntFunction;
import java.util.function.Predicate;
import u.C15556y0;

public final class C8942pb0 extends AbstractC9109qb0 {

    public static final boolean f51565g = true;

    public final AbstractC8194l4 f51566b;

    public final C6300Zd f51567c;

    public final Map f51568d;

    public List f51569e;

    public final AbstractC9148qo0 f51570f;

    public C8942pb0(AbstractC8194l4 abstractC8194l4, C6300Zd c6300Zd, ArrayList arrayList, List list, AbstractC9148qo0 abstractC9148qo0, C8659ns0 c8659ns0) {
        super(c8659ns0);
        this.f51566b = abstractC8194l4;
        this.f51567c = c6300Zd;
        this.f51568d = TU.a((Collection) arrayList, (IntFunction) new C15556y0(), (Function) new com.android.tools.r8.errors.q());
        this.f51569e = list;
        this.f51570f = abstractC9148qo0;
    }

    public static boolean a(com.android.tools.r8.graph.M2 m22, com.android.tools.r8.graph.E0 e02) {
        return e02 == null;
    }

    @Override
    public final C8942pb0 b() {
        return this;
    }

    public final List c() {
        List list = this.f51569e;
        if (!f51565g && list == null) {
            throw new AssertionError();
        }
        this.f51569e = null;
        return list;
    }

    public final void a(final C6694c4.a aVar) {
        Collection values = this.f51568d.values();
        Comparator comparing = Comparator.comparing(new com.android.tools.r8.errors.q());
        boolean z10 = AT.f38618a;
        ArrayList arrayList = new ArrayList(values);
        arrayList.sort(comparing);
        int size = arrayList.size();
        int i10 = 0;
        while (i10 < size) {
            Object obj = arrayList.get(i10);
            i10++;
            com.android.tools.r8.graph.H2 h22 = (com.android.tools.r8.graph.H2) obj;
            aVar.a(h22.getType());
            h22.g(new Consumer() {
                @Override
                public final void accept(Object obj2) {
                    C8942pb0.a(C6694c4.a.this, (C4516j1) obj2);
                }
            });
        }
    }

    public final void b(C4798y c4798y) {
        C4462g3.a b10 = c4798y.e().a().c().b(new Predicate() {
            @Override
            public final boolean test(Object obj) {
                return C8942pb0.this.a((com.android.tools.r8.graph.I0) obj);
            }
        });
        Collection values = this.f51568d.values();
        synchronized (b10) {
            b10.f38316a.addAll(values);
        }
        c4798y.b(b10.b());
        if (f51565g) {
            return;
        }
        a(c4798y);
    }

    public static void a(C6694c4.a aVar, C4516j1 c4516j1) {
        C9029q4.a d10 = C9029q4.d();
        d10.f51711b = c4516j1.getReference();
        aVar.a(d10.a(new Consumer() {
            @Override
            public final void accept(Object obj) {
                ((C9195r4.a) obj).b().d().c();
            }
        }).build());
    }

    public final boolean a(com.android.tools.r8.graph.I0 i02) {
        return this.f51568d.containsKey(i02.getType());
    }

    public final boolean a(com.android.tools.r8.graph.J2 j22) {
        j22.getClass();
        if (j22 instanceof com.android.tools.r8.graph.M2) {
            return this.f51568d.containsKey(j22.o0());
        }
        AbstractC4744v2 m02 = j22.m0();
        return m02.b((com.android.tools.r8.graph.E0) this.f51568d.get(m02.s0())) != null;
    }

    public final void a(C4798y c4798y) {
        if (c4798y.f().i()) {
            final C11433t2 c11433t2 = new C11433t2(((C4514j) c4798y.f()).f37305h.f57888a);
            for (final com.android.tools.r8.graph.H2 h22 : this.f51568d.values()) {
                h22.a(c4798y.e(), new BiPredicate() {
                    @Override
                    public final boolean test(Object obj, Object obj2) {
                        return C8942pb0.a((com.android.tools.r8.graph.M2) obj, (com.android.tools.r8.graph.E0) obj2);
                    }
                }, new BiConsumer() {
                    @Override
                    public final void accept(Object obj, Object obj2) {
                        C11433t2.this.a((com.android.tools.r8.graph.M2) obj, h22);
                    }
                });
            }
            c4798y.h().f37305h = new C11450u2(C4875Al0.a(c11433t2.f57841a, c11433t2.f57842b.o(), c11433t2.f57843c));
        }
    }
}
