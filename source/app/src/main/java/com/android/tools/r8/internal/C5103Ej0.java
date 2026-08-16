package com.android.tools.r8.internal;

import com.android.tools.r8.graph.AbstractC4479h1;
import com.android.tools.r8.graph.C4460g1;
import com.android.tools.r8.graph.C4798y;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.function.Function;
import java.util.function.Predicate;

public final class C5103Ej0 extends AbstractC10102wY {

    public final C4798y f39990b;

    public C5103Ej0(C4798y c4798y) {
        this.f39990b = c4798y;
    }

    public final boolean a(com.android.tools.r8.graph.H2 h22) {
        GK gk2;
        com.android.tools.r8.graph.E0 g10;
        com.android.tools.r8.graph.E0 g11;
        if (h22.w1() && !h22.q0()) {
            if (JK.a(h22.y1().iterator(), new V60() {
                @Override
                public final boolean apply(Object obj) {
                    return ((AbstractC4479h1) obj).r0();
                }
            }) == -1) {
                Iterator<com.android.tools.r8.graph.M2> it = h22.R0().iterator();
                while (it.hasNext()) {
                    com.android.tools.r8.graph.M2 next = it.next();
                    if (h22.getType().z0().equals(next.z0()) && ((g11 = this.f39990b.g(next)) == null || !g11.w1())) {
                        return true;
                    }
                }
                Iterator it2 = h22.y1().iterator();
                do {
                    gk2 = (GK) it2;
                    if (!gk2.hasNext()) {
                        Iterator<C4460g1> it3 = h22.I0().iterator();
                        while (it3.hasNext()) {
                            com.android.tools.r8.graph.M2 a10 = it3.next().getType().a(this.f39990b.b());
                            if (a10.I0() && ((g10 = this.f39990b.g(a10)) == null || !g10.w1())) {
                                return true;
                            }
                        }
                        return h22.a(new Function() {
                            @Override
                            public final Object apply(Object obj) {
                                return C5103Ej0.this.a((com.android.tools.r8.graph.H5) obj);
                            }
                        }, new u.P0()).c();
                    }
                } while (!((AbstractC4479h1) gk2.next()).getAccessFlags().g());
                return true;
            }
        }
        return true;
    }

    @Override
    public final String f() {
        return "RespectPackageBoundaries";
    }

    public final AbstractC6333Zs0 a(com.android.tools.r8.graph.H5 h52) {
        C5045Dj0 c5045Dj0 = new C5045Dj0(this.f39990b, h52);
        h52.a(c5045Dj0);
        if (c5045Dj0.f37241e.booleanValue()) {
            return C6162Ws0.f45559c;
        }
        return C6276Ys0.f46097c;
    }

    public static void a(AA aa2, final LinkedHashMap linkedHashMap) {
        aa2.removeIf(new Predicate() {
            @Override
            public final boolean test(Object obj) {
                return C5103Ej0.a(Map.this, (com.android.tools.r8.graph.H2) obj);
            }
        });
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
        Iterator<E> it = aa2.f38553b.iterator();
        while (it.hasNext()) {
            com.android.tools.r8.graph.H2 h22 = (com.android.tools.r8.graph.H2) it.next();
            if (a(h22)) {
                ((AA) linkedHashMap.computeIfAbsent(h22.getType().z0(), new Function() {
                    @Override
                    public final Object apply(Object obj) {
                        return C5103Ej0.a((String) obj);
                    }
                })).f38553b.add(h22);
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

    public static AA a(String str) {
        return new AA();
    }
}
