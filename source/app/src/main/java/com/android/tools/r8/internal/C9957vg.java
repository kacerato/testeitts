package com.android.tools.r8.internal;

import com.android.tools.r8.graph.C4798y;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.function.Consumer;
import java.util.function.Function;
import java.util.function.Predicate;

public final class C9957vg extends M70 {

    public static final boolean f53181d = true;

    public final ArrayList f53182a;

    public final C7 f53183b;

    public boolean f53184c;

    public C9957vg(C7 c72, ArrayList arrayList) {
        this.f53184c = false;
        this.f53182a = arrayList;
        this.f53183b = c72;
    }

    public static void c(com.android.tools.r8.graph.H5 h52, K70 k70) {
        k70.getClass();
        k70.a((com.android.tools.r8.graph.J2) h52.getReference());
    }

    @Override
    public final C9957vg a() {
        return this;
    }

    public final void b(final com.android.tools.r8.graph.H5 h52, com.android.tools.r8.graph.H5 h53) {
        a(h53.getReference(), new Consumer() {
            @Override
            public final void accept(Object obj) {
                C9957vg.a(com.android.tools.r8.graph.H5.this, (K70) obj);
            }
        });
    }

    public final boolean d() {
        return AbstractC9907vK.b(this.f53182a, new V60() {
            @Override
            public final boolean apply(Object obj) {
                return ((C6861d4) obj).e();
            }
        });
    }

    public final boolean e() {
        return this.f53183b.a(new Predicate() {
            @Override
            public final boolean test(Object obj) {
                return ((C9314ro0) obj).e();
            }
        });
    }

    public static void b(com.android.tools.r8.graph.H5 h52, K70 k70) {
        k70.getClass();
        k70.a((com.android.tools.r8.graph.J2) h52.getReference()).a(h52.getHolder().getReference());
    }

    public final void a(Consumer consumer) {
        ArrayList arrayList = this.f53182a;
        int size = arrayList.size();
        int i10 = 0;
        while (i10 < size) {
            Object obj = arrayList.get(i10);
            i10++;
            consumer.accept((C6861d4) obj);
        }
        this.f53183b.a(consumer);
    }

    @Override
    public final void c() {
        if (!f53181d && !this.f53184c) {
            throw new AssertionError();
        }
    }

    public C9957vg(AbstractC8194l4 abstractC8194l4, AbstractC9148qo0 abstractC9148qo0) {
        int i10 = 0;
        this.f53184c = false;
        this.f53182a = new ArrayList();
        if (abstractC8194l4.b()) {
            ArrayList arrayList = abstractC8194l4.a().f40366c;
            int size = arrayList.size();
            while (i10 < size) {
                Object obj = arrayList.get(i10);
                i10++;
                this.f53182a.add(new C6861d4((C6694c4) obj));
            }
            if (!f53181d && this.f53182a.isEmpty()) {
                throw new AssertionError();
            }
        }
        this.f53183b = new C7(abstractC9148qo0.c() ? null : new C9314ro0(abstractC9148qo0));
    }

    @Override
    public final void a(final com.android.tools.r8.graph.H5 h52, com.android.tools.r8.graph.H5 h53) {
        a(h53.getReference(), new Consumer() {
            @Override
            public final void accept(Object obj) {
                C9957vg.c(com.android.tools.r8.graph.H5.this, (K70) obj);
            }
        });
    }

    public final void a(final com.android.tools.r8.graph.H5 h52, com.android.tools.r8.graph.H0 h02) {
        h02.getClass();
        if (h02 instanceof com.android.tools.r8.graph.H5) {
            a(h52, h02.H());
        } else {
            a(new Consumer() {
                @Override
                public final void accept(Object obj) {
                    C9957vg.a(com.android.tools.r8.graph.H5.this, (L70) obj);
                }
            });
        }
    }

    @Override
    public final C9957vg a(final Function function) {
        C7 c72;
        ArrayList arrayList = new ArrayList(this.f53182a.size());
        ArrayList arrayList2 = this.f53182a;
        int size = arrayList2.size();
        int i10 = 0;
        while (i10 < size) {
            Object obj = arrayList2.get(i10);
            i10++;
            arrayList.add((C6861d4) ((C6861d4) obj).a(function));
        }
        C7 c73 = this.f53183b;
        InterfaceC6217Xr0 interfaceC6217Xr0 = new InterfaceC6217Xr0() {
            @Override
            public final Object apply(Object obj2) {
                return C9957vg.a(Function.this, (C9314ro0) obj2);
            }
        };
        if (c73.b()) {
            c72 = new C7(interfaceC6217Xr0.apply(c73.a()));
        } else {
            c72 = new C7();
        }
        return new C9957vg(c72, arrayList);
    }

