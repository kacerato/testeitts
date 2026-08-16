package com.android.tools.r8.internal;

import com.android.tools.r8.graph.C4798y;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import java.util.function.BiConsumer;
import java.util.function.BiFunction;
import java.util.function.Function;
import java.util.function.IntFunction;
import java.util.function.Supplier;

public final class C8926pU extends AbstractC8759oU {

    public static final boolean f51537f = true;

    public C8926pU(AbstractC5308Hz abstractC5308Hz, IntFunction intFunction, IntFunction intFunction2) {
        super(abstractC5308Hz, intFunction, intFunction2);
    }

    public static C8926pU a(AbstractC5308Hz abstractC5308Hz) {
        return new C8926pU(abstractC5308Hz, new IntFunction() {
            @Override
            public final Object apply(int i10) {
                return C7541h80.a(i10);
            }
        }, new IntFunction() {
            @Override
            public final Object apply(int i10) {
                return new ConcurrentHashMap(i10);
            }
        });
    }

    public final Object a(final com.android.tools.r8.graph.H5 h52, final Function function, AbstractC5308Hz abstractC5308Hz) {
        if (!f51537f && !AbstractC8759oU.f51257e && this.f51260c != abstractC5308Hz) {
            throw new AssertionError();
        }
        return ((Map) this.f51261d).computeIfAbsent(h52.getReference(), TU.a(new Supplier() {
            @Override
            public final Object get() {
                Object apply;
                apply = Function.this.apply(h52);
                return apply;
            }
        }));
    }

    public final C8926pU a(final BiFunction biFunction, final AbstractC5308Hz abstractC5308Hz) {
        if (abstractC5308Hz == this.f51260c) {
            return this;
        }
        final Map map = (Map) this.f51259b.apply(((Map) this.f51261d).size());
        ((Map) this.f51261d).forEach(new BiConsumer() {
            @Override
            public final void accept(Object obj, Object obj2) {
                C8926pU.this.a(abstractC5308Hz, biFunction, map, (com.android.tools.r8.graph.A2) obj, obj2);
            }
        });
        this.f51261d = map;
        this.f51260c = abstractC5308Hz;
        return this;
    }

    public final void a(AbstractC5308Hz abstractC5308Hz, BiFunction biFunction, Map map, com.android.tools.r8.graph.A2 a22, Object obj) {
        com.android.tools.r8.graph.A2 d10 = abstractC5308Hz.d(this.f51260c, a22);
        Object apply = biFunction.apply(obj, this.f51260c);
        if (!f51537f && map.containsKey(d10)) {
            throw new AssertionError();
        }
        map.put(d10, apply);
    }

    public final C7541h80 a(final C4798y c4798y, final Function function) {
        if (!f51537f) {
            AbstractC5308Hz v10 = c4798y.v();
            if (!AbstractC8759oU.f51257e && this.f51260c != v10) {
                throw new AssertionError();
            }
        }
        final C7541h80 c7541h80 = (C7541h80) this.f51258a.apply(((Map) this.f51261d).size());
        ((Map) this.f51261d).forEach(new BiConsumer() {
            @Override
            public final void accept(Object obj, Object obj2) {
                C8926pU.a(C4798y.this, c7541h80, function, (com.android.tools.r8.graph.A2) obj, obj2);
            }
        });
        return c7541h80;
    }

    public static void a(C4798y c4798y, C7541h80 c7541h80, Function function, com.android.tools.r8.graph.A2 a22, Object obj) {
        com.android.tools.r8.graph.H2 a10 = com.android.tools.r8.graph.H2.a(c4798y.g(a22.s0()));
        com.android.tools.r8.graph.H5 e10 = a10 != null ? a10.e(a22) : null;
        if (e10 != null) {
            Object apply = function.apply(obj);
            c7541h80.getClass();
            c7541h80.f43368b.put(new C7333fv(C7374g80.f48192a, e10), apply);
        } else if (!f51537f) {
            throw new AssertionError();
        }
    }
}
