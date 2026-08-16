package com.android.tools.r8.internal;

import java.util.HashMap;
import java.util.Map;

public final class P7 {

    public final C5000Cq f43129a = new C5000Cq(new HashMap());

    public final boolean a(P7 p72) {
        if (this.f43129a.f39368b.size() > p72.f43129a.f39368b.size()) {
            return false;
        }
        for (Map.Entry entry : this.f43129a.f39368b.entrySet()) {
            if (!((com.android.tools.r8.graph.F2) entry.getValue()).equals(p72.f43129a.f39368b.get((com.android.tools.r8.graph.F2) entry.getKey()))) {
                return false;
            }
        }
        return true;
    }
}
