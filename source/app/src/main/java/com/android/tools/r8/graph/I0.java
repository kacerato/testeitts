package com.android.tools.r8.graph;

import com.android.tools.r8.ProgramResource;
import com.android.tools.r8.graph.H3;
import com.android.tools.r8.graph.N4;
import com.android.tools.r8.internal.AbstractC5754Pq0;
import com.android.tools.r8.internal.EnumC6871d70;
import com.android.tools.r8.internal.InterfaceC5580Mq0;
import com.android.tools.r8.internal.InterfaceC5638Nq0;
import com.android.tools.r8.origin.Origin;
import java.util.List;
import java.util.Set;
import java.util.function.Consumer;
import java.util.function.Function;
import java.util.function.Predicate;
import java.util.function.Supplier;

public final class I0 extends E0 implements InterfaceC4383c0, InterfaceC4440f0, I5, Supplier, InterfaceC5580Mq0 {

    public static final boolean f36432u = true;

    public I0(M2 m22, ProgramResource.Kind kind, Origin origin, Q q10, M2 m23, O2 o22, L2 l22, C4615o5 c4615o5, List list, List list2, List list3, C4500i3 c4500i3, List list4, H3.b bVar, C4723u0 c4723u0, InterfaceC4651q3 interfaceC4651q3, N4.a aVar, boolean z10) {
        super(l22, o22, q10, m23, m22, interfaceC4651q3, aVar, c4615o5, list, list2, list3, c4500i3, list4, bVar, c4723u0, origin, z10);
        if (f36432u || kind == ProgramResource.Kind.CF) {
            return;
        }
        throw new AssertionError((Object) ("Invalid kind " + ((Object) kind) + " for class-path class " + ((Object) m22)));
    }

    @Override
    public final InterfaceC5580Mq0 E() {
        return this;
    }

    @Override
    public final V S0() {
        return V.f36878d;
    }

    @Override
    public final void a(Consumer consumer, Consumer consumer2, Consumer consumer3) {
        consumer2.accept(this);
    }

    public final void b(Consumer consumer, C4516j1 c4516j1) {
        consumer.accept(new C4421e0(this, c4516j1));
    }

    @Override
    public final Object get() {
        return this;
    }

    public final void i(final Consumer consumer) {
        this.f36252l.b(new Consumer() {
            @Override
            public final void accept(Object obj) {
                I0.this.b(consumer, (C4516j1) obj);
            }
        }, EnumC6871d70.f47286b);
    }

    @Override
    public final I0 k() {
        return this;
    }

    @Override
    public final InterfaceC5638Nq0 m() {
        return new InterfaceC5638Nq0() {
            @Override
            public final void a(AbstractC5754Pq0 abstractC5754Pq0) {
                I0.a(abstractC5754Pq0);
            }
        };
    }

    public final String toString() {
        return this.f36245e.toString() + "(classpath class)";
    }

    @Override
    public final boolean v1() {
        return true;
    }

    @Override
    public final InterfaceC4440f0 z() {
        return this;
    }

    @Override
    public final boolean a(C4798y c4798y, E0 e02, Predicate predicate, Set set) {
        if (!set.add(getType()) || predicate.test(getType())) {
            return false;
        }
        if (!isInterface()) {
            return true;
        }
        c4798y.E().getClass();
        return false;
    }

    public static void a(AbstractC5754Pq0 abstractC5754Pq0) {
        abstractC5754Pq0.e(new C4788x8()).e(new Function() {
            @Override
            public final Object apply(Object obj) {
                return ((I0) obj).a1();
            }
        }).e(new Function() {
            @Override
            public final Object apply(Object obj) {
                return ((I0) obj).R0();
            }
        }).e(new Function() {
            @Override
            public final Object apply(Object obj) {
                return ((I0) obj).getAccessFlags();
            }
        }).j(new Function() {
            @Override
            public final Object apply(Object obj) {
                return ((I0) obj).Z0();
            }
        }).j(new Function() {
            @Override
            public final Object apply(Object obj) {
                return ((I0) obj).U0();
            }
        }).h(new Function() {
            @Override
            public final Object apply(Object obj) {
                return ((I0) obj).V0();
            }
        }).e(new Function() {
            @Override
            public final Object apply(Object obj) {
                return ((I0) obj).k0();
            }
        }).a(new Predicate() {
            @Override
            public final boolean test(Object obj) {
                return I0.a((I0) obj);
            }
        }).h(new Function() {
            @Override
            public final Object apply(Object obj) {
                return ((I0) obj).y0();
            }
        }).h(new Function() {
            @Override
            public final Object apply(Object obj) {
                return ((I0) obj).A0();
            }
        });
    }

    public static boolean a(I0 i02) {
        return i02.f36259s == H3.b.f();
    }
}
