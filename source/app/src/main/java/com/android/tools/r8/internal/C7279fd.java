package com.android.tools.r8.internal;

import com.android.tools.r8.graph.C4460g1;
import com.android.tools.r8.graph.C4554l1;
import com.android.tools.r8.graph.C4724u1;
import com.android.tools.r8.graph.C4798y;
import java.util.ArrayList;
import java.util.List;
import java.util.Objects;
import java.util.Set;
import java.util.function.BiConsumer;
import java.util.function.Predicate;

public final class C7279fd implements InterfaceC7446gd {

    public static final boolean f48023f = true;

    public final C4798y f48024a;

    public final AA f48025b;

    public final C10048wA f48026c;

    public C4460g1 f48027d;

    public final Set f48028e = AbstractC5513Ll0.c();

    public C7279fd(C4798y c4798y, C10048wA c10048wA, AA aa2) {
        this.f48024a = c4798y;
        this.f48025b = aa2;
        this.f48026c = c10048wA;
    }

    public static boolean c(C4460g1 c4460g1) {
        return !c4460g1.f37202g.e();
    }

    @Override
    public final void a(C4460g1 c4460g1) {
        this.f48027d = c4460g1;
    }

    public final C4460g1 b(C4460g1 c4460g1, Set set) {
        C4460g1 c4460g12;
        Predicate negate;
        a(c4460g1, set);
        if (c(c4460g1, set)) {
            C4798y c4798y = this.f48024a;
            com.android.tools.r8.graph.M2 a10 = com.android.tools.r8.graph.P2.a(c4798y, com.android.tools.r8.graph.P2.a(new C9406sK(AbstractC6114Vx.b(C9073qK.b(c4460g1), set), new InterfaceC5422Jy() {
                @Override
                public final Object apply(Object obj) {
                    return ((C4460g1) obj).getType();
                }
            }), c4798y));
            C4798y c4798y2 = this.f48024a;
            C4554l1 reference = c4460g1.getReference();
            c4460g12 = c4460g1.a(c4798y2, this.f48024a.b().a(reference.f38297f, a10, reference.f38298g), C6628bi.b());
        } else {
            c4460g12 = c4460g1;
        }
        if (this.f48028e.contains(c4460g12.getReference())) {
            C4798y c4798y3 = this.f48024a;
            C4724u1 b10 = c4798y3.b();
            com.android.tools.r8.graph.M2 B02 = c4460g12.B0();
            com.android.tools.r8.graph.M2 type = c4460g12.getType();
            String l22 = c4460g12.C0().toString();
            final Set set2 = this.f48028e;
            Objects.requireNonNull(set2);
            negate = new Predicate() {
                @Override
                public final boolean test(Object obj) {
                    return Set.this.contains((C4554l1) obj);
                }
            }.negate();
            c4460g12 = c4460g1.a(c4798y3, b10.a(B02, type, l22, negate), C6628bi.b());
        }
        this.f48026c.a(new C9406sK(AbstractC6114Vx.b(set, C9073qK.b(c4460g1)), new InterfaceC5422Jy() {
            @Override
            public final Object apply(Object obj) {
                return ((C4460g1) obj).getReference();
            }
        }), c4460g12.getReference(), c4460g1.getReference());
        return c4460g12;
    }

    @Override
    public final C4460g1[] a() {
        if (!f48023f && !this.f48025b.g()) {
            throw new AssertionError();
        }
        final ArrayList arrayList = new ArrayList();
        C4460g1 c4460g1 = this.f48027d;
        if (c4460g1 != null) {
            arrayList.add(c4460g1);
            this.f48028e.add(this.f48027d.getReference());
        }
        AA aa2 = this.f48025b;
        if (!AA.f38552f && !aa2.g()) {
            throw new AssertionError();
        }
        aa2.f38556e.a(new BiConsumer() {
            @Override
            public final void accept(Object obj, Object obj2) {
                C7279fd.this.a(arrayList, (Set) obj, (C4460g1) obj2);
            }
        });
        return (C4460g1[]) arrayList.toArray(C4460g1.f37200o);
    }

    public static boolean c(final C4460g1 c4460g1, Set set) {
        return AbstractC9907vK.b(set, new V60() {
            @Override
            public final boolean apply(Object obj) {
                return C7279fd.a(C4460g1.this, (C4460g1) obj);
            }
        });
    }

    public final void a(List list, Set set, C4460g1 c4460g1) {
        C4460g1 b10 = b(c4460g1, set);
        list.add(b10);
        this.f48028e.add(b10.getReference());
    }

    public static void a(C4460g1 c4460g1, Set set) {
        if (c4460g1.f37202g.o() && AbstractC9907vK.b(set, new V60() {
            @Override
            public final boolean apply(Object obj) {
                return C7279fd.b((C4460g1) obj);
            }
        })) {
            c4460g1.getAccessFlags().f37197c &= -4097;
        }
        if (c4460g1.f37202g.e() && AbstractC9907vK.b(set, new V60() {
            @Override
            public final boolean apply(Object obj) {
                return C7279fd.c((C4460g1) obj);
            }
        })) {
            c4460g1.getAccessFlags().a();
        }
    }

    public static boolean a(C4460g1 c4460g1, C4460g1 c4460g12) {
        return c4460g12.getType() != c4460g1.getType();
    }

    public static boolean b(C4460g1 c4460g1) {
        return !c4460g1.f37202g.o();
    }
}
