package com.android.tools.r8.graph;

import com.android.tools.r8.internal.AbstractC5513Ll0;
import com.android.tools.r8.internal.AbstractC6114Vx;
import com.android.tools.r8.internal.AbstractC6333Zs0;
import com.android.tools.r8.internal.AbstractC9907vK;
import com.android.tools.r8.internal.C6057Ux;
import com.android.tools.r8.internal.C6276Ys0;
import com.android.tools.r8.internal.C8570nJ;
import com.android.tools.r8.internal.EnumC6871d70;
import com.android.tools.r8.internal.GK;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Objects;
import java.util.Set;
import java.util.function.BiFunction;
import java.util.function.Consumer;
import java.util.function.Function;
import java.util.function.Predicate;

public final class C4632p3 extends AbstractC4688s3 {

    public static final boolean f37576c = true;

    public C4460g1[] f37577a;

    public C4460g1[] f37578b;

    public C4632p3(C4460g1[] c4460g1Arr, C4460g1[] c4460g1Arr2) {
        this.f37577a = c4460g1Arr;
        this.f37578b = c4460g1Arr2;
    }

    @Override
    public final AbstractC6333Zs0 a(E0 e02, Function function) {
        AbstractC6333Zs0 a10 = a(e02, this.f37577a, function);
        return a10.c() ? a10 : a(e02, this.f37578b, function);
    }

    @Override
    public final AbstractC6333Zs0 b(E0 e02, Function function) {
        return a(e02, this.f37578b, function);
    }

    @Override
    public final List c() {
        if (C8570nJ.b()) {
            return Collections.unmodifiableList(Arrays.asList(this.f37578b));
        }
        return Arrays.asList(this.f37578b);
    }

    @Override
    public final int d() {
        return this.f37578b.length;
    }

    @Override
    public final int e() {
        return this.f37577a.length;
    }

    @Override
    public final int f() {
        return this.f37577a.length + this.f37578b.length;
    }

    @Override
    public final List g() {
        return C8570nJ.b() ? Collections.unmodifiableList(Arrays.asList(this.f37577a)) : Arrays.asList(this.f37577a);
    }

    @Override
    public final void h() {
        if (f37576c) {
            return;
        }
        i();
    }

    public final void i() {
        Set c10 = AbstractC5513Ll0.c();
        Iterator it = ((C6057Ux) a(EnumC6871d70.f47286b)).iterator();
        while (true) {
            GK gk2 = (GK) it;
            if (!gk2.hasNext()) {
                return;
            }
            C4460g1 c4460g1 = (C4460g1) gk2.next();
            boolean add = c10.add(c4460g1.getReference());
            if (!f37576c && !add) {
                throw new AssertionError((Object) ("Duplicate field `" + c4460g1.getReference().j0() + "`"));
            }
        }
    }

    @Override
    public final void b(C4460g1 c4460g1) {
        C4460g1[] c4460g1Arr = this.f37577a;
        C4460g1[] c4460g1Arr2 = new C4460g1[c4460g1Arr.length + 1];
        System.arraycopy(c4460g1Arr, 0, c4460g1Arr2, 0, c4460g1Arr.length);
        c4460g1Arr2[c4460g1Arr.length] = c4460g1;
        this.f37577a = c4460g1Arr2;
    }

    @Override
    public final AbstractC6333Zs0 a(E0 e02, BiFunction biFunction) {
        C4460g1[] c4460g1Arr = this.f37577a;
        AbstractC6333Zs0 c6276Ys0 = new C6276Ys0(null);
        for (C4460g1 c4460g1 : c4460g1Arr) {
            c6276Ys0 = (AbstractC6333Zs0) biFunction.apply(F0.a(e02, c4460g1), c6276Ys0.b().e());
            if (c6276Ys0.c()) {
                break;
            }
        }
        if (c6276Ys0.c()) {
            return c6276Ys0;
        }
        Object f10 = c6276Ys0.b().f();
        C4460g1[] c4460g1Arr2 = this.f37578b;
        AbstractC6333Zs0 c6276Ys02 = new C6276Ys0(f10);
        for (C4460g1 c4460g12 : c4460g1Arr2) {
            c6276Ys02 = (AbstractC6333Zs0) biFunction.apply(F0.a(e02, c4460g12), c6276Ys02.b().e());
            if (c6276Ys02.c()) {
                return c6276Ys02;
            }
        }
        return c6276Ys02;
    }

    @Override
    public final C4460g1 c(C4554l1 c4554l1) {
        return a(this.f37577a, c4554l1);
    }

    @Override
    public final void b() {
        this.f37577a = C4460g1.f37200o;
    }

    @Override
    public final void b(C4460g1[] c4460g1Arr) {
        if (!f37576c && c4460g1Arr == null) {
            throw new AssertionError();
        }
        this.f37577a = c4460g1Arr;
    }

