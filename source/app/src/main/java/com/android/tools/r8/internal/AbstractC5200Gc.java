package com.android.tools.r8.internal;

import com.android.tools.r8.graph.C4516j1;
import com.android.tools.r8.graph.C4798y;
import com.android.tools.r8.graph.EnumC4535k1;
import com.android.tools.r8.internal.C8570nJ;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Comparator;
import java.util.IdentityHashMap;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.ExecutorService;
import java.util.function.Consumer;
import java.util.function.Function;

public abstract class AbstractC5200Gc {

    public static final boolean f40527e = true;

    public final C4798y f40528a;

    public final C9539t70 f40529b;

    public final C5448Ki f40530c;

    public final JI f40531d;

    public AbstractC5200Gc(C4798y c4798y, C9539t70 c9539t70, C5448Ki c5448Ki, JI ji2) {
        this.f40528a = c4798y;
        this.f40529b = c9539t70;
        this.f40530c = c5448Ki;
        this.f40531d = ji2;
    }

    public static ArrayDeque b(Collection collection) {
        IdentityHashMap identityHashMap = new IdentityHashMap();
        Iterator it = collection.iterator();
        while (it.hasNext()) {
            com.android.tools.r8.graph.H2 h22 = (com.android.tools.r8.graph.H2) it.next();
            if (h22.q1()) {
                ((List) identityHashMap.computeIfAbsent(h22.T0(), new Function() {
                    @Override
                    public final Object apply(Object obj) {
                        return AbstractC5200Gc.a((com.android.tools.r8.graph.M2) obj);
                    }
                })).add(h22);
            }
        }
        if (identityHashMap.isEmpty()) {
            YB yb2 = new YB(Arrays.asList(new List[0]));
            yb2.f45951b = true;
            return yb2;
        }
        int i10 = 0;
        for (List list : identityHashMap.values()) {
            i10 = Math.max(i10, list.size());
            list.sort(Comparator.comparing(new com.android.tools.r8.errors.q()));
        }
        ArrayDeque arrayDeque = new ArrayDeque(i10);
        for (final int i11 = 0; i11 < i10; i11++) {
            final ArrayList arrayList = new ArrayList(identityHashMap.size());
            TU.a(identityHashMap, new InterfaceC6103Vr0() {
                @Override
                public final boolean test(Object obj, Object obj2) {
                    return AbstractC5200Gc.a(List.this, i11, (com.android.tools.r8.graph.M2) obj, (List) obj2);
                }
            });
            arrayDeque.add(arrayList);
        }
        return arrayDeque;
    }

    public final C5316Ic a(ExecutorService executorService, C8659ns0 c8659ns0) {
        C8659ns0 b10 = c8659ns0.b("Convert classes");
        try {
            C5258Hc c5258Hc = new C5258Hc();
            a(c5258Hc, executorService, c8659ns0);
            a();
            C5316Ic c5316Ic = new C5316Ic(c5258Hc.f40800a);
            b10.d();
            return c5316Ic;
        } catch (Throwable th2) {
            try {
                b10.d();
            } catch (Throwable th3) {
                th2.addSuppressed(th3);
            }
            throw th2;
        }
    }

    public abstract C8659ns0 a(AbstractC7103ea abstractC7103ea, com.android.tools.r8.graph.H2 h22);

    public abstract void a();

    public static List a(com.android.tools.r8.graph.M2 m22) {
        return new ArrayList();
    }

