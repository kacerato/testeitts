package com.android.tools.r8.internal;

import com.android.tools.r8.graph.C4515j0;
import com.android.tools.r8.graph.C4798y;
import com.android.tools.r8.ir.optimize.C10696a;
import java.util.Collections;
import java.util.IdentityHashMap;
import java.util.LinkedHashSet;
import java.util.Map;
import java.util.Set;
import java.util.function.BiConsumer;
import java.util.function.Supplier;

public final class C8650np0 extends AbstractC9617te {

    public static final boolean f51087f = true;

    public final C5752Pp0 f51088e;

    public C8650np0(C4798y c4798y) {
        super(c4798y);
        this.f51088e = new C5752Pp0(c4798y.b());
    }

    public static void a(Map map, Map map2, Map map3, Map map4, Set set, Set set2, Set set3, C10340xw0 c10340xw0, AbstractC5289Hp0 abstractC5289Hp0) {
        C10152wp0 f10;
        C6286Yx0 c6286Yx0 = new C6286Yx0(2);
        c6286Yx0.b((C6286Yx0) abstractC5289Hp0);
        Set c10 = AbstractC5513Ll0.c();
        map.put(abstractC5289Hp0, c10);
        while (c6286Yx0.b()) {
            AbstractC5289Hp0 abstractC5289Hp02 = (AbstractC5289Hp0) c6286Yx0.c();
            map2.put(abstractC5289Hp02, abstractC5289Hp0);
            abstractC5289Hp02.getClass();
            if (abstractC5289Hp02 instanceof C4999Cp0) {
                AbstractC5289Hp0 abstractC5289Hp03 = (AbstractC5289Hp0) map3.put(abstractC5289Hp0, abstractC5289Hp02.k());
                if (!f51087f && abstractC5289Hp03 != null) {
                    throw new AssertionError();
                }
            }
            if (abstractC5289Hp02.q() && (f10 = abstractC5289Hp02.j().f()) != null) {
                ((Set) map4.computeIfAbsent(abstractC5289Hp0, C5480Ky.a(new C8887pC0()))).add(f10);
            }
            if (abstractC5289Hp02 instanceof C4883Ap0) {
                set.add(abstractC5289Hp0);
            }
            if (abstractC5289Hp02 instanceof C9985vp0) {
                set2.add(abstractC5289Hp0);
                set3.add(abstractC5289Hp0);
            }
            if ((abstractC5289Hp02 instanceof C5231Gp0) || (abstractC5289Hp02 instanceof C10152wp0)) {
                c10.add(abstractC5289Hp02);
            }
            if (abstractC5289Hp02 instanceof C10653zp0) {
                set2.add(abstractC5289Hp0);
            }
            abstractC5289Hp02.f40880a.forEach(new On1(c6286Yx0));
        }
    }

    @Override
    public final InterfaceC10118we b(C7215fB c7215fB) {
        Map map;
        C9151qp0 c9151qp0 = new C9151qp0(this.f51088e);
        EJ ej2 = new EJ(this.f52646a, C8984pp0.f51627g, c7215fB, c9151qp0);
        if (ej2.d(c7215fB.k()).a() == null) {
            map = Collections.EMPTY_MAP;
        } else {
            AbstractC6333Zs0 a10 = new C8149kp0(this, ej2, c9151qp0).a(c7215fB.k());
            map = a10.c() ? Collections.EMPTY_MAP : ((C8483mp0) a10.b().e()).f50430a;
        }
        IdentityHashMap a11 = a(c7215fB, map);
        if (a11.isEmpty()) {
            return InterfaceC10118we.f53547a;
        }
        C10696a c10696a = new C10696a();
        C7549hB p10 = c7215fB.p();
        while (p10.hasNext()) {
            AbstractC10561zE next = p10.next();
            InterfaceC7982jp0 interfaceC7982jp0 = (InterfaceC7982jp0) a11.get(next);
            if (interfaceC7982jp0 != null) {
                interfaceC7982jp0.a(this.f52646a, c7215fB, p10, next, c10696a, this.f51088e);
            }
        }
        c10696a.a(this.f52646a, c7215fB, C6628bi.b());
        c7215fB.a((C6382aB) null, (C10696a) null);
        c7215fB.x();
        return InterfaceC10118we.f53548b;
    }