    public static void a(com.android.tools.r8.graph.H5 h52, L70 l70) {
        C7891jE0 c7891jE0 = new C7891jE0();
        l70.getClass();
        l70.a(h52.getReference(), c7891jE0);
    }

    public static void a(com.android.tools.r8.graph.H5 h52, K70 k70) {
        k70.getClass();
        k70.a((com.android.tools.r8.graph.J2) h52.getReference()).a(h52.getHolder().getReference());
    }

    public final void a(com.android.tools.r8.graph.D5 d52, final com.android.tools.r8.graph.H5 h52) {
        Consumer consumer = new Consumer() {
            @Override
            public final void accept(Object obj) {
                C9957vg.b(com.android.tools.r8.graph.H5.this, (K70) obj);
            }
        };
        if (d52.e0()) {
            a(consumer, d52.d0());
        } else {
            if (!f53181d && !d52.N()) {
                throw new AssertionError();
            }
            a(d52.H().getReference(), consumer);
        }
    }

    public final void a(final Consumer consumer, final com.android.tools.r8.graph.H2 h22) {
        a(new Consumer() {
            @Override
            public final void accept(Object obj) {
                L70 l70 = (L70) obj;
                l70.a(com.android.tools.r8.graph.H2.this.getType(), consumer);
            }
        });
    }

    @Override
    public final void a(final com.android.tools.r8.graph.A2 a22, final Consumer consumer) {
        a(new Consumer() {
            @Override
            public final void accept(Object obj) {
                ((L70) obj).b(com.android.tools.r8.graph.A2.this, consumer);
            }
        });
    }

    @Override
    public final void a(C4798y c4798y) {
        boolean z10 = f53181d;
        if (!z10 && this.f53184c) {
            throw new AssertionError();
        }
        if (d()) {
            if (!z10 && !d()) {
                throw new AssertionError();
            }
            ArrayList arrayList = new ArrayList(this.f53182a.size());
            ArrayList arrayList2 = this.f53182a;
            int size = arrayList2.size();
            int i10 = 0;
            while (i10 < size) {
                Object obj = arrayList2.get(i10);
                i10++;
                arrayList.add((C6694c4) ((C6861d4) obj).b());
            }
            c4798y.f38411d = new G00(arrayList);
        }
        if (e()) {
            if (!f53181d && !e()) {
                throw new AssertionError();
            }
            c4798y.f38424q = (AbstractC9148qo0) ((C9314ro0) this.f53183b.a()).b();
        }
        this.f53184c = true;
    }

    public static C9314ro0 a(Function function, C9314ro0 c9314ro0) {
        return (C9314ro0) c9314ro0.a(function);
    }

    @Override
    public final M70 a(AbstractC8194l4 abstractC8194l4) {
        if (abstractC8194l4.b()) {
            Iterator it = abstractC8194l4.a().f40366c.iterator();
            ArrayList arrayList = this.f53182a;
            int size = arrayList.size();
            int i10 = 0;
            while (i10 < size) {
                Object obj = arrayList.get(i10);
                i10++;
                ((C6861d4) obj).f41869a = (C6694c4) it.next();
            }
        } else {
            boolean z10 = f53181d;
            if (!z10 && !this.f53182a.isEmpty()) {
                throw new AssertionError();
            }
            if (!z10 && !this.f53183b.b()) {
                throw new AssertionError();
            }
        }
        return this;
    }

    @Override
    public final M70 a(final AbstractC9148qo0 abstractC9148qo0) {
        this.f53183b.a(new Consumer() {
            @Override
            public final void accept(Object obj) {
                C9957vg.a(AbstractC9148qo0.this, (C9314ro0) obj);
            }
        });
        return this;
    }

    public static void a(AbstractC9148qo0 abstractC9148qo0, C9314ro0 c9314ro0) {
        c9314ro0.f41869a = abstractC9148qo0;
    }
}