    public final void b(Collection collection) {
        C4460g1[] c4460g1Arr = this.f37578b;
        C4460g1[] c4460g1Arr2 = new C4460g1[collection.size() + c4460g1Arr.length];
        System.arraycopy(c4460g1Arr, 0, c4460g1Arr2, 0, c4460g1Arr.length);
        int length = c4460g1Arr.length;
        Iterator it = collection.iterator();
        while (it.hasNext()) {
            c4460g1Arr2[length] = (C4460g1) it.next();
            length++;
        }
        this.f37578b = c4460g1Arr2;
    }

    @Override
    public final C4460g1 b(C4554l1 c4554l1) {
        return a(this.f37578b, c4554l1);
    }

    public static AbstractC6333Zs0 a(E0 e02, C4460g1[] c4460g1Arr, Function function) {
        AbstractC6333Zs0 abstractC6333Zs0 = C6276Ys0.f46097c;
        for (C4460g1 c4460g1 : c4460g1Arr) {
            abstractC6333Zs0 = (AbstractC6333Zs0) function.apply(F0.a(e02, c4460g1));
            if (abstractC6333Zs0.c()) {
                return abstractC6333Zs0;
            }
        }
        return abstractC6333Zs0;
    }

    @Override
    public final Iterable a(Predicate predicate) {
        List asList = Arrays.asList(this.f37578b);
        Objects.requireNonNull(predicate);
        return AbstractC6114Vx.b(AbstractC9907vK.c(asList, new C4485h7(predicate)), AbstractC9907vK.c(Arrays.asList(this.f37577a), new C4485h7(predicate)));
    }

    @Override
    public final void a(Collection collection) {
        C4460g1[] c4460g1Arr = this.f37577a;
        C4460g1[] c4460g1Arr2 = new C4460g1[collection.size() + c4460g1Arr.length];
        System.arraycopy(c4460g1Arr, 0, c4460g1Arr2, 0, c4460g1Arr.length);
        int length = c4460g1Arr.length;
        Iterator it = collection.iterator();
        while (it.hasNext()) {
            c4460g1Arr2[length] = (C4460g1) it.next();
            length++;
        }
        this.f37577a = c4460g1Arr2;
    }

    @Override
    public final void a(C4460g1 c4460g1) {
        C4460g1[] c4460g1Arr = this.f37578b;
        C4460g1[] c4460g1Arr2 = new C4460g1[c4460g1Arr.length + 1];
        System.arraycopy(c4460g1Arr, 0, c4460g1Arr2, 0, c4460g1Arr.length);
        c4460g1Arr2[c4460g1Arr.length] = c4460g1;
        this.f37578b = c4460g1Arr2;
    }

    @Override
    public final void a() {
        this.f37578b = C4460g1.f37200o;
    }

    @Override
    public final void a(C4460g1[] c4460g1Arr) {
        if (!f37576c && c4460g1Arr == null) {
            throw new AssertionError();
        }
        this.f37578b = c4460g1Arr;
    }

    @Override
    public final C4460g1 a(C4554l1 c4554l1) {
        C4460g1 a10 = a(this.f37578b, c4554l1);
        return a10 == null ? a(this.f37577a, c4554l1) : a10;
    }

    @Override
    public final void a(Function function) {
        this.f37577a = a(this.f37577a, function, new C4568lf(), new Consumer() {
            @Override
            public final void accept(Object obj) {
                C4632p3.this.b((List) obj);
            }
        });
        this.f37578b = a(this.f37578b, function, new C4606nf(), new Consumer() {
            @Override
            public final void accept(Object obj) {
                C4632p3.this.a((List) obj);
            }
        });
    }

    public static C4460g1 a(C4460g1[] c4460g1Arr, C4554l1 c4554l1) {
        for (C4460g1 c4460g1 : c4460g1Arr) {
            c4554l1.getClass();
            C4554l1 reference = c4460g1.getReference();
            if (c4554l1.f38298g.g(reference.f38298g) && c4554l1.f37449i.a(reference.f37449i)) {
                return c4460g1;
            }
        }
        return null;
    }

    public static C4460g1[] a(C4460g1[] c4460g1Arr, Function function, Predicate predicate, Consumer consumer) {
        ArrayList arrayList = new ArrayList();
        for (int i10 = 0; i10 < c4460g1Arr.length; i10++) {
            C4460g1 c4460g1 = c4460g1Arr[i10];
            boolean z10 = f37576c;
            if (!z10 && !predicate.test(c4460g1)) {
                throw new AssertionError();
            }
            C4460g1 c4460g12 = (C4460g1) function.apply(c4460g1);
            if (!z10 && c4460g12 == null) {
                throw new AssertionError();
            }
            if (c4460g1 != c4460g12) {
                if (predicate.test(c4460g12)) {
                    c4460g1Arr[i10] = c4460g12;
                } else {
                    c4460g1Arr[i10] = null;
                    arrayList.add(c4460g12);
                }
            }
        }
        if (arrayList.isEmpty()) {
            return c4460g1Arr;
        }
        consumer.accept(arrayList);
        return (C4460g1[]) com.android.tools.r8.internal.X3.a(c4460g1Arr, new Predicate() {
            @Override
            public final boolean test(Object obj) {
                return Objects.nonNull((C4460g1) obj);
            }
        }, C4460g1.f37200o, c4460g1Arr.length - arrayList.size());
    }
}