    public final C10340xw0 c(C7215fB c7215fB) {
        C4798y c4798y = this.f52646a;
        boolean z10 = AbstractC8999pu0.f51660a;
        return c7215fB.a(AbstractC8999pu0.a(c4798y.b().f38052g2, C8854p10.h(), (C4798y<?>) c4798y).b(), (C4515j0) null);
    }

    @Override
    public final String a() {
        return "StringBuilderAppendOptimizer";
    }

    @Override
    public final boolean a(C7215fB c7215fB, AbstractC6931dX abstractC6931dX) {
        if (!this.f52648c.f50633R || a(c7215fB.j())) {
            return false;
        }
        return c7215fB.f47902i.a(49) || c7215fB.f47902i.d();
    }

    public final IdentityHashMap a(final C7215fB c7215fB, Map map) {
        boolean z10;
        IdentityHashMap identityHashMap = new IdentityHashMap();
        final IdentityHashMap identityHashMap2 = new IdentityHashMap();
        final Set c10 = AbstractC5513Ll0.c();
        final Set c11 = AbstractC5513Ll0.c();
        final IdentityHashMap identityHashMap3 = new IdentityHashMap();
        final Set c12 = AbstractC5513Ll0.c();
        final IdentityHashMap identityHashMap4 = new IdentityHashMap();
        final IdentityHashMap identityHashMap5 = new IdentityHashMap();
        IdentityHashMap identityHashMap6 = identityHashMap4;
        IdentityHashMap identityHashMap7 = identityHashMap5;
        map.forEach(new BiConsumer() {
            @Override
            public final void accept(Object obj, Object obj2) {
                C8650np0.a(Map.this, identityHashMap4, identityHashMap2, identityHashMap5, c11, c10, c12, (C10340xw0) obj, (AbstractC5289Hp0) obj2);
            }
        });
        C5578Mp0 c5578Mp0 = new C5578Mp0(identityHashMap, c12, c10, c11, identityHashMap3, identityHashMap2, this.f51088e, new Supplier() {
            @Override
            public final Object get() {
                return C8650np0.this.c(c7215fB);
            }
        });
        boolean z11 = true;
        int i10 = 0;
        while (i10 < 3 && z11) {
            LinkedHashSet<AbstractC5289Hp0> linkedHashSet = new LinkedHashSet();
            IdentityHashMap identityHashMap8 = identityHashMap6;
            IdentityHashMap identityHashMap9 = identityHashMap7;
            new C8316lp0(identityHashMap9, identityHashMap8, linkedHashSet).b(map.values());
            boolean z12 = false;
            for (AbstractC5289Hp0 abstractC5289Hp0 : linkedHashSet) {
                C6286Yx0 c6286Yx0 = new C6286Yx0(2);
                c6286Yx0.b((C6286Yx0) abstractC5289Hp0);
                while (c6286Yx0.b()) {
                    AbstractC5289Hp0 abstractC5289Hp02 = (AbstractC5289Hp0) c6286Yx0.c();
                    if (!abstractC5289Hp02.f40882c) {
                        InterfaceC5636Np0[] interfaceC5636Np0Arr = AbstractC5694Op0.f43053a;
                        for (int i11 = 0; i11 < 4; i11++) {
                            if (interfaceC5636Np0Arr[i11].a(abstractC5289Hp0, abstractC5289Hp02, c5578Mp0)) {
                                z10 = true;
                                break;
                            }
                        }
                    }
                    z10 = false;
                    z12 |= z10;
                    abstractC5289Hp02.f40880a.forEach(new On1(c6286Yx0));
                }
            }
            i10++;
            z11 = z12;
            identityHashMap6 = identityHashMap8;
            identityHashMap7 = identityHashMap9;
        }
        return identityHashMap;
    }
}
