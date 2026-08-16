package com.android.tools.r8.graph;

import com.android.tools.r8.internal.AbstractC5513Ll0;
import com.android.tools.r8.internal.AbstractC6114Vx;
import com.android.tools.r8.internal.AbstractC6333Zs0;
import com.android.tools.r8.internal.C6276Ys0;
import com.android.tools.r8.internal.EnumC5537Ly;
import com.android.tools.r8.internal.EnumC6871d70;
import com.android.tools.r8.internal.InterfaceC5422Jy;
import com.android.tools.r8.internal.X60;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Iterator;
import java.util.Set;
import java.util.function.Consumer;
import java.util.function.Function;
import java.util.function.IntFunction;
import java.util.function.Predicate;

public final class M4 extends O4 {

    public static final boolean f36601c = true;

    public C4516j1[] f36602a;

    public C4516j1[] f36603b;

    public M4(C4516j1[] c4516j1Arr, C4516j1[] c4516j1Arr2) {
        this.f36602a = c4516j1Arr;
        this.f36603b = c4516j1Arr2;
    }

    public static void a(Set set, C4516j1 c4516j1) {
        boolean add = set.add(c4516j1.getReference());
        if (f36601c || add) {
            return;
        }
        throw new AssertionError((Object) ("Duplicate method `" + c4516j1.getReference().j0() + "`"));
    }

    @Override
    public final AbstractC6333Zs0 b(Function function) {
        for (C4516j1 c4516j1 : this.f36602a) {
            AbstractC6333Zs0 abstractC6333Zs0 = (AbstractC6333Zs0) function.apply(c4516j1);
            if (abstractC6333Zs0.c()) {
                return abstractC6333Zs0;
            }
        }
        for (C4516j1 c4516j12 : this.f36603b) {
            AbstractC6333Zs0 abstractC6333Zs02 = (AbstractC6333Zs0) function.apply(c4516j12);
            if (abstractC6333Zs02.c()) {
                return abstractC6333Zs02;
            }
        }
        return C6276Ys0.f46097c;
    }

    @Override
    public final Iterable c() {
        if (f36601c || this.f36602a != null) {
            return Arrays.asList(this.f36602a);
        }
        throw new AssertionError();
    }

    @Override
    public final String d() {
        return "<method-arraybacking>";
    }

    @Override
    public final Iterable e() {
        return AbstractC6114Vx.b(Arrays.asList(this.f36602a), Arrays.asList(this.f36603b));
    }

    @Override
    public final int f() {
        return this.f36602a.length;
    }

    @Override
    public final int g() {
        return this.f36603b.length;
    }

    @Override
    public final int h() {
        return this.f36602a.length + this.f36603b.length;
    }

    @Override
    public final void i() {
        if (f36601c) {
            return;
        }
        k();
    }

    @Override
    public final Iterable j() {
        if (f36601c || this.f36603b != null) {
            return Arrays.asList(this.f36603b);
        }
        throw new AssertionError();
    }

    public final void k() {
        final Set c10 = AbstractC5513Ll0.c();
        a(new Consumer() {
            @Override
            public final void accept(Object obj) {
                M4.a(Set.this, (C4516j1) obj);
            }
        }, EnumC6871d70.f47286b);
    }

    public final void d(C4516j1[] c4516j1Arr) {
        this.f36603b = c4516j1Arr;
    }

    public final ArrayList f(InterfaceC5422Jy interfaceC5422Jy) {
        ArrayList arrayList = new ArrayList();
        int i10 = 0;
        while (true) {
            C4516j1[] c4516j1Arr = this.f36602a;
            if (i10 < c4516j1Arr.length) {
                C4516j1 c4516j1 = c4516j1Arr[i10];
                C4516j1 c4516j12 = (C4516j1) interfaceC5422Jy.apply(c4516j1);
                if (!f36601c && c4516j12 == null) {
                    throw new AssertionError();
                }
                if (c4516j1 != c4516j12 || !c4516j1.f37314g.D()) {
                    if (c4516j12.f37314g.D()) {
                        this.f36602a[i10] = c4516j12;
                    } else {
                        this.f36602a[i10] = null;
                        arrayList.add(c4516j12);
                    }
                }
                i10++;
            } else {
                if (!arrayList.isEmpty()) {
                    this.f36602a = (C4516j1[]) com.android.tools.r8.internal.X3.a(this.f36602a, new C4751v9(), C4516j1.f37310u, this.f36602a.length - arrayList.size());
                }
                return arrayList;
            }
        }
    }

