package com.android.tools.r8.dex;

import com.android.tools.r8.graph.H2;
import com.android.tools.r8.graph.M2;
import com.android.tools.r8.internal.AbstractC9148qo0;
import java.util.ArrayList;
import java.util.Collection;
import java.util.IdentityHashMap;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.function.BiConsumer;
import java.util.function.Function;

public final class k0 extends i0 {

    public final Collection f35886d;

    public final boolean f35887e;

    public k0(C4311k c4311k, Collection collection, boolean z10) {
        super(c4311k);
        this.f35886d = collection;
        this.f35887e = z10;
    }

    @Override
    public final ArrayList a() {
        final IdentityHashMap identityHashMap = new IdentityHashMap();
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        for (H2 h22 : this.f35886d) {
            if (this.f35887e) {
                M2 a10 = this.f35866a.f38408a.g().a(this.f35866a.E(), h22.getType());
                if (a10 != null && a10 != h22.getType()) {
                    ((List) linkedHashMap.computeIfAbsent(a10, new Function() {
                        @Override
                        public final Object apply(Object obj) {
                            return com.android.tools.r8.dex.k0.a((M2) obj);
                        }
                    })).add(h22);
                }
            }
            t0 t0Var = new t0(this.f35868c.size(), this.f35866a, h22, null, AbstractC9148qo0.b());
            this.f35868c.add(t0Var);
            a(t0Var);
            t0Var.a(h22);
            identityHashMap.put(h22.getType(), t0Var);
            t0Var.f35957c.a();
        }
        linkedHashMap.forEach(new BiConsumer() {
            @Override
            public final void accept(Object obj, Object obj2) {
                com.android.tools.r8.dex.k0.a(Map.this, (M2) obj, (List) obj2);
            }
        });
        return this.f35868c;
    }

    public static List a(M2 m22) {
        return new ArrayList();
    }

    public static void a(Map map, M2 m22, List list) {
        t0 t0Var = (t0) map.get(m22);
        Iterator it = list.iterator();
        while (it.hasNext()) {
            t0Var.a((H2) it.next());
            t0Var.f35957c.a();
        }
    }
}
