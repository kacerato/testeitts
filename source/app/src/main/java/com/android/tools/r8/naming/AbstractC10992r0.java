package com.android.tools.r8.naming;

import com.android.tools.r8.graph.C4425e4;
import com.android.tools.r8.graph.C4460g1;
import com.android.tools.r8.graph.C4503i6;
import com.android.tools.r8.graph.C4516j1;
import com.android.tools.r8.graph.C4554l1;
import com.android.tools.r8.graph.C4724u1;
import com.android.tools.r8.graph.C4798y;
import com.android.tools.r8.internal.AbstractC5513Ll0;
import com.android.tools.r8.internal.AbstractC6037Un;
import com.android.tools.r8.internal.C4932Bl;
import com.android.tools.r8.internal.C7037e70;
import com.android.tools.r8.internal.C8570nJ;
import com.android.tools.r8.shaking.C11245i;
import java.util.Arrays;
import java.util.Collection;
import java.util.Iterator;
import java.util.Set;
import java.util.function.Function;
import java.util.function.IntFunction;
import java.util.function.Predicate;

public abstract class AbstractC10992r0 {

    public static final boolean f56045a = true;

    public static boolean a(com.android.tools.r8.graph.L2 l22, com.android.tools.r8.graph.L2 l23) {
        return l23 == l22;
    }

    public abstract com.android.tools.r8.graph.L2 a(com.android.tools.r8.graph.A2 a22);

    public abstract com.android.tools.r8.graph.L2 a(com.android.tools.r8.graph.M2 m22);

    public abstract com.android.tools.r8.graph.L2 a(C4425e4 c4425e4, C8570nJ c8570nJ);

    public abstract com.android.tools.r8.graph.L2 a(C4554l1 c4554l1);

    public abstract String a(String str);

    public boolean b() {
        return this instanceof C7037e70;
    }

    public abstract com.android.tools.r8.graph.L2 c(com.android.tools.r8.graph.M2 m22);

    public abstract AbstractC10992r0 c();

    public final String d(com.android.tools.r8.graph.M2 m22) {
        if (f56045a || m22.I0() || m22.E0()) {
            return C4932Bl.a(c(m22).toString());
        }
        throw new AssertionError();
    }

    public com.android.tools.r8.graph.L2 e(com.android.tools.r8.graph.M2 m22) {
        return null;
    }

    public final com.android.tools.r8.graph.L2 a(com.android.tools.r8.graph.D0 d02, final C4798y c4798y) {
        if (!c4798y.f().i()) {
            return d02.f36212e;
        }
        C4798y<C11245i> M10 = c4798y.M();
        AbstractC6037Un a10 = M10.f().a(d02, M10);
        if (a10.f45165b.isEmpty()) {
            return d02.f36212e;
        }
        final com.android.tools.r8.graph.L2 t02 = a(c4798y.b(), ((com.android.tools.r8.graph.H0) a10.f45165b.values().iterator().next()).getReference()).t0();
        if (f56045a || a10.stream().map(new A2()).map(new Function() {
            @Override
            public final Object apply(Object obj) {
                return AbstractC10992r0.this.a(c4798y, (com.android.tools.r8.graph.A2) obj);
            }
        }).map(new C4503i6()).allMatch(new Predicate() {
            @Override
            public final boolean test(Object obj) {
                return AbstractC10992r0.a(com.android.tools.r8.graph.L2.this, (com.android.tools.r8.graph.L2) obj);
            }
        })) {
            return t02;
        }
        throw new AssertionError();
    }

    public com.android.tools.r8.graph.L2 b(com.android.tools.r8.graph.M2 m22) {
        if (f56045a || m22.I0()) {
            return a(m22);
        }
        throw new AssertionError();
    }

    public final com.android.tools.r8.graph.M2 a(C4724u1 c4724u1, com.android.tools.r8.graph.M2 m22) {
        if (m22.P0() || m22.S0()) {
            return m22;
        }
        if (m22.E0()) {
            return m22.a(c4724u1, a(c4724u1, m22.a(c4724u1)));
        }
        if (f56045a || m22.I0()) {
            return c4724u1.c(b(m22));
        }
        throw new AssertionError();
    }

    public final com.android.tools.r8.graph.A2 a(C4798y c4798y, com.android.tools.r8.graph.A2 a22) {
        return a(c4798y.b(), a22);
    }

    public final com.android.tools.r8.graph.A2 a(C4724u1 c4724u1, com.android.tools.r8.graph.A2 a22) {
        return c4724u1.a(a(c4724u1, a22.f38297f), a(a22.f36127i, c4724u1), a(a22));
    }

    public final com.android.tools.r8.graph.I2 a(com.android.tools.r8.graph.I2 i22, final C4724u1 c4724u1) {
        return c4724u1.a(a(c4724u1, i22.f36440e), (com.android.tools.r8.graph.M2[]) Arrays.stream(i22.f36441f.f36675b).map(new Function() {
            @Override
            public final Object apply(Object obj) {
                return AbstractC10992r0.this.a(c4724u1, (com.android.tools.r8.graph.M2) obj);
            }
        }).toArray(new IntFunction() {
            @Override
            public final Object apply(int i10) {
                return AbstractC10992r0.a(i10);
            }
        }));
    }

    public static com.android.tools.r8.graph.M2[] a(int i10) {
        return new com.android.tools.r8.graph.M2[i10];
    }

    public static AbstractC10992r0 a() {
        return new C10983p0();
    }

    public final void a(Collection collection, C4724u1 c4724u1) {
        Set c10 = AbstractC5513Ll0.c();
        Iterator<E> it = collection.iterator();
        while (it.hasNext()) {
            com.android.tools.r8.graph.H2 h22 = (com.android.tools.r8.graph.H2) it.next();
            com.android.tools.r8.graph.M2 a10 = a(c4724u1, h22.f36245e);
            boolean add = c10.add(a10);
            if (!f56045a && !add) {
                throw new AssertionError((Object) ("Duplicate definition of type `" + a10.j0() + "`"));
            }
            Iterator<C4460g1> it2 = h22.I0().iterator();
            while (it2.hasNext()) {
                C4554l1 reference = it2.next().getReference();
                C4554l1 a11 = c4724u1.a(a(c4724u1, reference.f38297f), a(c4724u1, reference.f37449i), a(reference));
                boolean add2 = c10.add(a11);
                if (!f56045a && !add2) {
                    throw new AssertionError((Object) ("Duplicate definition of field `" + a11.j0() + "`"));
                }
            }
            Iterator<C4516j1> it3 = h22.z1().iterator();
            while (it3.hasNext()) {
                com.android.tools.r8.graph.A2 a12 = a(c4724u1, it3.next().getReference());
                boolean add3 = c10.add(a12);
                if (!f56045a && !add3) {
                    throw new AssertionError((Object) ("Duplicate definition of method `" + a12.j0() + "`"));
                }
            }
        }
    }
}
