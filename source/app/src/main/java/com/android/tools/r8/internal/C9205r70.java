package com.android.tools.r8.internal;

import com.android.tools.r8.graph.C4387c4;
import com.android.tools.r8.graph.C4514j;
import com.android.tools.r8.graph.C4724u1;
import com.android.tools.r8.graph.C4798y;
import com.android.tools.r8.graph.Z4;
import java.util.Collection;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.function.Function;

public final class C9205r70 extends AbstractC10102wY {

    public final C4798y f51972b;

    public final C4387c4 f51973c;

    public final C8371m70 f51974d = new C8371m70(this);

    public final C8705o70 f51975e = new C8705o70(this);

    public final C8872p70 f51976f = new C8872p70(this);

    public C9205r70(C4798y c4798y, C4387c4 c4387c4) {
        this.f51972b = c4798y;
        this.f51973c = c4387c4;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r8v7, types: [com.android.tools.r8.graph.E0] */
    @Override
    public final Collection a(AA aa2) {
        if (aa2.j()) {
            int i10 = AbstractC7552hC.f48487c;
            return new C5920Sm0(aa2);
        }
        C5058Dq c5058Dq = new C5058Dq(new LinkedHashSet());
        Iterator<E> it = aa2.f38553b.iterator();
        while (it.hasNext()) {
            c5058Dq.a(((com.android.tools.r8.graph.H2) it.next()).z1());
        }
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        Iterator<E> it2 = aa2.f38553b.iterator();
        while (it2.hasNext()) {
            com.android.tools.r8.graph.H2 h22 = (com.android.tools.r8.graph.H2) it2.next();
            HashSet hashSet = new HashSet(this.f51976f.a(h22).f39661b);
            C5058Dq c5058Dq2 = new C5058Dq(hashSet);
            hashSet.removeAll(this.f51975e.a(h22));
            C8204l70 c8204l70 = new C8204l70();
            for (com.android.tools.r8.graph.F2 f22 : c5058Dq.f39661b) {
                EnumC8538n70 enumC8538n70 = EnumC8538n70.f50511b;
                if (c5058Dq2.f39661b.contains(f22)) {
                    C4724u1 b10 = this.f51972b.b();
                    f22.getClass();
                    com.android.tools.r8.graph.M2 type = h22.getType();
                    type.getClass();
                    Z4.c<?> o10 = ((C4514j) this.f51972b.f()).f(h22, b10.a(type, f22.b(), f22.a())).o();
                    if (o10 == null || o10.d().isInterface()) {
                        enumC8538n70 = EnumC8538n70.f50512c;
                    }
                }
                EnumC8538n70 enumC8538n702 = (EnumC8538n70) c8204l70.put(f22, enumC8538n70);
                if (!C8204l70.f49894b && enumC8538n702 != null) {
                    throw new AssertionError();
                }
            }
            ((AA) linkedHashMap.computeIfAbsent(c8204l70, new Function() {
                @Override
                public final Object apply(Object obj) {
                    return C9205r70.a((C8204l70) obj);
                }
            })).f38553b.add(h22);
        }
        return AbstractC9369s60.a(linkedHashMap.values());
    }

    @Override
    public final String f() {
        return "PreventClassMethodAndDefaultMethodCollisions";
    }

    @Override
    public final boolean l() {
        return this.f51972b.E().P() && !this.f51972b.E().f();
    }

    public static AA a(C8204l70 c8204l70) {
        return new AA();
    }
}
