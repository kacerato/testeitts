package com.android.tools.r8.internal;

import com.android.tools.r8.graph.C4460g1;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.function.Consumer;
import java.util.function.Function;
import java.util.function.Predicate;

public final class FX extends AbstractC10102wY {

    public static final boolean f40241b = true;

    @Override
    public final Collection a(AA aa2) {
        final LinkedHashMap linkedHashMap = new LinkedHashMap();
        aa2.forEach(new Consumer() {
            @Override
            public final void accept(Object obj) {
                FX.this.a(linkedHashMap, (com.android.tools.r8.graph.H2) obj);
            }
        });
        final AA aa3 = new AA();
        linkedHashMap.values().removeIf(new Predicate() {
            @Override
            public final boolean test(Object obj) {
                return FX.a(AA.this, (AA) obj);
            }
        });
        if (aa3.f38553b.isEmpty()) {
            return linkedHashMap.values();
        }
        if (!aa3.k()) {
            ArrayList arrayList = new ArrayList(linkedHashMap.values());
            arrayList.add(aa3);
            return arrayList;
        }
        AA aa4 = null;
        for (AA aa5 : linkedHashMap.values()) {
            if (aa4 == null || aa5.f38553b.size() < aa4.f38553b.size()) {
                aa4 = aa5;
            }
        }
        if (!f40241b && aa4 == null) {
            throw new AssertionError();
        }
        aa4.f38553b.addAll(aa3.f38553b);
        return linkedHashMap.values();
    }

    @Override
    public final String f() {
        return "MinimizeFieldCasts";
    }

    public final void a(Map map, com.android.tools.r8.graph.H2 h22) {
        a(h22, map);
    }

    public static boolean a(AA aa2, AA aa3) {
        if (!aa3.k()) {
            return false;
        }
        aa2.f38553b.addAll(aa3.f38553b);
        return true;
    }

    public static void a(com.android.tools.r8.graph.H2 h22, Map map) {
        C8045kA c8045kA = new C8045kA();
        Iterator<C4460g1> it = h22.k1().iterator();
        while (it.hasNext()) {
            c8045kA.a(it.next().getType(), 1);
        }
        ((AA) map.computeIfAbsent(c8045kA, new Function() {
            @Override
            public final Object apply(Object obj) {
                return FX.a((LY) obj);
            }
        })).f38553b.add(h22);
    }

    public static AA a(LY ly) {
        return new AA();
    }
}