    public final ArrayList g(InterfaceC5422Jy interfaceC5422Jy) {
        ArrayList arrayList = new ArrayList();
        int i10 = 0;
        while (true) {
            C4516j1[] c4516j1Arr = this.f36603b;
            if (i10 >= c4516j1Arr.length) {
                break;
            }
            C4516j1 c4516j1 = c4516j1Arr[i10];
            C4516j1 c4516j12 = (C4516j1) interfaceC5422Jy.apply(c4516j1);
            if (c4516j1 != c4516j12 || !c4516j1.J0()) {
                if (c4516j12.J0()) {
                    this.f36603b[i10] = c4516j12;
                } else {
                    this.f36603b[i10] = null;
                    arrayList.add(c4516j12);
                }
            }
            i10++;
        }
        if (!arrayList.isEmpty()) {
            this.f36603b = (C4516j1[]) com.android.tools.r8.internal.X3.a(this.f36603b, new C4751v9(), C4516j1.f37310u, this.f36603b.length - arrayList.size());
        }
        return arrayList;
    }

    @Override
    public final void a(Collection collection) {
        C4516j1[] c4516j1Arr = new C4516j1[collection.size() + this.f36602a.length];
        C4516j1[] c4516j1Arr2 = this.f36602a;
        System.arraycopy(c4516j1Arr2, 0, c4516j1Arr, 0, c4516j1Arr2.length);
        int length = this.f36602a.length;
        Iterator it = collection.iterator();
        while (it.hasNext()) {
            c4516j1Arr[length] = (C4516j1) it.next();
            length++;
        }
        this.f36602a = c4516j1Arr;
        if (f36601c) {
            return;
        }
        k();
    }

    @Override
    public final C4516j1 c(A2 a22) {
        C4516j1 c4516j1;
        C4516j1 c4516j12;
        C4516j1[] c4516j1Arr = this.f36602a;
        Consumer consumer = new Consumer() {
            @Override
            public final void accept(Object obj) {
                M4.this.c((C4516j1[]) obj);
            }
        };
        int i10 = 0;
        while (true) {
            c4516j1 = null;
            if (i10 >= c4516j1Arr.length) {
                c4516j12 = null;
                break;
            }
            if (a22.a(c4516j1Arr[i10])) {
                c4516j12 = c4516j1Arr[i10];
                C4516j1[] c4516j1Arr2 = new C4516j1[c4516j1Arr.length - 1];
                System.arraycopy(c4516j1Arr, 0, c4516j1Arr2, 0, i10);
                System.arraycopy(c4516j1Arr, i10 + 1, c4516j1Arr2, i10, (c4516j1Arr.length - i10) - 1);
                consumer.accept(c4516j1Arr2);
                break;
            }
            i10++;
        }
        if (c4516j12 != null) {
            if (f36601c || c4516j12.f37314g.D()) {
                return c4516j12;
            }
            throw new AssertionError();
        }
        C4516j1[] c4516j1Arr3 = this.f36603b;
        Consumer consumer2 = new Consumer() {
            @Override
            public final void accept(Object obj) {
                M4.this.d((C4516j1[]) obj);
            }
        };
        int i11 = 0;
        while (true) {
            if (i11 >= c4516j1Arr3.length) {
                break;
            }
            if (a22.a(c4516j1Arr3[i11])) {
                c4516j1 = c4516j1Arr3[i11];
                C4516j1[] c4516j1Arr4 = new C4516j1[c4516j1Arr3.length - 1];
                System.arraycopy(c4516j1Arr3, 0, c4516j1Arr4, 0, i11);
                System.arraycopy(c4516j1Arr3, i11 + 1, c4516j1Arr4, i11, (c4516j1Arr3.length - i11) - 1);
                consumer2.accept(c4516j1Arr4);
                break;
            }
            i11++;
        }
        if (f36601c || c4516j1 == null || c4516j1.J0()) {
            return c4516j1;
        }
        throw new AssertionError();
    }

    @Override
    public final void d(InterfaceC5422Jy interfaceC5422Jy) {
        a(f(interfaceC5422Jy), EnumC5537Ly.f42110b);
    }

    public final void e(C4516j1[] c4516j1Arr) {
        this.f36602a = c4516j1Arr;
    }

    @Override
    public final void e(InterfaceC5422Jy interfaceC5422Jy) {
        a(g(interfaceC5422Jy));
    }

    @Override
    public final void b() {
        this.f36603b = C4516j1.f37310u;
    }

    @Override
    public final void b(C4516j1[] c4516j1Arr) {
        C4516j1[] c4516j1Arr2 = C4516j1.f37310u;
        if (c4516j1Arr == null) {
            c4516j1Arr = c4516j1Arr2;
        }
        this.f36603b = c4516j1Arr;
        if (f36601c) {
            return;
        }
        k();
    }

    @Override
    public final void a() {
        this.f36602a = C4516j1.f37310u;
    }

