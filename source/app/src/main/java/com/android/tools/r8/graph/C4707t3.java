package com.android.tools.r8.graph;

import com.android.tools.r8.internal.AbstractC6333Zs0;
import com.android.tools.r8.internal.C6276Ys0;
import com.android.tools.r8.internal.C7359g30;
import com.android.tools.r8.internal.C8526n30;
import com.android.tools.r8.internal.C8693o30;
import com.android.tools.r8.internal.C9073qK;
import com.android.tools.r8.internal.EnumC6871d70;
import com.android.tools.r8.internal.Z60;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.List;
import java.util.SortedMap;
import java.util.function.BiConsumer;
import java.util.function.BiFunction;
import java.util.function.Consumer;
import java.util.function.Function;
import java.util.function.Predicate;

public final class C4707t3 extends AbstractC4688s3 {

    public static final boolean f37758b = true;

    public C8693o30 f37759a;

    public C4707t3(C8693o30 c8693o30) {
        this.f37759a = c8693o30;
    }

    public static void a(C4573m1 c4573m1, C4460g1 c4460g1) {
        if (f37758b) {
            return;
        }
        C4554l1 reference = c4460g1.getReference();
        if (!c4573m1.f37475b.equals(reference.t0()) || !c4573m1.f37476c.equals(reference.getType())) {
            throw new AssertionError();
        }
    }

    public static C4573m1 d(C4554l1 c4554l1) {
        return new C4573m1(c4554l1.t0(), c4554l1.getType());
    }

    @Override
    public final AbstractC6333Zs0 b(E0 e02, Function function) {
        R6 r62 = new R6();
        AbstractC6333Zs0 abstractC6333Zs0 = C6276Ys0.f46097c;
        C8526n30 c8526n30 = new C8526n30(((C7359g30) this.f37759a.values()).f48177b);
        while (c8526n30.hasNext()) {
            C4460g1 c4460g1 = (C4460g1) c8526n30.f50493g.f51148c[c8526n30.b()];
            if (r62.test(c4460g1)) {
                abstractC6333Zs0 = (AbstractC6333Zs0) function.apply(F0.a(e02, c4460g1));
                if (abstractC6333Zs0.c()) {
                    break;
                }
            }
        }
        return abstractC6333Zs0;
    }

    @Override
    public final List c() {
        return b(new C4606nf());
    }

    @Override
    public final int e() {
        C4568lf c4568lf = new C4568lf();
        C8526n30 c8526n30 = new C8526n30(((C7359g30) this.f37759a.values()).f48177b);
        int i10 = 0;
        while (c8526n30.hasNext()) {
            if (c4568lf.test((C4460g1) c8526n30.f50493g.f51148c[c8526n30.b()])) {
                i10++;
            }
        }
        return i10;
    }

    @Override
    public final int f() {
        return this.f37759a.f51156k;
    }

    @Override
    public final List g() {
        return b(new C4568lf());
    }

    @Override
    public final void h() {
        this.f37759a.forEach(new BiConsumer() {
            @Override
            public final void accept(Object obj, Object obj2) {
                C4707t3.a((C4573m1) obj, (C4460g1) obj2);
            }
        });
    }

    @Override
    public final C4460g1 c(C4554l1 c4554l1) {
        C4460g1 c4460g1 = (C4460g1) this.f37759a.get(d(c4554l1));
        if (c4460g1 == null || !c4460g1.w0()) {
            return null;
        }
        return c4460g1;
    }

    @Override
    public final int d() {
        C4606nf c4606nf = new C4606nf();
        C8526n30 c8526n30 = new C8526n30(((C7359g30) this.f37759a.values()).f48177b);
        int i10 = 0;
        while (c8526n30.hasNext()) {
            if (c4606nf.test((C4460g1) c8526n30.f50493g.f51148c[c8526n30.b()])) {
                i10++;
            }
        }
        return i10;
    }

    @Override
    public final AbstractC6333Zs0 a(E0 e02, Function function) {
        Z60 z60 = EnumC6871d70.f47286b;
        AbstractC6333Zs0 abstractC6333Zs0 = C6276Ys0.f46097c;
        C8526n30 c8526n30 = new C8526n30(((C7359g30) this.f37759a.values()).f48177b);
        while (c8526n30.hasNext()) {
            C4460g1 c4460g1 = (C4460g1) c8526n30.f50493g.f51148c[c8526n30.b()];
            if (z60.test(c4460g1)) {
                abstractC6333Zs0 = (AbstractC6333Zs0) function.apply(F0.a(e02, c4460g1));
                if (abstractC6333Zs0.c()) {
                    break;
                }
            }
        }
        return abstractC6333Zs0;
    }

    @Override
    public final void b(C4460g1 c4460g1) {
        boolean z10 = f37758b;
        if (!z10 && !c4460g1.w0()) {
            throw new AssertionError();
        }
        C4460g1 c4460g12 = (C4460g1) this.f37759a.put(d(c4460g1.getReference()), c4460g1);
        if (!z10 && c4460g12 != null) {
            throw new AssertionError();
        }
    }

