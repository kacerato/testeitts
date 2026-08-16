package com.android.tools.r8.graph;

import com.android.tools.r8.internal.AbstractC8953pf;
import com.android.tools.r8.internal.C5417Jv0;
import com.android.tools.r8.internal.EnumC6871d70;
import java.util.ArrayList;
import java.util.Comparator;
import java.util.function.Consumer;

public final class C4685s0 extends AbstractC4592n1 {

    public final H2 f37716b;

    public final ArrayList f37717c;

    public final ArrayList f37718d;

    public final ArrayList f37719e;

    public final boolean f37720f;

    public C4685s0(H2 h22) {
        boolean b10;
        this.f37716b = h22;
        N4 n42 = h22.f36252l;
        synchronized (n42) {
            b10 = n42.b();
        }
        this.f37720f = (b10 || H2.a(h22.f36251k)) ? false : true;
        this.f37717c = new ArrayList();
        this.f37718d = new ArrayList();
        this.f37719e = new ArrayList();
        N4 b02 = h22.b0();
        Consumer consumer = new Consumer() {
            @Override
            public final void accept(Object obj) {
                C4685s0.this.a((C4516j1) obj);
            }
        };
        b02.getClass();
        b02.b(consumer, EnumC6871d70.f47286b);
        for (C4460g1 c4460g1 : h22.I0()) {
            if (!c4460g1.k0().isEmpty()) {
                this.f37719e.add(c4460g1);
            }
        }
    }

    public final void a(C4516j1 c4516j1) {
        if (!c4516j1.k0().isEmpty()) {
            this.f37717c.add(c4516j1);
        }
        if (c4516j1.f37316i.isEmpty()) {
            return;
        }
        this.f37718d.add(c4516j1);
    }

    public final ArrayList b(final C4728u5 c4728u5) {
        this.f37717c.sort(new Comparator() {
            @Override
            public final int compare(Object obj, Object obj2) {
                return C4685s0.a(AbstractC8953pf.this, (C4516j1) obj, (C4516j1) obj2);
            }
        });
        return this.f37717c;
    }

    public final ArrayList c(final C4728u5 c4728u5) {
        this.f37718d.sort(new Comparator() {
            @Override
            public final int compare(Object obj, Object obj2) {
                return C4685s0.b(AbstractC8953pf.this, (C4516j1) obj, (C4516j1) obj2);
            }
        });
        return this.f37718d;
    }

    public final boolean equals(Object obj) {
        boolean b10;
        if (!(obj instanceof C4685s0)) {
            return false;
        }
        if (!this.f37720f) {
            return super.equals(obj);
        }
        C4685s0 c4685s0 = (C4685s0) obj;
        H2 h22 = c4685s0.f37716b;
        N4 n42 = h22.f36252l;
        synchronized (n42) {
            b10 = n42.b();
        }
        if (b10 || H2.a(h22.f36251k)) {
            return false;
        }
        return this.f37716b.k0().equals(c4685s0.f37716b.k0());
    }

    public final int hashCode() {
        return this.f37720f ? this.f37716b.k0().hashCode() : super.hashCode();
    }

    public static int b(AbstractC8953pf abstractC8953pf, C4516j1 c4516j1, C4516j1 c4516j12) {
        A2 reference = c4516j1.getReference();
        A2 reference2 = c4516j12.getReference();
        reference.getClass();
        return abstractC8953pf.a(reference, reference2);
    }

    public final void a(final Consumer consumer, final Consumer consumer2, final Consumer consumer3) {
        a(this.f37716b.k0(), consumer, consumer2);
        H2 h22 = this.f37716b;
        Consumer consumer4 = new Consumer() {
            @Override
            public final void accept(Object obj) {
                C4685s0.this.a(consumer, consumer2, (C4460g1) obj);
            }
        };
        h22.getClass();
        h22.c(consumer4, EnumC6871d70.f47286b);
        this.f37716b.g(new Consumer() {
            @Override
            public final void accept(Object obj) {
                C4685s0.this.a(consumer, consumer2, consumer3, (C4516j1) obj);
            }
        });
    }

    public final void a(Consumer consumer, Consumer consumer2, C4460g1 c4460g1) {
        a(c4460g1.k0(), consumer, consumer2);
    }

    public final void a(Consumer consumer, Consumer consumer2, Consumer consumer3, C4516j1 c4516j1) {
        a(c4516j1.k0(), consumer, consumer2);
        C4823z5 U02 = c4516j1.U0();
        consumer3.accept(U02);
        for (C4723u0 c4723u0 : U02.f38467b) {
            a(c4723u0, consumer, consumer2);
        }
    }

    public static void a(C4723u0 c4723u0, Consumer consumer, Consumer consumer2) {
        consumer2.accept(c4723u0);
        for (C4666r0 c4666r0 : c4723u0.m0()) {
            consumer.accept(c4666r0);
        }
    }

    public static int a(AbstractC8953pf abstractC8953pf, C4516j1 c4516j1, C4516j1 c4516j12) {
        A2 reference = c4516j1.getReference();
        A2 reference2 = c4516j12.getReference();
        reference.getClass();
        return abstractC8953pf.a(reference, reference2);
    }

    public static int a(AbstractC8953pf abstractC8953pf, C4460g1 c4460g1, C4460g1 c4460g12) {
        C4554l1 reference = c4460g1.getReference();
        C4554l1 reference2 = c4460g12.getReference();
        reference.getClass();
        return abstractC8953pf.a(reference, reference2);
    }

    public final ArrayList a(final C4728u5 c4728u5) {
        this.f37719e.sort(new Comparator() {
            @Override
            public final int compare(Object obj, Object obj2) {
                return C4685s0.a(AbstractC8953pf.this, (C4460g1) obj, (C4460g1) obj2);
            }
        });
        return this.f37719e;
    }

    @Override
    public final void a(com.android.tools.r8.dex.X x10) {
        throw new C5417Jv0();
    }
}
