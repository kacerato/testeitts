package com.android.tools.r8.internal;

import com.android.tools.r8.graph.C4798y;
import com.android.tools.r8.synthesis.S;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashSet;
import java.util.Iterator;
import java.util.function.Function;

public abstract class AbstractC8528n4 {

    public static final boolean f50495a = true;

    public static void a(C4798y c4798y, EnumC8361m4... enumC8361m4Arr) {
        if (c4798y.E().q().b()) {
            C6694c4 c6694c4 = (C6694c4) AT.b(c4798y.f38411d.a().f40366c);
            if (f50495a) {
                return;
            }
            HashSet hashSet = new HashSet(AbstractC9595tV.a(enumC8361m4Arr.length));
            Collections.addAll(hashSet, enumC8361m4Arr);
            a(c4798y, c6694c4, hashSet);
        }
    }

    public static void a(C4798y c4798y, C6694c4 c6694c4, HashSet hashSet) {
        C8674nx0 c8674nx0;
        if (!f50495a && c4798y.f38408a.g().b()) {
            throw new AssertionError();
        }
        ArrayList arrayList = new ArrayList();
        for (com.android.tools.r8.graph.H2 h22 : c4798y.f().e()) {
            if (!c4798y.f38392G.c(h22.getType()) && ((c8674nx0 = c4798y.f38393H) == null || !c8674nx0.d(h22.getType()))) {
                C8664nu I10 = c4798y.I();
                I10.getClass();
                if (!I10.b(h22.getType())) {
                    if (!c6694c4.f46954a.containsKey(h22.getType())) {
                        a(c4798y, h22, hashSet, arrayList);
                    }
                    Iterator it = h22.L1().iterator();
                    while (true) {
                        GK gk2 = (GK) it;
                        if (gk2.hasNext()) {
                            com.android.tools.r8.graph.H5 h52 = (com.android.tools.r8.graph.H5) gk2.next();
                            if (!c6694c4.f46954a.containsKey(h52.getReference())) {
                                a(c4798y, h52, hashSet, arrayList);
                            }
                        }
                    }
                }
            }
        }
        if (arrayList.isEmpty()) {
            return;
        }
        String a10 = C10656zq0.a(System.lineSeparator(), arrayList, new Function() {
            @Override
            public final Object apply(Object obj) {
                return ((com.android.tools.r8.graph.J2) obj).i0();
            }
        });
        if (!f50495a) {
            throw new AssertionError((Object) a10);
        }
    }

    public static void a(C4798y c4798y, com.android.tools.r8.graph.D5 d52, HashSet hashSet, ArrayList arrayList) {
        if (hashSet.contains(EnumC8361m4.f50191b)) {
            com.android.tools.r8.graph.M2 S10 = d52.S();
            com.android.tools.r8.synthesis.J g10 = c4798y.f38408a.g();
            if (g10.g(S10) && (g10.a(S10, new com.android.tools.r8.synthesis.I() {
                @Override
                public final S.b a(com.android.tools.r8.synthesis.S s10) {
                    S.b bVar;
                    bVar = s10.f58148A;
                    return bVar;
                }
            }) || g10.a(S10, new com.android.tools.r8.synthesis.I() {
                @Override
                public final S.b a(com.android.tools.r8.synthesis.S s10) {
                    S.b bVar;
                    bVar = s10.f58181h;
                    return bVar;
                }
            }) || g10.a(S10, new com.android.tools.r8.synthesis.I() {
                @Override
                public final S.b a(com.android.tools.r8.synthesis.S s10) {
                    S.b bVar;
                    bVar = s10.f58182i;
                    return bVar;
                }
            }))) {
                return;
            }
        }
        arrayList.add(d52.getReference());
    }
}
