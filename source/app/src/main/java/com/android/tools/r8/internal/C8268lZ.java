package com.android.tools.r8.internal;

import com.android.tools.r8.graph.AbstractC4744v2;
import com.android.tools.r8.graph.C4554l1;
import com.android.tools.r8.graph.C4798y;
import java.util.Map;
import java.util.Objects;
import java.util.function.Function;

public class C8268lZ extends AbstractC5276Hj {

    public static final C5412Jt f49994j = new C5412Jt();

    public static final C5412Jt f49995k = new C5412Jt();

    public static final C5412Jt f49996l = new C5412Jt();

    public static final boolean f49997m = true;

    public final InterfaceC8701o6 f49998f;

    public final Function f49999g;

    public final InterfaceC8033k6 f50000h;

    public final InterfaceC8033k6 f50001i;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C8268lZ(C4798y c4798y, InterfaceC8701o6 interfaceC8701o6, final Map map, InterfaceC8033k6 interfaceC8033k6, InterfaceC8033k6 interfaceC8033k62) {
        super(c4798y);
        Objects.requireNonNull(map);
        Function function = new Function() {
            @Override
            public final Object apply(Object obj) {
                return (com.android.tools.r8.graph.A2) Map.this.get((com.android.tools.r8.graph.A2) obj);
            }
        };
        this.f49998f = interfaceC8701o6;
        this.f49999g = function;
        this.f50000h = interfaceC8033k6;
        this.f50001i = interfaceC8033k62;
        if (!f49997m && interfaceC8033k6.isEmpty() && map.isEmpty() && interfaceC8701o6.isEmpty() && !n()) {
            throw new AssertionError();
        }
    }

    public com.android.tools.r8.graph.proto.j a(com.android.tools.r8.graph.proto.j jVar, com.android.tools.r8.graph.A2 a22, com.android.tools.r8.graph.A2 a23) {
        return jVar;
    }

