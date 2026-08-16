package com.android.tools.r8.internal;

import com.android.tools.r8.graph.C4798y;
import com.android.tools.r8.synthesis.S;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.function.Predicate;

public final class C6638bl0 extends AbstractC10102wY {

    public static final boolean f46853c = true;

    public final C4798y f46854b;

    public C6638bl0(C4798y c4798y) {
        this.f46854b = c4798y;
    }

    public static void a(AA aa2, final LinkedHashMap linkedHashMap) {
        aa2.removeIf(new Predicate() {
            @Override
            public final boolean test(Object obj) {
                return C6638bl0.a(Map.this, (com.android.tools.r8.graph.H2) obj);
            }
        });
    }

    @Override
    public final String f() {
        return "SamePackageForApiOutline";
    }

    public static boolean a(Map map, com.android.tools.r8.graph.H2 h22) {
        AA aa2 = (AA) map.get(h22.f36245e.z0());
        if (aa2 == null) {
            return false;
        }
        aa2.f38553b.add(h22);
        return true;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public final Collection a(AA aa2) {
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        AA aa3 = new AA();
        com.android.tools.r8.synthesis.J g10 = this.f46854b.f38408a.g();
        Iterator<E> it = aa2.f38553b.iterator();
        while (it.hasNext()) {
            com.android.tools.r8.graph.H2 h22 = (com.android.tools.r8.graph.H2) it.next();
            if (!f46853c && !g10.g(h22.getType())) {
                throw new AssertionError();
            }
            AbstractC6114Vx e10 = g10.e(h22.getType());
            if (JK.a(e10.iterator(), new V60() {
                @Override
                public final boolean apply(Object obj) {
                    return C6638bl0.a((S.b) obj);
                }
            }) != -1) {
                ((AA) linkedHashMap.computeIfAbsent(h22.getType().z0(), C5480Ky.a(new C9596tV0()))).f38553b.add(h22);
            } else {
                aa3.f38553b.add(h22);
            }
        }
        a(aa3, linkedHashMap);
        AbstractC9369s60.a(linkedHashMap.values());
        ArrayList arrayList = new ArrayList(linkedHashMap.size() + 1);
        if (aa3.f38553b.size() > 1) {
            arrayList.add(aa3);
        }
        arrayList.addAll(linkedHashMap.values());
        return arrayList;
    }

    public static boolean a(S.b bVar) {
        bVar.getClass();
        return ((bVar instanceof com.android.tools.r8.synthesis.V) && bVar.a().f58213d) ? false : true;
    }
}