    @Override
    public final void a(Set set) {
        C4516j1[] c4516j1Arr = this.f36602a;
        ArrayList arrayList = new ArrayList(c4516j1Arr.length);
        for (C4516j1 c4516j1 : c4516j1Arr) {
            if (!set.contains(c4516j1)) {
                arrayList.add(c4516j1);
            }
        }
        this.f36602a = (C4516j1[]) arrayList.toArray(C4516j1.f37310u);
        C4516j1[] c4516j1Arr2 = this.f36603b;
        ArrayList arrayList2 = new ArrayList(c4516j1Arr2.length);
        for (C4516j1 c4516j12 : c4516j1Arr2) {
            if (!set.contains(c4516j12)) {
                arrayList2.add(c4516j12);
            }
        }
        this.f36603b = (C4516j1[]) arrayList2.toArray(C4516j1.f37310u);
    }

    @Override
    public final C4516j1 b(A2 a22) {
        for (C4516j1 c4516j1 : this.f36603b) {
            if (a22.a(c4516j1)) {
                return c4516j1;
            }
        }
        return null;
    }

    @Override
    public final C4516j1 b(Predicate predicate) {
        return (C4516j1) X60.a(this.f36603b, predicate);
    }

    @Override
    public final C4516j1 b(A2 a22, InterfaceC5422Jy interfaceC5422Jy) {
        int i10 = 0;
        while (true) {
            C4516j1[] c4516j1Arr = this.f36602a;
            if (i10 >= c4516j1Arr.length) {
                return null;
            }
            C4516j1 c4516j1 = c4516j1Arr[i10];
            if (a22.a(c4516j1)) {
                C4516j1 c4516j12 = (C4516j1) interfaceC5422Jy.apply(c4516j1);
                if (!f36601c && !c4516j12.J0()) {
                    throw new AssertionError();
                }
                C4516j1[] c4516j1Arr2 = this.f36602a;
                Consumer consumer = new Consumer() {
                    @Override
                    public final void accept(Object obj) {
                        M4.this.e((C4516j1[]) obj);
                    }
                };
                C4516j1 c4516j13 = c4516j1Arr2[i10];
                C4516j1[] c4516j1Arr3 = new C4516j1[c4516j1Arr2.length - 1];
                System.arraycopy(c4516j1Arr2, 0, c4516j1Arr3, 0, i10);
                System.arraycopy(c4516j1Arr2, i10 + 1, c4516j1Arr3, i10, (c4516j1Arr2.length - i10) - 1);
                consumer.accept(c4516j1Arr3);
                c(c4516j12);
                return c4516j12;
            }
            i10++;
        }
    }

    @Override
    public final void a(C4516j1[] c4516j1Arr) {
        C4516j1[] c4516j1Arr2 = C4516j1.f37310u;
        if (c4516j1Arr == null) {
            c4516j1Arr = c4516j1Arr2;
        }
        this.f36602a = c4516j1Arr;
        if (f36601c) {
            return;
        }
        k();
    }

    public final void c(C4516j1[] c4516j1Arr) {
        this.f36602a = c4516j1Arr;
    }

    @Override
    public final void c(C4516j1 c4516j1) {
        if (!f36601c && !c4516j1.J0()) {
            throw new AssertionError();
        }
        this.f36603b = (C4516j1[]) com.android.tools.r8.internal.X3.b(this.f36603b, c4516j1);
    }

    @Override
    public final void a(Collection collection, InterfaceC5422Jy interfaceC5422Jy) {
        C4516j1[] c4516j1Arr = new C4516j1[collection.size() + this.f36603b.length];
        C4516j1[] c4516j1Arr2 = this.f36603b;
        System.arraycopy(c4516j1Arr2, 0, c4516j1Arr, 0, c4516j1Arr2.length);
        int length = this.f36603b.length;
        Iterator it = collection.iterator();
        while (it.hasNext()) {
            c4516j1Arr[length] = (C4516j1) interfaceC5422Jy.apply(it.next());
            length++;
        }
        this.f36603b = c4516j1Arr;
        if (f36601c) {
            return;
        }
        k();
    }

    @Override
    public final void b(final InterfaceC5422Jy interfaceC5422Jy) {
        final C4516j1[] c4516j1Arr = this.f36602a;
        this.f36602a = C4516j1.f37310u;
        this.f36602a = (C4516j1[]) com.android.tools.r8.internal.X3.a((Object[]) new C4516j1[c4516j1Arr.length], new IntFunction() {
            @Override
            public final Object apply(int i10) {
                return M4.a(Function.this, c4516j1Arr, i10);
            }
        });
    }

