package com.android.tools.r8.dex;

import com.android.tools.r8.graph.C4798y;
import com.android.tools.r8.graph.H2;
import com.android.tools.r8.graph.M2;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Set;
import java.util.function.Function;

public final class P {

    public static final boolean f35758c = true;

    public final HashMap f35759a;

    public final Set f35760b;

    public P(C4798y c4798y, Set set) {
        HashMap hashMap = new HashMap();
        Iterator it = set.iterator();
        while (it.hasNext()) {
            H2 h22 = (H2) it.next();
            a(c4798y, set, hashMap, h22.f36247g, h22);
            for (M2 m22 : h22.f36248h.f36675b) {
                a(c4798y, set, hashMap, m22, h22);
            }
        }
        this.f35760b = set;
        this.f35759a = hashMap;
    }

    public static void a(C4798y c4798y, Set set, HashMap hashMap, M2 m22, H2 h22) {
        c4798y.getClass();
        H2 a10 = H2.a(m22 == h22.f36245e ? h22 : c4798y.a(m22));
        if (a10 == null || !set.contains(a10)) {
            return;
        }
        ((Collection) hashMap.computeIfAbsent(a10, new Function() {
            @Override
            public final Object apply(Object obj) {
                return com.android.tools.r8.dex.P.b((H2) obj);
            }
        })).add(h22);
    }

    public static Collection b(H2 h22) {
        return new ArrayList();
    }

    public final Collection a(H2 h22) {
        if (f35758c || this.f35760b.contains(h22)) {
            return (Collection) this.f35759a.getOrDefault(h22, Collections.EMPTY_LIST);
        }
        throw new AssertionError();
    }
}
