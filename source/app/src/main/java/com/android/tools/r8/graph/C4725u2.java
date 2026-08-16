package com.android.tools.r8.graph;

import com.android.tools.r8.ProgramResource;
import com.android.tools.r8.graph.H3;
import com.android.tools.r8.graph.N4;
import com.android.tools.r8.internal.AbstractC6483ap0;
import com.android.tools.r8.origin.Origin;
import java.util.List;
import java.util.Set;
import java.util.function.Consumer;
import java.util.function.Predicate;
import java.util.function.Supplier;

public class C4725u2 extends E0 implements InterfaceC4784x4, Supplier<C4725u2> {

    public static final boolean f38268u = true;

    public C4725u2(M2 m22, ProgramResource.Kind kind, Origin origin, Q q10, M2 m23, O2 o22, L2 l22, C4615o5 c4615o5, List list, List list2, List list3, C4500i3 c4500i3, List list4, H3.b bVar, C4723u0 c4723u0, InterfaceC4651q3 interfaceC4651q3, N4.a aVar, boolean z10) {
        super(l22, o22, q10, m23, m22, interfaceC4651q3, aVar, c4615o5, list, list2, list3, c4500i3, list4, bVar, c4723u0, origin, z10);
        boolean z11 = f38268u;
        if (!z11 && !AbstractC6483ap0.a(I0()).allMatch(new Predicate() {
            @Override
            public final boolean test(Object obj) {
                return C4725u2.d((C4460g1) obj);
            }
        })) {
            throw new AssertionError();
        }
        if (!z11 && !AbstractC6483ap0.a(z1()).allMatch(new Predicate() {
            @Override
            public final boolean test(Object obj) {
                return C4725u2.d((C4516j1) obj);
            }
        })) {
            throw new AssertionError();
        }
        for (C4460g1 c4460g1 : A1()) {
            if (!C4460g1.f37201p && !c4460g1.f37202g.n()) {
                throw new AssertionError();
            }
            c4460g1.f37203h = null;
        }
        if (f38268u || kind == ProgramResource.Kind.CF) {
            return;
        }
        throw new AssertionError((Object) ("Invalid kind " + ((Object) kind) + " for library-path class " + ((Object) m22)));
    }

    public static boolean d(C4516j1 c4516j1) {
        boolean z10 = f38268u;
        if (!z10 && c4516j1.f1()) {
            throw new AssertionError();
        }
        if (!z10) {
            c4516j1.L0();
            if (c4516j1.f37314g.h()) {
                throw new AssertionError();
            }
        }
        if (z10 || !c4516j1.b1()) {
            return true;
        }
        throw new AssertionError();
    }

    @Override
    public final C4725u2 G() {
        return this;
    }

    @Override
    public final V S0() {
        return V.f36879e;
    }

    @Override
    public final void a(Consumer consumer, Consumer consumer2, Consumer consumer3) {
        consumer3.accept(this);
    }

    @Override
    public final boolean f0() {
        return true;
    }

    @Override
    public final C4725u2 get() {
        return this;
    }

    @Override
    public final String j0() {
        return this.f36245e.j0() + "(library class)";
    }

    public final String toString() {
        return this.f36245e.toString() + "(library class)";
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
        if (set.add(getType()) && !predicate.test(getType())) {
            if (isInterface()) {
                return c4798y.E().f50585B;
            }
            if (!c4798y.b().f37838C6.contains(this.f36245e)) {
                return true;
            }
        }
        return false;
    }

    public static boolean d(C4460g1 c4460g1) {
        boolean z10 = f38268u;
        if (!z10 && c4460g1.G0()) {
            throw new AssertionError();
        }
        if (!z10 && c4460g1.w0() && c4460g1.L0()) {
            throw new AssertionError();
        }
        return true;
    }
}