    @Override
    public final AbstractC6333Zs0 a(E0 e02, BiFunction biFunction) {
        Z60 z60 = EnumC6871d70.f47286b;
        AbstractC6333Zs0 c6276Ys0 = new C6276Ys0(null);
        C8526n30 c8526n30 = new C8526n30(((C7359g30) this.f37759a.values()).f48177b);
        while (c8526n30.hasNext()) {
            c6276Ys0 = (AbstractC6333Zs0) biFunction.apply(F0.a(e02, (C4460g1) c8526n30.f50493g.f51148c[c8526n30.b()]), c6276Ys0.b().e());
            if (c6276Ys0.c()) {
                break;
            }
        }
        return c6276Ys0;
    }

    @Override
    public final void b() {
        this.f37759a.values().removeIf(new C4568lf());
    }

    @Override
    public final void b(C4460g1[] c4460g1Arr) {
        a(c4460g1Arr, new C4568lf());
    }

    @Override
    public final C4460g1 b(C4554l1 c4554l1) {
        C4460g1 c4460g1 = (C4460g1) this.f37759a.get(d(c4554l1));
        if (c4460g1 == null || c4460g1.w0()) {
            return null;
        }
        return c4460g1;
    }

    public final List b(final Predicate predicate) {
        final ArrayList arrayList = new ArrayList(this.f37759a.f51156k);
        this.f37759a.forEach(new BiConsumer() {
            @Override
            public final void accept(Object obj, Object obj2) {
                C4707t3.a(Predicate.this, arrayList, (C4573m1) obj, (C4460g1) obj2);
            }
        });
        return Collections.unmodifiableList(arrayList);
    }

    @Override
    public final Iterable a(Predicate predicate) {
        return C9073qK.a(this.f37759a.values(), predicate);
    }

    @Override
    public final void a(Collection collection) {
        collection.forEach(new Consumer() {
            @Override
            public final void accept(Object obj) {
                C4707t3.this.b((C4460g1) obj);
            }
        });
    }

    @Override
    public final void a(C4460g1 c4460g1) {
        boolean z10 = f37758b;
        if (!z10 && !AbstractC4688s3.c(c4460g1)) {
            throw new AssertionError();
        }
        C4460g1 c4460g12 = (C4460g1) this.f37759a.put(d(c4460g1.getReference()), c4460g1);
        if (!z10 && c4460g12 != null) {
            throw new AssertionError();
        }
    }

    @Override
    public final void a() {
        this.f37759a.values().removeIf(new C4606nf());
    }

    @Override
    public final void a(C4460g1[] c4460g1Arr) {
        a(c4460g1Arr, new C4606nf());
    }

    @Override
    public final C4460g1 a(C4554l1 c4554l1) {
        return (C4460g1) this.f37759a.get(d(c4554l1));
    }

    @Override
    public final void a(Function function) {
        ArrayList arrayList = new ArrayList(this.f37759a.values());
        int size = arrayList.size();
        int i10 = 0;
        while (i10 < size) {
            Object obj = arrayList.get(i10);
            i10++;
            C4460g1 c4460g1 = (C4460g1) obj;
            C4460g1 c4460g12 = (C4460g1) function.apply(c4460g1);
            if (c4460g12 != c4460g1) {
                C4573m1 d10 = d(c4460g1.getReference());
                C4573m1 d11 = d(c4460g12.getReference());
                if (!d11.isEqualTo(d10) && this.f37759a.get(d10) == c4460g1) {
                    this.f37759a.remove(d10);
                }
                this.f37759a.put(d11, c4460g12);
            }
        }
    }

    public static void a(Predicate predicate, List list, C4573m1 c4573m1, C4460g1 c4460g1) {
        if (predicate.test(c4460g1)) {
            list.add(c4460g1);
        }
    }

    public final void a(C4460g1[] c4460g1Arr, final Predicate predicate) {
        if (c4460g1Arr.length == 0 && this.f37759a.isEmpty()) {
            return;
        }
        final C8693o30 c8693o30 = new C8693o30(this.f37759a.f51156k + c4460g1Arr.length);
        this.f37759a.forEach(new BiConsumer() {
            @Override
            public final void accept(Object obj, Object obj2) {
                C4707t3.a(Predicate.this, c8693o30, (C4573m1) obj, (C4460g1) obj2);
            }
        });
        for (C4460g1 c4460g1 : c4460g1Arr) {
            if (!f37758b && !predicate.test(c4460g1)) {
                throw new AssertionError();
            }
            c8693o30.put(d(c4460g1.getReference()), c4460g1);
        }
        this.f37759a = c8693o30;
    }

    public static void a(Predicate predicate, SortedMap sortedMap, C4573m1 c4573m1, C4460g1 c4460g1) {
        if (predicate.test(c4460g1)) {
            return;
        }
        sortedMap.put(c4573m1, c4460g1);
    }
}
