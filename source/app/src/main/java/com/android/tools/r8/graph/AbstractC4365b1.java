package com.android.tools.r8.graph;

import java.util.function.BiFunction;
import java.util.function.Function;
import java.util.function.Predicate;
import java.util.stream.Stream;

public abstract class AbstractC4365b1 extends AbstractC4592n1 {

    public static final boolean f37065c = true;

    public C4723u0 f37066b;

    public AbstractC4365b1(C4723u0 c4723u0) {
        if (!f37065c && c4723u0 == null) {
            throw new AssertionError((Object) "Should use DexAnnotationSet.THE_EMPTY_ANNOTATIONS_SET");
        }
        this.f37066b = c4723u0;
    }

    public static Stream b(Stream stream, final Function function) {
        Predicate predicate = new Predicate() {
            @Override
            public final boolean test(Object obj) {
                return ((AbstractC4365b1) obj).v0();
            }
        };
        return stream.filter(predicate).map(new Function() {
            @Override
            public final Object apply(Object obj) {
                Object apply;
                apply = Function.this.apply(((AbstractC4365b1) obj).o0());
                return apply;
            }
        });
    }

    public M2 S() {
        return s0() ? l0().f36245e : n0().B0();
    }

    public final C4666r0 a(BiFunction biFunction, C4666r0 c4666r0) {
        return (C4666r0) biFunction.apply(c4666r0, EnumC4629p0.a(getReference()));
    }

    public H2 d0() {
        return null;
    }

    public boolean e0() {
        return false;
    }

    public abstract AbstractC4458g getAccessFlags();

    public abstract J2 getReference();

    public C4723u0 k0() {
        return this.f37066b;
    }

    public E0 l0() {
        return null;
    }

    public C4460g1 m0() {
        return null;
    }

    public AbstractC4479h1 n0() {
        return null;
    }

    public C4516j1 o0() {
        return null;
    }

    public final void p0() {
        this.f37066b = C4723u0.l0();
    }

    public final boolean q0() {
        return !k0().isEmpty();
    }

    public boolean r0() {
        return q0();
    }

    public boolean s0() {
        return false;
    }

    public boolean t0() {
        return this instanceof C4460g1;
    }

    public boolean u0() {
        return false;
    }

    public boolean v0() {
        return false;
    }

    public abstract boolean w0();

    public abstract boolean x0();

    public void y() {
        this.f37066b = C4723u0.l0();
    }

    public void a(final BiFunction biFunction) {
        this.f37066b = k0().a(new Function() {
            @Override
            public final Object apply(Object obj) {
                return AbstractC4365b1.this.a(biFunction, (C4666r0) obj);
            }
        });
    }

    public static Stream a(Stream stream, final Function function) {
        Predicate predicate = new Predicate() {
            @Override
            public final boolean test(Object obj) {
                return ((AbstractC4365b1) obj).t0();
            }
        };
        return stream.filter(predicate).map(new Function() {
            @Override
            public final Object apply(Object obj) {
                Object apply;
                apply = Function.this.apply(((AbstractC4365b1) obj).m0());
                return apply;
            }
        });
    }
}
