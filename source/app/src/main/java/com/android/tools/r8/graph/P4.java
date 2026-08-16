package com.android.tools.r8.graph;

import com.android.tools.r8.internal.AbstractC6333Zs0;
import com.android.tools.r8.internal.AbstractC9280rd;
import com.android.tools.r8.internal.C10074wK;
import com.android.tools.r8.internal.C6162Ws0;
import com.android.tools.r8.internal.C6276Ys0;
import com.android.tools.r8.internal.C7192f30;
import com.android.tools.r8.internal.C8693o30;
import com.android.tools.r8.internal.CT;
import com.android.tools.r8.internal.EnumC5537Ly;
import com.android.tools.r8.internal.EnumC6871d70;
import com.android.tools.r8.internal.InterfaceC5422Jy;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import java.util.SortedMap;
import java.util.function.BiConsumer;
import java.util.function.Consumer;
import java.util.function.Function;
import java.util.function.Predicate;

public final class P4 extends O4 {

    public static final boolean f36700c = true;

    public final boolean f36701a;

    public Object f36702b;

    public P4(boolean z10, SortedMap sortedMap) {
        this.f36701a = z10;
        this.f36702b = sortedMap;
    }

    public final C4516j1 b(Function function, C4516j1 c4516j1) {
        return c4516j1.J0() ? (C4516j1) function.apply(c4516j1) : c4516j1;
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [java.util.Map, java.lang.Object] */
    @Override
    public final C4516j1 c(A2 a22) {
        return (C4516j1) this.f36702b.remove(AbstractC9280rd.a(a22, a22));
    }

    @Override
    public final String d() {
        return "<method-mapbacking/" + (this.f36701a ? "sorted" : "linked") + ">";
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [java.lang.Object, java.util.SortedMap] */
    @Override
    public final Iterable e() {
        return this.f36702b.values();
    }

    /* JADX WARN: Type inference failed for: r1v0, types: [java.lang.Object, java.util.SortedMap] */
    @Override
    public final int f() {
        C4563la c4563la = new C4563la(this);
        Iterator it = this.f36702b.values().iterator();
        int i10 = 0;
        while (it.hasNext()) {
            if (c4563la.test((C4516j1) it.next())) {
                i10++;
            }
        }
        return i10;
    }

    /* JADX WARN: Type inference failed for: r1v0, types: [java.lang.Object, java.util.SortedMap] */
    @Override
    public final int g() {
        C4544ka c4544ka = new C4544ka(this);
        Iterator it = this.f36702b.values().iterator();
        int i10 = 0;
        while (it.hasNext()) {
            if (c4544ka.test((C4516j1) it.next())) {
                i10++;
            }
        }
        return i10;
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [java.util.Map, java.lang.Object] */
    @Override
    public final int h() {
        return this.f36702b.size();
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [java.util.Map, java.lang.Object] */
    @Override
    public final void i() {
        this.f36702b.forEach(new BiConsumer() {
            @Override
            public final void accept(Object obj, Object obj2) {
                P4.a((F2) obj, (C4516j1) obj2);
            }
        });
    }

    @Override
    public final Iterable j() {
        return new Iterable() {
            @Override
            public final Iterator iterator() {
                return P4.this.l();
            }
        };
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [java.lang.Object, java.util.SortedMap] */
    public final Iterator k() {
        return new C10074wK(this.f36702b.values().iterator(), new C4563la(this));
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [java.lang.Object, java.util.SortedMap] */
    public final Iterator l() {
        return new C10074wK(this.f36702b.values().iterator(), new C4544ka(this));
    }

    public final void a(SortedMap sortedMap, C4516j1 c4516j1) {
        if (c4516j1.J0()) {
            sortedMap.put(c4516j1.Z0(), c4516j1);
        }
    }

    @Override
    public final void d(final InterfaceC5422Jy interfaceC5422Jy) {
        a(new Function() {
            @Override
            public final Object apply(Object obj) {
                return P4.this.a(interfaceC5422Jy, (C4516j1) obj);
            }
        });
    }

    @Override
    public final void e(final InterfaceC5422Jy interfaceC5422Jy) {
        a(new Function() {
            @Override
            public final Object apply(Object obj) {
                return P4.this.b(interfaceC5422Jy, (C4516j1) obj);
            }
        });
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [java.lang.Object, java.util.SortedMap] */
    @Override
    public final AbstractC6333Zs0 b(Function function) {
        Iterator it = this.f36702b.entrySet().iterator();
        while (it.hasNext()) {
            AbstractC6333Zs0 abstractC6333Zs0 = (AbstractC6333Zs0) function.apply((C4516j1) ((Map.Entry) it.next()).getValue());
            if (abstractC6333Zs0.c()) {
                return abstractC6333Zs0;
            }
        }
        return C6276Ys0.f46097c;
    }

    @Override
    public final Iterable c() {
        return new Iterable() {
            @Override
            public final Iterator iterator() {
                return P4.this.k();
            }
        };
    }

    public static void a(F2 f22, C4516j1 c4516j1) {
        if (f36700c) {
            return;
        }
        A2 reference = c4516j1.getReference();
        reference.getClass();
        if (!reference.a(f22.b(), f22.a())) {
            throw new AssertionError();
        }
    }

    public final C4516j1 c(final Predicate predicate) {
        final com.android.tools.r8.internal.C7 c72 = new com.android.tools.r8.internal.C7();
        b(new Function() {
            @Override
            public final Object apply(Object obj) {
                return P4.a(Predicate.this, c72, (C4516j1) obj);
            }
        });
        return (C4516j1) c72.a();
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [java.util.Map, java.lang.Object] */
    public final void f(C4516j1 c4516j1) {
        this.f36702b.remove(c4516j1.Z0());
    }

    /* JADX WARN: Type inference failed for: r1v1, types: [java.util.Map, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r2v0, types: [java.util.Map, java.lang.Object] */
    @Override
    public final P4 a(final InterfaceC5422Jy interfaceC5422Jy) {
        SortedMap c8693o30;
        boolean z10 = this.f36701a;
        int size = this.f36702b.size();
        if (this.f36701a) {
            c8693o30 = new C7192f30();
        } else {
            c8693o30 = new C8693o30(size);
        }
        final P4 p42 = new P4(z10, c8693o30);
        this.f36702b.forEach(new BiConsumer() {
            @Override
            public final void accept(Object obj, Object obj2) {
                P4.this.b((C4516j1) interfaceC5422Jy.apply((C4516j1) obj2));
            }
        });
        return p42;
    }

    /* JADX WARN: Type inference failed for: r2v1, types: [java.util.Map, java.lang.Object] */
    @Override
    public final C4516j1 a(I2 i22, L2 l22) {
        int i10 = F2.f36286b;
        return (C4516j1) this.f36702b.get(new E2(i22, l22));
    }

    @Override
    public final C4516j1 b(A2 a22) {
        C4516j1 a10 = a(a22.y0(), a22.t0());
        if (a10 == null || !a10.J0()) {
            return null;
        }
        return a10;
    }

    @Override
    public final void c(C4516j1 c4516j1) {
        if (!f36700c && !c4516j1.J0()) {
            throw new AssertionError();
        }
        b(c4516j1);
    }

    @Override
    public final C4516j1 b(Predicate predicate) {
        return c(new C4544ka(this).and(predicate));
    }

    public static AbstractC6333Zs0 a(Predicate predicate, com.android.tools.r8.internal.C7 c72, C4516j1 c4516j1) {
        if (predicate.test(c4516j1)) {
            c72.a((com.android.tools.r8.internal.C7) c4516j1);
            return C6162Ws0.f45559c;
        }
        return C6276Ys0.f46097c;
    }

    /* JADX WARN: Type inference failed for: r1v0, types: [java.util.Map, java.lang.Object] */
    @Override
    public final void b(C4516j1 c4516j1) {
        C4516j1 c4516j12 = (C4516j1) this.f36702b.put(c4516j1.Z0(), c4516j1);
        if (!f36700c && c4516j12 != null) {
            throw new AssertionError();
        }
    }

    @Override
    public final void c(InterfaceC5422Jy interfaceC5422Jy) {
        ArrayList a10 = CT.a(j());
        b();
        ArrayList arrayList = new ArrayList(a10.size());
        int size = a10.size();
        int i10 = 0;
        while (i10 < size) {
            Object obj = a10.get(i10);
            i10++;
            arrayList.add((C4516j1) interfaceC5422Jy.apply((C4516j1) obj));
        }
        a(arrayList, EnumC5537Ly.f42110b);
    }

    @Override
    public final C4516j1 a(A2 a22) {
        C4516j1 a10 = a(a22.y0(), a22.t0());
        if (a10 == null || !a10.f37314g.D()) {
            return null;
        }
        return a10;
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [java.lang.Object, java.util.SortedMap] */
    @Override
    public final void b() {
        this.f36702b.values().removeIf(new C4544ka(this));
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [java.util.Map, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r0v2, types: [java.util.Map, java.lang.Object] */
    @Override
    public final void b(C4516j1[] c4516j1Arr) {
        final SortedMap c8693o30;
        if ((c4516j1Arr == null || c4516j1Arr.length == 0) && this.f36702b.isEmpty()) {
            return;
        }
        if (c4516j1Arr == null) {
            c4516j1Arr = C4516j1.f37310u;
        }
        int size = this.f36702b.size() + c4516j1Arr.length;
        if (this.f36701a) {
            c8693o30 = new C7192f30();
        } else {
            c8693o30 = new C8693o30(size);
        }
        a(new Consumer() {
            @Override
            public final void accept(Object obj) {
                P4.this.b(c8693o30, (C4516j1) obj);
            }
        }, EnumC6871d70.f47286b);
        for (C4516j1 c4516j1 : c4516j1Arr) {
            if (!f36700c && !c4516j1.J0()) {
                throw new AssertionError();
            }
            c8693o30.put(c4516j1.Z0(), c4516j1);
        }
        this.f36702b = c8693o30;
    }

    @Override
    public final C4516j1 a(Predicate predicate) {
        return c(new C4563la(this).and(predicate));
    }

    @Override
    public final void a(C4516j1 c4516j1) {
        if (!f36700c && !c4516j1.f37314g.D()) {
            throw new AssertionError();
        }
        b(c4516j1);
    }

    @Override
    public final void a(Collection collection) {
        Iterator it = collection.iterator();
        while (it.hasNext()) {
            a((C4516j1) it.next());
        }
    }

    @Override
    public final void a(Collection collection, InterfaceC5422Jy interfaceC5422Jy) {
        Iterator it = collection.iterator();
        while (it.hasNext()) {
            c((C4516j1) interfaceC5422Jy.apply(it.next()));
        }
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [java.lang.Object, java.util.SortedMap] */
    @Override
    public final void a() {
        this.f36702b.values().removeIf(new C4563la(this));
    }

    @Override
    public final void a(Set set) {
        set.forEach(new Consumer() {
            @Override
            public final void accept(Object obj) {
                P4.this.f((C4516j1) obj);
            }
        });
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [java.util.Map, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r0v2, types: [java.util.Map, java.lang.Object] */
    @Override
    public final void a(C4516j1[] c4516j1Arr) {
        final SortedMap c8693o30;
        if ((c4516j1Arr == null || c4516j1Arr.length == 0) && this.f36702b.isEmpty()) {
            return;
        }
        if (c4516j1Arr == null) {
            c4516j1Arr = C4516j1.f37310u;
        }
        int size = this.f36702b.size() + c4516j1Arr.length;
        if (this.f36701a) {
            c8693o30 = new C7192f30();
        } else {
            c8693o30 = new C8693o30(size);
        }
        a(new Consumer() {
            @Override
            public final void accept(Object obj) {
                P4.this.a(c8693o30, (C4516j1) obj);
            }
        }, EnumC6871d70.f47286b);
        for (C4516j1 c4516j1 : c4516j1Arr) {
            if (!f36700c && !c4516j1.f37314g.D()) {
                throw new AssertionError();
            }
            c8693o30.put(c4516j1.Z0(), c4516j1);
        }
        this.f36702b = c8693o30;
    }

    @Override
    public final void b(InterfaceC5422Jy interfaceC5422Jy) {
        ArrayList a10 = CT.a(c());
        a();
        ArrayList arrayList = new ArrayList(a10.size());
        int size = a10.size();
        int i10 = 0;
        int i11 = 0;
        while (i11 < size) {
            Object obj = a10.get(i11);
            i11++;
            arrayList.add((C4516j1) interfaceC5422Jy.apply((C4516j1) obj));
        }
        int size2 = arrayList.size();
        while (i10 < size2) {
            Object obj2 = arrayList.get(i10);
            i10++;
            a((C4516j1) obj2);
        }
    }

    /* JADX WARN: Type inference failed for: r1v0, types: [java.util.Map, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r4v5, types: [java.util.Map, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r4v6, types: [java.util.Map, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r4v7, types: [java.util.Map, java.lang.Object] */
    @Override
    public final C4516j1 b(A2 a22, InterfaceC5422Jy interfaceC5422Jy) {
        D2 a10 = AbstractC9280rd.a(a22, a22);
        C4516j1 c4516j1 = (C4516j1) this.f36702b.get(a10);
        if (c4516j1 == null || c4516j1.J0()) {
            return null;
        }
        C4516j1 c4516j12 = (C4516j1) interfaceC5422Jy.apply(c4516j1);
        if (!f36700c && !c4516j12.J0()) {
            throw new AssertionError();
        }
        A2 reference = c4516j12.getReference();
        reference.getClass();
        if (reference.a(a22.y0(), a22.t0())) {
            this.f36702b.put(a10, c4516j12);
            return c4516j12;
        }
        this.f36702b.remove(a10);
        this.f36702b.put(c4516j12.Z0(), c4516j12);
        return c4516j12;
    }

    /* JADX WARN: Type inference failed for: r1v0, types: [java.lang.Object, java.util.SortedMap] */
    /* JADX WARN: Type inference failed for: r3v2, types: [java.util.Map, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r3v3, types: [java.util.Map, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r6v0, types: [java.util.Map, java.lang.Object] */
    @Override
    public final void a(Function function) {
        ArrayList arrayList = new ArrayList(this.f36702b.values());
        int size = arrayList.size();
        int i10 = 0;
        while (i10 < size) {
            Object obj = arrayList.get(i10);
            i10++;
            C4516j1 c4516j1 = (C4516j1) obj;
            C4516j1 c4516j12 = (C4516j1) function.apply(c4516j1);
            if (c4516j12 != c4516j1) {
                F2 Z02 = c4516j1.Z0();
                if (((C4516j1) this.f36702b.get(Z02)) == c4516j1) {
                }
                this.f36702b.put(c4516j12.Z0(), c4516j12);
            }
        }
    }

    public final void b(SortedMap sortedMap, C4516j1 c4516j1) {
        if (c4516j1.f37314g.D()) {
            sortedMap.put(c4516j1.Z0(), c4516j1);
        }
    }

    /* JADX WARN: Type inference failed for: r2v0, types: [java.util.Map, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r5v5, types: [java.util.Map, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r5v6, types: [java.util.Map, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r5v7, types: [java.util.Map, java.lang.Object] */
    @Override
    public final C4516j1 a(A2 a22, InterfaceC5422Jy interfaceC5422Jy) {
        C4563la c4563la = new C4563la(this);
        D2 a10 = AbstractC9280rd.a(a22, a22);
        C4516j1 c4516j1 = (C4516j1) this.f36702b.get(a10);
        if (c4516j1 == null || !c4563la.test(c4516j1)) {
            return null;
        }
        C4516j1 c4516j12 = (C4516j1) interfaceC5422Jy.apply(c4516j1);
        if (!f36700c && !c4563la.test(c4516j12)) {
            throw new AssertionError();
        }
        A2 reference = c4516j12.getReference();
        reference.getClass();
        if (reference.a(a22.y0(), a22.t0())) {
            this.f36702b.put(a10, c4516j12);
            return c4516j12;
        }
        this.f36702b.remove(a10);
        this.f36702b.put(c4516j12.Z0(), c4516j12);
        return c4516j12;
    }

    public final C4516j1 a(Function function, C4516j1 c4516j1) {
        return c4516j1.f37314g.D() ? (C4516j1) function.apply(c4516j1) : c4516j1;
    }
}
