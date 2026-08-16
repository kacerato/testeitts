package com.android.tools.r8.internal;

import com.android.tools.r8.graph.C4516j1;
import com.android.tools.r8.graph.C4798y;
import java.util.HashMap;
import java.util.function.Predicate;

public final class C7705i70 {

    public final AA f48845a = new AA();

    public final HashMap f48846b = new HashMap();

    public final boolean a(com.android.tools.r8.graph.H2 h22, C4798y c4798y) {
        HashMap hashMap = new HashMap();
        for (C4516j1 c4516j1 : h22.c(new Predicate() {
            @Override
            public final boolean test(Object obj) {
                return C7705i70.this.a((C4516j1) obj);
            }
        })) {
            com.android.tools.r8.graph.F2 Z02 = c4516j1.Z0();
            C7538h70 c7538h70 = (C7538h70) this.f48846b.get(Z02);
            C7538h70 c7538h702 = new C7538h70(c4516j1, c4798y.f38412e.a(c4516j1.getReference()).f40089c);
            if (c7538h70 == null) {
                hashMap.put(Z02, c7538h702);
            } else if (!c7538h702.equals(c7538h70)) {
                return false;
            }
        }
        this.f48846b.putAll(hashMap);
        this.f48845a.f38553b.add(h22);
        return true;
    }

    public final boolean a(C4516j1 c4516j1) {
        if (c4516j1.w0()) {
            return false;
        }
        return !c4516j1.G0() || c4516j1.j1();
    }
}
