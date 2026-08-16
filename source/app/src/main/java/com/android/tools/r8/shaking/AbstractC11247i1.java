package com.android.tools.r8.shaking;

import com.android.tools.r8.graph.C4666r0;
import com.android.tools.r8.internal.C5417Jv0;
import java.util.IdentityHashMap;

public abstract class AbstractC11247i1 {
    public abstract boolean a(C4666r0 c4666r0);

    public final boolean a(AbstractC11247i1 abstractC11247i1) {
        com.android.tools.r8.graph.M2 m22;
        com.android.tools.r8.graph.M2 m23;
        if (this != abstractC11247i1 && !(this instanceof C11145c1)) {
            abstractC11247i1.getClass();
            if (!(abstractC11247i1 instanceof C11230h1)) {
                if (!(this instanceof C11230h1) && !(abstractC11247i1 instanceof C11145c1)) {
                    C11179e1 a10 = a();
                    C11179e1 a11 = abstractC11247i1.a();
                    C11196f1 c11196f1 = a10.f57250a;
                    C11196f1 c11196f12 = a11.f57250a;
                    if (c11196f1.f57273b.a() || (((m23 = c11196f12.f57272a) == null || c11196f1.f57272a.a(m23)) && c11196f1.f57273b.a(c11196f12.f57273b))) {
                        IdentityHashMap identityHashMap = a10.f57251b;
                        if (identityHashMap == null) {
                            return true;
                        }
                        for (com.android.tools.r8.graph.M2 m24 : identityHashMap.o()) {
                            IdentityHashMap identityHashMap2 = a11.f57251b;
                            C11196f1 c11196f13 = identityHashMap2 != null ? (C11196f1) identityHashMap2.get(m24) : null;
                            if (c11196f13 == null) {
                                c11196f13 = a11.f57250a;
                            }
                            C11196f1 c11196f14 = (C11196f1) a10.f57251b.get(m24);
                            if (!c11196f14.f57273b.a() && (((m22 = c11196f13.f57272a) != null && !c11196f14.f57272a.a(m22)) || !c11196f14.f57273b.a(c11196f13.f57273b))) {
                                return false;
                            }
                        }
                        return true;
                    }
                }
                return false;
            }
        }
        return true;
    }

    public final boolean b() {
        return (this instanceof C11230h1) || (this instanceof C11145c1);
    }

    public final C11162d1 c() {
        if (this instanceof C11230h1) {
            return new C11162d1(C11196f1.f57268d);
        }
        if (this instanceof C11145c1) {
            return new C11162d1(C11196f1.f57267c);
        }
        C11179e1 a10 = a();
        C11162d1 c11162d1 = new C11162d1(C11196f1.f57267c);
        c11162d1.f57232a = a10.f57250a;
        if (a10.f57251b != null) {
            c11162d1.f57233b = new IdentityHashMap(a10.f57251b);
        }
        return c11162d1;
    }

    public C11179e1 a() {
        throw new C5417Jv0();
    }
}