    @Override
    public final Iterable b(com.android.tools.r8.graph.M2 m22) {
        Iterable g10 = g(m22);
        final AbstractC5308Hz abstractC5308Hz = this.f43777d;
        Objects.requireNonNull(abstractC5308Hz);
        return C9073qK.a(g10, new Function() {
            @Override
            public final Object apply(Object obj) {
                return AbstractC5308Hz.this.b((com.android.tools.r8.graph.M2) obj);
            }
        });
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public final C4554l1 c(C4554l1 c4554l1) {
        Object c10 = this.f49998f.c(c4554l1);
        if (c10 != 0) {
            c4554l1 = c10;
        }
        return c4554l1;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public com.android.tools.r8.graph.M2 d(com.android.tools.r8.graph.M2 m22) {
        Object b10 = this.f50000h.b(m22);
        if (b10 != 0) {
            m22 = b10;
        }
        return m22;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public com.android.tools.r8.graph.M2 f(com.android.tools.r8.graph.M2 m22) {
        Object c10 = this.f50000h.c(m22);
        if (c10 != 0) {
            m22 = c10;
        }
        return m22;
    }

    public Iterable g(com.android.tools.r8.graph.M2 m22) {
        return C9073qK.b(f(m22));
    }

    public boolean n() {
        return this instanceof HI;
    }

    public final String toString() {
        return getClass().getName();
    }

    public EnumC8071kK a(com.android.tools.r8.graph.A2 a22, com.android.tools.r8.graph.A2 a23, com.android.tools.r8.graph.A2 a24, EnumC8071kK enumC8071kK) {
        return enumC8071kK;
    }

    @Override
    public boolean g(AbstractC5308Hz abstractC5308Hz, com.android.tools.r8.graph.A2 a22) {
        if (f49997m || abstractC5308Hz == this || this.f43777d.g(abstractC5308Hz, d(a22))) {
            return true;
        }
        throw new AssertionError();
    }

    @Override
    public NW a(NW nw, com.android.tools.r8.graph.A2 a22, AbstractC5308Hz abstractC5308Hz) {
        if (nw.a()) {
            com.android.tools.r8.graph.E e10 = (AbstractC4744v2) this.f49999g.apply(nw.f41112b);
            if (e10 == null) {
                e10 = nw.f41112b;
            }
            com.android.tools.r8.graph.A2 a23 = (com.android.tools.r8.graph.A2) e10;
            AbstractC4744v2 abstractC4744v2 = nw.f41111a;
            com.android.tools.r8.graph.A2 a10 = abstractC4744v2 == nw.f41112b ? a23 : a23.a(d(((com.android.tools.r8.graph.A2) abstractC4744v2).s0()), this.f43776c);
            AbstractC9530t40 abstractC9530t40 = AbstractC9530t40.f52519c;
            com.android.tools.r8.graph.proto.j jVar = com.android.tools.r8.graph.proto.j.f37620d;
            return new NW(a10, a23, abstractC9530t40, a(a10, a23, (com.android.tools.r8.graph.A2) nw.f41111a, nw.f42623d), a(nw.f42624e, (com.android.tools.r8.graph.A2) nw.f41112b, a23)).a(this);
        }
        com.android.tools.r8.graph.A2 a24 = (com.android.tools.r8.graph.A2) this.f49999g.apply((com.android.tools.r8.graph.A2) nw.f41111a);
        if (a24 == null) {
            a24 = (com.android.tools.r8.graph.A2) nw.f41111a;
        }
        com.android.tools.r8.graph.A2 a25 = a24;
        com.android.tools.r8.graph.proto.j a11 = a(nw.f42624e, (com.android.tools.r8.graph.A2) nw.f41111a, a25);
        AbstractC4744v2 abstractC4744v22 = nw.f41111a;
        if (a25 == abstractC4744v22 && a11 == nw.f42624e) {
            return nw.a(this);
        }
        AbstractC9530t40 abstractC9530t402 = AbstractC9530t40.f52519c;
        com.android.tools.r8.graph.proto.j jVar2 = com.android.tools.r8.graph.proto.j.f37620d;
        return new NW(a25, null, abstractC9530t402, a(a25, a25, (com.android.tools.r8.graph.A2) abstractC4744v22, nw.f42623d), a11).a(this);
    }

    @Override
    public C7835iw b(C7835iw c7835iw) {
        C4554l1 a10;
        com.android.tools.r8.graph.F0 a11;
        if (c7835iw.a()) {
            InterfaceC8701o6 interfaceC8701o6 = this.f49998f;
            Object obj = c7835iw.f41112b;
            Object b10 = interfaceC8701o6.b(obj);
            if (b10 != null) {
                obj = b10;
            }
            C4554l1 c4554l1 = (C4554l1) ((AbstractC4744v2) obj);
            if (((C4554l1) c7835iw.f41111a).a((C4554l1) c7835iw.f41112b)) {
                a10 = c4554l1;
            } else {
                com.android.tools.r8.graph.M2 s02 = ((C4554l1) c7835iw.f41111a).s0();
                com.android.tools.r8.graph.M2 d10 = d(s02);
                a10 = c4554l1.a(d10, this.f43776c);
                if ((this instanceof C6840cx0) && !d10.a(s02) && (a11 = this.f43775b.a(a10)) != null) {
                    if (!f49997m) {
                        if (((C6840cx0) this).f47215n.d(a11.getHolder().a1())) {
                            throw new AssertionError();
                        }
                    }
                    a10 = c4554l1.a(a11.getHolder().a1(), this.f43776c);
                }
            }
            return new C7835iw(a10, c4554l1, c7835iw.a(new Function() {
                @Override
                public final Object apply(Object obj2) {
                    return C8268lZ.this.d((com.android.tools.r8.graph.M2) obj2);
                }
            }), c7835iw.b(new Function() {
                @Override
                public final Object apply(Object obj2) {
                    return C8268lZ.this.d((com.android.tools.r8.graph.M2) obj2);
                }
            }));
        }
        InterfaceC8701o6 interfaceC8701o62 = this.f49998f;
        AbstractC4744v2 abstractC4744v2 = c7835iw.f41111a;
        return new C7835iw((C4554l1) ((AbstractC4744v2) interfaceC8701o62.getOrDefault(abstractC4744v2, abstractC4744v2)), null, c7835iw.a(new Function() {
            @Override
            public final Object apply(Object obj2) {
                return C8268lZ.this.d((com.android.tools.r8.graph.M2) obj2);
            }
        }), c7835iw.b(new Function() {
            @Override
            public final Object apply(Object obj2) {
                return C8268lZ.this.d((com.android.tools.r8.graph.M2) obj2);
            }
        }));
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public com.android.tools.r8.graph.A2 c(com.android.tools.r8.graph.A2 a22) {
        Object b10 = this.f50001i.b(a22);
        if (b10 != 0) {
            a22 = b10;
        }
        return a22;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public com.android.tools.r8.graph.A2 d(com.android.tools.r8.graph.A2 a22) {
        Object c10 = this.f50001i.c(a22);
        if (c10 != 0) {
            a22 = c10;
        }
        return a22;
    }

    @Override
    public com.android.tools.r8.graph.proto.j f(AbstractC5308Hz abstractC5308Hz, com.android.tools.r8.graph.A2 a22) {
        if (this == abstractC5308Hz) {
            return AbstractC5308Hz.g().f(abstractC5308Hz, a22);
        }
        com.android.tools.r8.graph.A2 d10 = d(a22);
        return a(this.f43777d.f(abstractC5308Hz, d10), d10, a22);
    }

    @Override
    public C4554l1 b(C4554l1 c4554l1) {
        return (C4554l1) this.f49998f.getOrDefault(c4554l1, c4554l1);
    }
}