    @Override
    public final void c(final InterfaceC5422Jy interfaceC5422Jy) {
        final C4516j1[] c4516j1Arr = this.f36603b;
        this.f36603b = C4516j1.f37310u;
        this.f36603b = (C4516j1[]) com.android.tools.r8.internal.X3.a((Object[]) new C4516j1[c4516j1Arr.length], new IntFunction() {
            @Override
            public final Object apply(int i10) {
                return M4.b(Function.this, c4516j1Arr, i10);
            }
        });
    }

    public static C4516j1 b(Function function, C4516j1[] c4516j1Arr, int i10) {
        return (C4516j1) function.apply(c4516j1Arr[i10]);
    }

    @Override
    public final void b(C4516j1 c4516j1) {
        if (c4516j1.f37314g.D()) {
            a(c4516j1);
        } else {
            c(c4516j1);
        }
    }

    @Override
    public final C4516j1 a(A2 a22) {
        for (C4516j1 c4516j1 : this.f36602a) {
            if (a22.a(c4516j1)) {
                return c4516j1;
            }
        }
        return null;
    }

    @Override
    public final C4516j1 a(Predicate predicate) {
        return (C4516j1) X60.a(this.f36602a, predicate);
    }

    @Override
    public final C4516j1 a(I2 i22, L2 l22) {
        C4516j1 c4516j1;
        C4516j1[] c4516j1Arr = this.f36602a;
        int length = c4516j1Arr.length;
        int i10 = 0;
        while (true) {
            if (i10 >= length) {
                c4516j1 = null;
                break;
            }
            c4516j1 = c4516j1Arr[i10];
            if (c4516j1.getReference().a(i22, l22)) {
                break;
            }
            i10++;
        }
        if (c4516j1 != null) {
            return c4516j1;
        }
        for (C4516j1 c4516j12 : this.f36603b) {
            if (c4516j12.getReference().a(i22, l22)) {
                return c4516j12;
            }
        }
        return null;
    }

    @Override
    public final void a(C4516j1 c4516j1) {
        if (!f36601c && !c4516j1.f37314g.D()) {
            throw new AssertionError();
        }
        this.f36602a = (C4516j1[]) com.android.tools.r8.internal.X3.b(this.f36602a, c4516j1);
    }

    @Override
    public final C4516j1 a(A2 a22, InterfaceC5422Jy interfaceC5422Jy) {
        C4516j1 c4516j1;
        C4516j1[] c4516j1Arr = this.f36602a;
        int i10 = 0;
        while (true) {
            if (i10 >= c4516j1Arr.length) {
                c4516j1 = null;
                break;
            }
            C4516j1 c4516j12 = c4516j1Arr[i10];
            if (a22.a(c4516j12)) {
                c4516j1 = (C4516j1) interfaceC5422Jy.apply(c4516j12);
                c4516j1Arr[i10] = c4516j1;
                break;
            }
            i10++;
        }
        if (f36601c || c4516j1 == null || c4516j1.f37314g.D()) {
            return c4516j1;
        }
        throw new AssertionError();
    }

    @Override
    public final void a(Function function) {
        InterfaceC5422Jy interfaceC5422Jy = (InterfaceC5422Jy) function;
        ArrayList f10 = f(interfaceC5422Jy);
        a(g(interfaceC5422Jy));
        a(f10, EnumC5537Ly.f42110b);
    }

    public static C4516j1 a(Function function, C4516j1[] c4516j1Arr, int i10) {
        return (C4516j1) function.apply(c4516j1Arr[i10]);
    }

    @Override
    public final O4 a(InterfaceC5422Jy interfaceC5422Jy) {
        C4516j1[] c4516j1Arr = new C4516j1[this.f36602a.length];
        C4516j1[] c4516j1Arr2 = new C4516j1[this.f36603b.length];
        int i10 = 0;
        int i11 = 0;
        while (true) {
            C4516j1[] c4516j1Arr3 = this.f36602a;
            if (i11 < c4516j1Arr3.length) {
                C4516j1 c4516j1 = (C4516j1) interfaceC5422Jy.apply(c4516j1Arr3[i11]);
                c4516j1Arr[i11] = c4516j1;
                if (!f36601c && !c4516j1.f37314g.D()) {
                    throw new AssertionError();
                }
                i11++;
            } else {
                while (true) {
                    C4516j1[] c4516j1Arr4 = this.f36603b;
                    if (i10 < c4516j1Arr4.length) {
                        C4516j1 c4516j12 = (C4516j1) interfaceC5422Jy.apply(c4516j1Arr4[i10]);
                        c4516j1Arr2[i10] = c4516j12;
                        if (!f36601c && !c4516j12.J0()) {
                            throw new AssertionError();
                        }
                        i10++;
                    } else {
                        return new M4(c4516j1Arr, c4516j1Arr2);
                    }
                }
            }
        }
    }
}
