package com.android.tools.r8.ir.desugar.desugaredlibrary.lint;

import com.android.tools.r8.graph.A2;
import com.android.tools.r8.graph.C4460g1;
import com.android.tools.r8.graph.C4516j1;
import com.android.tools.r8.graph.C4554l1;
import com.android.tools.r8.graph.E0;
import com.android.tools.r8.ir.desugar.desugaredlibrary.lint.m;
import java.util.HashMap;
import java.util.IdentityHashMap;
import java.util.Iterator;
import java.util.function.BiConsumer;

public final class n {

    public static final boolean f54691g = true;

    public final E0 f54692a;

    public l f54693b;

    public final IdentityHashMap f54694c = new IdentityHashMap();

    public final IdentityHashMap f54695d = new IdentityHashMap();

    public final HashMap f54696e = new HashMap();

    public final HashMap f54697f = new HashMap();

    public n(E0 e02) {
        this.f54692a = e02;
    }

    public final void a(BiConsumer biConsumer) {
        Iterator it = this.f54695d.values().iterator();
        while (it.hasNext()) {
            biConsumer.accept(this.f54692a, (C4460g1) it.next());
        }
    }

    public final void b(BiConsumer biConsumer) {
        Iterator it = this.f54694c.values().iterator();
        while (it.hasNext()) {
            biConsumer.accept(this.f54692a, (C4516j1) it.next());
        }
    }

    public final void a(A2 a22, m.c cVar) {
        if (!f54691g && a22.s0() != this.f54692a.f36245e) {
            throw new AssertionError();
        }
        HashMap hashMap = this.f54696e;
        m.c cVar2 = m.c.f54679i;
        m.c cVar3 = (m.c) hashMap.getOrDefault(a22, cVar2);
        HashMap hashMap2 = this.f54696e;
        if (cVar == cVar2) {
            cVar = cVar3;
        } else if (cVar3 != cVar2) {
            int a10 = cVar.a(cVar3);
            cVar = new m.c(cVar.f54682e || cVar3.f54682e, cVar.f54683f || cVar3.f54683f, cVar.f54684g || cVar3.f54684g, cVar.f54675a || cVar3.f54675a, a10 & 255, a10 >> 16);
        }
        hashMap2.put(a22, cVar);
    }

    public final void a(C4554l1 c4554l1, m.a aVar) {
        if (!f54691g && c4554l1.s0() != this.f54692a.f36245e) {
            throw new AssertionError();
        }
        HashMap hashMap = this.f54697f;
        m.a aVar2 = m.a.f54673e;
        m.a aVar3 = (m.a) hashMap.getOrDefault(c4554l1, aVar2);
        HashMap hashMap2 = this.f54697f;
        if (aVar == aVar2) {
            aVar = aVar3;
        } else if (aVar3 != aVar2) {
            int a10 = aVar.a(aVar3);
            aVar = new m.a(a10 & 255, a10 >> 16, aVar.f54675a || aVar3.f54675a);
        }
        hashMap2.put(c4554l1, aVar);
    }
}
