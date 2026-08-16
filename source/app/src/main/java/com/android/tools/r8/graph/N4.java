package com.android.tools.r8.graph;

import com.android.tools.r8.graph.N4;
import com.android.tools.r8.internal.AbstractC6333Zs0;
import com.android.tools.r8.internal.C6162Ws0;
import com.android.tools.r8.internal.C6276Ys0;
import com.android.tools.r8.internal.C8693o30;
import com.android.tools.r8.internal.CK;
import com.android.tools.r8.internal.EnumC6871d70;
import com.android.tools.r8.internal.InterfaceC5422Jy;
import com.android.tools.r8.internal.JK;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Comparator;
import java.util.function.Consumer;
import java.util.function.Function;
import java.util.function.Predicate;

public class N4 {

    public static final boolean f36636d = true;

    public final E0 f36637a;

    public O4 f36638b;

    public C4516j1 f36639c = C4516j1.f37311v;

    @FunctionalInterface
    public interface a {
        static a a(final C4516j1[] c4516j1Arr, final C4516j1[] c4516j1Arr2) {
            return new a() {
                @Override
                public final N4 a(E0 e02) {
                    return N4.a.a(c4516j1Arr, c4516j1Arr2, e02);
                }
            };
        }

        static a empty() {
            C4516j1[] c4516j1Arr = C4516j1.f37310u;
            return a(c4516j1Arr, c4516j1Arr);
        }

        N4 a(E0 e02);

        static N4 a(C4516j1[] c4516j1Arr, C4516j1[] c4516j1Arr2, E0 e02) {
            O4 m42;
            boolean z10 = N4.f36636d;
            int length = c4516j1Arr.length + c4516j1Arr2.length;
            if (length > 30) {
                m42 = new P4(false, new C8693o30(length));
                m42.a(c4516j1Arr);
                m42.b(c4516j1Arr2);
            } else {
                m42 = new M4(c4516j1Arr, c4516j1Arr2);
            }
            return new N4(e02, m42);
        }

        static a a(final N4 n42) {
            return new a() {
                @Override
                public final N4 a(E0 e02) {
                    return N4.a.a(N4.this, e02);
                }
            };
        }

        static N4 a(N4 n42, E0 e02) {
            return new N4(e02, n42.f36638b);
        }
    }

    public N4(E0 e02, O4 o42) {
        this.f36637a = e02;
        this.f36638b = o42;
    }

    public boolean a(Predicate<C4516j1> predicate) {
        return this.f36638b.a(predicate) != null;
    }

    public final boolean b(Predicate predicate) {
        return this.f36638b.b(predicate) != null;
    }

    public boolean c() {
        return b(EnumC6871d70.f47286b);
    }

    public int d() {
        return this.f36638b.f();
    }

    public int e() {
        return this.f36638b.g();
    }

    public final void f() {
        b(new Consumer() {
            @Override
            public final void accept(Object obj) {
                N4.this.b((C4516j1) obj);
            }
        }, EnumC6871d70.f47286b);
        if (f36636d) {
            return;
        }
        this.f36638b.i();
    }

    public final void a(final Consumer consumer, final Predicate predicate) {
        this.f36638b.a(new Consumer() {
            @Override
            public final void accept(Object obj) {
                N4.a(Predicate.this, consumer, (C4516j1) obj);
            }
        });
    }

    public final void b(final Consumer consumer, final Predicate predicate) {
        O4 o42 = this.f36638b;
        Consumer consumer2 = new Consumer() {
            @Override
            public final void accept(Object obj) {
                N4.b(Predicate.this, consumer, (C4516j1) obj);
            }
        };
        o42.getClass();
        o42.a(consumer2, EnumC6871d70.f47286b);
    }

    public final void c(final Consumer consumer, final Predicate predicate) {
        this.f36638b.b(new Consumer() {
            @Override
            public final void accept(Object obj) {
                N4.c(Predicate.this, consumer, (C4516j1) obj);
            }
        });
    }

    public static void a(Predicate predicate, Consumer consumer, C4516j1 c4516j1) {
        if (predicate.test(c4516j1)) {
            consumer.accept(c4516j1);
        }
    }

    public static void c(Predicate predicate, Consumer consumer, C4516j1 c4516j1) {
        if (predicate.test(c4516j1)) {
            consumer.accept(c4516j1);
        }
    }

    public static void b(Predicate predicate, Consumer consumer, C4516j1 c4516j1) {
        if (predicate.test(c4516j1)) {
            consumer.accept(c4516j1);
        }
    }

    public final ArrayList a() {
        ArrayList arrayList = new ArrayList(this.f36638b.h());
        b(new H9(arrayList), EnumC6871d70.f47286b);
        arrayList.sort(Comparator.comparing(new I9()));
        return arrayList;
    }

    public final void c(C4516j1 c4516j1) {
        if (f36636d || c4516j1.B0() == this.f36637a.f36245e) {
            return;
        }
        throw new AssertionError((Object) ("Expected method `" + c4516j1.getReference().j0() + "` to have holder `" + this.f36637a.f36245e.j0() + "`"));
    }

    public final boolean b() {
        return this.f36638b.b((Function) new InterfaceC5422Jy() {
            @Override
            public final Object apply(Object obj) {
                return N4.a((C4516j1) obj);
            }
        }).c();
    }

    public final void b(C4516j1 c4516j1) {
        if (f36636d) {
            return;
        }
        c(c4516j1);
    }

    public final void a(final InterfaceC5422Jy interfaceC5422Jy) {
        if (!f36636d && !this.f36637a.e0()) {
            throw new AssertionError();
        }
        InterfaceC5422Jy interfaceC5422Jy2 = new InterfaceC5422Jy() {
            @Override
            public final Object apply(Object obj) {
                return N4.this.a(interfaceC5422Jy, (C4516j1) obj);
            }
        };
        this.f36639c = C4516j1.f37311v;
        this.f36638b.a((Function) interfaceC5422Jy2);
    }

    public final C4516j1 a(InterfaceC5422Jy interfaceC5422Jy, C4516j1 c4516j1) {
        return (C4516j1) interfaceC5422Jy.apply(H0.a(this.f36637a, c4516j1));
    }

    public final void a(C4516j1[] c4516j1Arr) {
        if (!f36636d && c4516j1Arr != null) {
            for (C4516j1 c4516j1 : Arrays.asList(c4516j1Arr)) {
                if (!f36636d) {
                    c(c4516j1);
                }
            }
        }
        this.f36639c = C4516j1.f37311v;
        this.f36638b.a(c4516j1Arr);
    }

    public final void a(ArrayList arrayList) {
        InterfaceC5422Jy interfaceC5422Jy = new InterfaceC5422Jy() {
            @Override
            public final Object apply(Object obj) {
                return ((H0) obj).d();
            }
        };
        if (arrayList.isEmpty()) {
            return;
        }
        if (!f36636d) {
            CK a10 = JK.a(arrayList.iterator(), interfaceC5422Jy);
            while (a10.hasNext()) {
                C4516j1 c4516j1 = (C4516j1) a10.next();
                if (!f36636d) {
                    c(c4516j1);
                }
            }
        }
        this.f36638b.a(arrayList, interfaceC5422Jy);
    }

    public static AbstractC6333Zs0 a(C4516j1 c4516j1) {
        if (c4516j1.r0()) {
            return C6162Ws0.f45559c;
        }
        return C6276Ys0.f46097c;
    }
}