    public static boolean a(List list, int i10, com.android.tools.r8.graph.M2 m22, List list2) {
        list.add((com.android.tools.r8.graph.H2) list2.get(i10));
        return i10 + 1 == list2.size();
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r5v9, types: [com.android.tools.r8.internal.P70] */
    public final void a(C5258Hc c5258Hc, ExecutorService executorService, C8659ns0 c8659ns0) {
        Collection<com.android.tools.r8.graph.H2> d10 = this.f40528a.f().d();
        M70 m70 = this.f40530c.f41738a;
        C4798y c4798y = this.f40528a;
        C8543n9 c8543n9 = new C8543n9();
        m70.getClass();
        boolean z10 = m70 instanceof C6520b10;
        if (!z10) {
            c8543n9 = new P70(m70.a(), c4798y.E().q(), c8543n9);
        }
        C9539t70 c9539t70 = this.f40529b;
        AbstractC8376m9.a(c9539t70.f49522a).a(executorService, c8543n9, c9539t70.f52538I);
        if (!c8543n9.a().isEmpty()) {
            int i10 = AbstractC7552hC.f48487c;
            d10 = new C7051eC().b((Iterable) d10).b((Iterable) c8543n9.a()).a();
        }
        C4798y c4798y2 = this.f40528a;
        C6770ca c6770ca = new C6770ca(c4798y2, c5258Hc, this.f40530c);
        AbstractC7103ea q70 = z10 ? c6770ca : new Q70(c4798y2, m70.a(), c6770ca);
        c6770ca.f47088i = q70;
        this.f40529b.a(q70, executorService);
        if (!f40527e) {
            q70.b();
        }
        ArrayDeque b10 = b(d10);
        if (!b10.isEmpty()) {
            ArrayList arrayList = new ArrayList(d10.size());
            for (com.android.tools.r8.graph.H2 h22 : d10) {
                if (!h22.q1()) {
                    arrayList.add(h22);
                }
            }
            arrayList.addAll((Collection) b10.removeFirst());
            d10 = arrayList;
        }
        int i11 = 1;
        while (!d10.isEmpty()) {
            int i12 = i11 + 1;
            c8659ns0.b("Wave " + i11);
            Iterator<com.android.tools.r8.graph.H2> it = d10.iterator();
            while (it.hasNext()) {
                boolean add = this.f40530c.f41741d.add(it.next().getType());
                if (!C5448Ki.f41737h && !add) {
                    throw new AssertionError();
                }
            }
            C4798y c4798y3 = this.f40528a;
            C6770ca c6770ca2 = new C6770ca(c4798y3, c5258Hc, this.f40530c);
            final AbstractC7103ea q702 = z10 ? c6770ca2 : new Q70(c4798y3, m70.a(), c6770ca2);
            c6770ca2.f47088i = q702;
            C5448Ki c5448Ki = this.f40530c;
            c5448Ki.f41744g = c5448Ki.f41739b.f49522a.k();
            a(d10);
            C8325ls0 a10 = c8659ns0.a(C5467Kr0.a(executorService), "Class conversion");
            ArrayList a11 = C5467Kr0.a(d10, new InterfaceC6217Xr0() {
                @Override
                public final Object apply(Object obj) {
                    return AbstractC5200Gc.this.b(q702, (com.android.tools.r8.graph.H2) obj);
                }
            }, this.f40528a.E().G(), executorService);
            C5448Ki c5448Ki2 = this.f40530c;
            c5448Ki2.f41743f.a((Consumer) null);
            c5448Ki2.f41742e.a((Consumer) null);
            a10.a(a11);
            a10.a();
            List a12 = q702.a();
            if (!a12.isEmpty()) {
                C5448Ki c5448Ki3 = this.f40530c;
                c5448Ki3.f41744g = c5448Ki3.f41739b.f49522a.k();
                C5467Kr0.a(a12, new Consumer() {
                    @Override
                    public final void accept(Object obj) {
                        AbstractC5200Gc.this.a(q702, (com.android.tools.r8.graph.H5) obj);
                    }
                }, this.f40528a.E().G(), executorService);
                C5448Ki c5448Ki4 = this.f40530c;
                c5448Ki4.f41743f.a((Consumer) null);
                c5448Ki4.f41742e.a((Consumer) null);
                if (!f40527e) {
                    q702.b();
                }
            }
            c8659ns0.d();
            if (b10.isEmpty()) {
                return;
            }
            d10 = (Collection) b10.removeFirst();
            i11 = i12;
        }
    }

    public final C8659ns0 b(AbstractC7103ea abstractC7103ea, com.android.tools.r8.graph.H2 h22) {
        C8659ns0 a10 = a(abstractC7103ea, h22);
        a10.d();
        return a10;
    }

    public final void a(AbstractC7103ea abstractC7103ea, com.android.tools.r8.graph.H5 h52) {
        C4516j1 d10 = h52.d();
        if (d10.o1()) {
            d10.L0();
            d10.f37319l = EnumC4535k1.f37407b;
        }
        this.f40530c.a(h52, abstractC7103ea, C8659ns0.c());
        JI ji2 = this.f40531d;
        if (ji2 != null) {
            ji2.a(h52, abstractC7103ea);
        }
    }

    public final void a(final Collection collection) {
        C8570nJ.p pVar = this.f40528a.E().f50599F1;
        InterfaceC6160Wr0 interfaceC6160Wr0 = new InterfaceC6160Wr0() {
            @Override
            public final void accept(Object obj) {
                AbstractC5200Gc.a(Collection.this, (C5629Nm) obj);
            }
        };
        C5629Nm a10 = pVar.a();
        if (a10 != null) {
            interfaceC6160Wr0.a(a10);
        }
    }

    public static void a(Collection collection, C5629Nm c5629Nm) {
        final ArrayList arrayList = new ArrayList(collection);
        arrayList.sort(Comparator.comparing(new com.android.tools.r8.errors.q()));
        c5629Nm.a(new InterfaceC6160Wr0() {
            @Override
            public final void accept(Object obj) {
                AbstractC5200Gc.a(List.this, (InterfaceC5456Km) obj);
            }
        });
    }

    public static void a(List list, InterfaceC5456Km interfaceC5456Km) {
        Iterator it = list.iterator();
        while (it.hasNext()) {
            interfaceC5456Km.a(((com.android.tools.r8.graph.H2) it.next()).getType().V0());
        }
    }

    public final void a(com.android.tools.r8.graph.H2 h22, AbstractC7103ea abstractC7103ea, C8659ns0 c8659ns0) {
        C8659ns0 b10 = c8659ns0.b("Process methods");
        try {
            this.f40529b.a(h22, abstractC7103ea, this.f40530c, this.f40531d, c8659ns0);
            b10.d();
        } catch (Throwable th2) {
            try {
                b10.d();
            } catch (Throwable th3) {
                th2.addSuppressed(th3);
            }
            throw th2;
        }
    }
}
