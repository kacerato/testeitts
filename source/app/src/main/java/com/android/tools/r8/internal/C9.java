package com.android.tools.r8.internal;

import java.util.IdentityHashMap;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.function.BiFunction;

public final class C9 implements InterfaceC7628hi {

    public static final boolean f39137c = true;

    public final IdentityHashMap f39138a;

    public final com.android.tools.r8.graph.G f39139b;

    public C9(IdentityHashMap identityHashMap, com.android.tools.r8.graph.G g10) {
        this.f39138a = identityHashMap;
        this.f39139b = g10;
    }

    @Override
    public final AbstractC6333Zs0 a(Object obj, Object obj2, BiFunction biFunction) {
        return AbstractC6495at0.a(obj2, ((AbstractC7209f9) obj).f47884e, biFunction);
    }

    @Override
    public final AbstractC6333Zs0 b(Object obj, Object obj2, BiFunction biFunction) {
        return AbstractC6495at0.a(obj2, ((AbstractC7209f9) obj).f47883d, biFunction);
    }

    @Override
    public final AbstractC6333Zs0 a(Object obj, InterfaceC7495gt0 interfaceC7495gt0, Object obj2) {
        return a((AbstractC7209f9) obj, interfaceC7495gt0, obj2);
    }

    @Override
    public final AbstractC6333Zs0 a(Object obj, BiFunction biFunction, D1 d12) {
        AbstractC7209f9 abstractC7209f9 = (AbstractC7209f9) obj;
        AbstractC6333Zs0 c6276Ys0 = new C6276Ys0(d12);
        for (int i10 = abstractC7209f9.f47880a; i10 <= abstractC7209f9.f47882c; i10++) {
            c6276Ys0 = (AbstractC6333Zs0) biFunction.apply((W9) this.f39139b.f36305h.get(i10), c6276Ys0.b().e());
            if (c6276Ys0.c()) {
                return c6276Ys0;
            }
        }
        return c6276Ys0;
    }

    public final AbstractC6333Zs0 a(BiFunction biFunction, W9 w92, Object obj) {
        if (f39137c || this.f39138a.containsKey(w92)) {
            return (AbstractC6333Zs0) biFunction.apply((AbstractC7209f9) this.f39138a.get(w92), obj);
        }
        throw new AssertionError();
    }

    @Override
    public final Object a() {
        W9 w92 = (W9) this.f39139b.f36305h.get(0);
        if (f39137c || this.f39138a.containsKey(w92)) {
            return (AbstractC7209f9) this.f39138a.get(w92);
        }
        throw new AssertionError();
    }

    public static AbstractC6333Zs0 a(AbstractC7209f9 abstractC7209f9, final InterfaceC7495gt0 interfaceC7495gt0, Object obj) {
        LinkedHashMap linkedHashMap = abstractC7209f9.f47885f;
        InterfaceC7495gt0 interfaceC7495gt02 = new InterfaceC7495gt0() {
            @Override
            public final Object a(Object obj2, Object obj3, Object obj4) {
                return C9.a(InterfaceC7495gt0.this, (com.android.tools.r8.graph.M2) obj2, (AbstractC7209f9) obj3, obj4);
            }
        };
        AbstractC6333Zs0 c6276Ys0 = new C6276Ys0(obj);
        for (Map.Entry entry : linkedHashMap.entrySet()) {
            c6276Ys0 = (AbstractC6333Zs0) interfaceC7495gt02.a(entry.getKey(), entry.getValue(), c6276Ys0.b().f());
            if (c6276Ys0.c()) {
                break;
            }
        }
        return c6276Ys0;
    }

    @Override
    public final AbstractC6333Zs0 c(AbstractC7209f9 abstractC7209f9, final BiFunction biFunction) {
        com.android.tools.r8.graph.G g10 = this.f39139b;
        abstractC7209f9.getClass();
        W9 w92 = g10.E0().get(abstractC7209f9.f47882c);
        com.android.tools.r8.graph.G g11 = this.f39139b;
        int i10 = abstractC7209f9.f47882c + 1;
        return w92.a(new BiFunction() {
            @Override
            public final Object apply(Object obj, Object obj2) {
                return C9.this.a(biFunction, (W9) obj, obj2);
            }
        }, i10 < g11.E0().size() ? g11.E0().get(i10) : null, (H9) null);
    }

    public static AbstractC6333Zs0 a(InterfaceC7495gt0 interfaceC7495gt0, com.android.tools.r8.graph.M2 m22, AbstractC7209f9 abstractC7209f9, Object obj) {
        return (AbstractC6333Zs0) interfaceC7495gt0.a(abstractC7209f9, m22, obj);
    }
}
