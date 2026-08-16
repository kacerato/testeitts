package com.android.tools.r8.internal;

import com.android.tools.r8.graph.C4798y;
import java.util.AbstractMap;
import java.util.function.BiConsumer;
import java.util.function.BiFunction;
import java.util.function.Function;
import java.util.function.Predicate;

public abstract class AbstractC10434yX {

    public static final boolean f54039b = true;

    public final AbstractMap f54040a;

    public AbstractC10434yX(AbstractMap abstractMap) {
        if (!f54039b && !abstractMap.values().stream().noneMatch(new Predicate() {
            @Override
            public final boolean test(Object obj) {
                return ((InterfaceC10100wX) obj).g();
            }
        })) {
            throw new AssertionError();
        }
        this.f54040a = abstractMap;
    }

    public abstract Object a(com.android.tools.r8.graph.H5 h52);

    public final void b(final C4798y c4798y, final Object obj, final InterfaceC10100wX interfaceC10100wX) {
        if (interfaceC10100wX.isUnknown()) {
            this.f54040a.put(obj, interfaceC10100wX);
        } else {
            this.f54040a.compute(obj, new BiFunction() {
                @Override
                public final Object apply(Object obj2, Object obj3) {
                    return AbstractC10434yX.this.a(interfaceC10100wX, c4798y, obj, obj2, (InterfaceC10100wX) obj3);
                }
            });
        }
    }

    public abstract com.android.tools.r8.graph.F2 b(Object obj);

    public final InterfaceC10100wX a(InterfaceC10100wX interfaceC10100wX, C4798y c4798y, Object obj, Object obj2, InterfaceC10100wX interfaceC10100wX2) {
        InterfaceC10100wX a10;
        if (interfaceC10100wX2 == null) {
            a10 = interfaceC10100wX.a();
        } else {
            a10 = interfaceC10100wX2.a(c4798y, b(obj), interfaceC10100wX, AbstractC4939Bo0.f39020a);
        }
        if (f54039b || !a10.g()) {
            return a10;
        }
        throw new AssertionError();
    }

    public final void a(final C4798y c4798y, final com.android.tools.r8.graph.A2 a22, final Function function, final C8659ns0 c8659ns0) {
        this.f54040a.compute(a22, new BiFunction() {
            @Override
            public final Object apply(Object obj, Object obj2) {
                return AbstractC10434yX.this.a(function, c8659ns0, c4798y, a22, obj, (InterfaceC10100wX) obj2);
            }
        });
    }

    public final InterfaceC10100wX a(Function function, C8659ns0 c8659ns0, C4798y c4798y, Object obj, Object obj2, InterfaceC10100wX interfaceC10100wX) {
        if (interfaceC10100wX == null) {
            InterfaceC10100wX interfaceC10100wX2 = (InterfaceC10100wX) function.apply(C9371s7.f52282a);
            if (interfaceC10100wX2.g()) {
                return null;
            }
            return interfaceC10100wX2;
        }
        boolean z10 = f54039b;
        if (!z10 && interfaceC10100wX.g()) {
            throw new AssertionError();
        }
        c8659ns0.b("Join temporary method state");
        InterfaceC10100wX a10 = interfaceC10100wX.a(c4798y, b(obj), function);
        if (!z10 && a10.g()) {
            throw new AssertionError();
        }
        c8659ns0.d();
        return a10;
    }

    public final void a(final C4798y c4798y, AX ax) {
        ax.f54040a.forEach(new BiConsumer() {
            @Override
            public final void accept(Object obj, Object obj2) {
                AbstractC10434yX.this.b(c4798y, obj, (InterfaceC10100wX) obj2);
            }
        });
    }

    public final void a(BiConsumer biConsumer) {
        this.f54040a.forEach(biConsumer);
    }

    public InterfaceC10100wX a(Object obj) {
        return (InterfaceC10100wX) this.f54040a.getOrDefault(obj, C9371s7.f52282a);
    }

    public final void a(com.android.tools.r8.graph.H5 h52, InterfaceC10100wX interfaceC10100wX) {
        Object a10 = a(h52);
        if (interfaceC10100wX.g()) {
            this.f54040a.remove(a10);
        } else {
            this.f54040a.put(a10, interfaceC10100wX);
        }
    }
}
