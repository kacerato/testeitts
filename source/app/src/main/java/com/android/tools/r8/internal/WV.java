package com.android.tools.r8.internal;

import com.android.tools.r8.graph.C4798y;
import java.util.IdentityHashMap;
import java.util.Map;
import java.util.function.Function;

public final class WV {

    public static final boolean f45429c = true;

    public final C4798y f45430a;

    public final IdentityHashMap f45431b = new IdentityHashMap();

    public WV(C4798y c4798y) {
        this.f45430a = c4798y;
    }

    public final void a(com.android.tools.r8.graph.A2 a22, com.android.tools.r8.graph.A2 a23, EnumC8071kK enumC8071kK) {
        if (a22 == a23) {
            if (!f45429c && this.f45431b.containsKey(enumC8071kK) && ((Map) this.f45431b.get(enumC8071kK)).getOrDefault(a22, a23) != a23) {
                throw new AssertionError();
            }
            return;
        }
        Map map = (Map) this.f45431b.computeIfAbsent(enumC8071kK, new Function() {
            @Override
            public final Object apply(Object obj) {
                return WV.a((EnumC8071kK) obj);
            }
        });
        if (!f45429c && map.getOrDefault(a22, a23) != a23) {
            throw new AssertionError();
        }
        map.put(a22, a23);
    }

    public static Map a(EnumC8071kK enumC8071kK) {
        return new IdentityHashMap();
    }
}
