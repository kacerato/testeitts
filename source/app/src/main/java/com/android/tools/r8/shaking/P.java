package com.android.tools.r8.shaking;

import com.android.tools.r8.internal.AbstractC5513Ll0;
import com.android.tools.r8.internal.C10016vz1;
import com.android.tools.r8.internal.C8570nJ;
import com.android.tools.r8.internal.InterfaceC6522b2;
import java.util.ArrayList;
import java.util.Collections;
import java.util.IdentityHashMap;
import java.util.List;
import java.util.Set;
import java.util.function.Function;

public final class P {

    public final Set f56875a = AbstractC5513Ll0.c();

    public final IdentityHashMap f56876b = new IdentityHashMap();

    public final boolean a(com.android.tools.r8.graph.H2 h22, R0 r02) {
        if (!this.f56875a.add(h22)) {
            return false;
        }
        ((List) this.f56876b.getOrDefault(h22, Collections.EMPTY_LIST)).forEach(new C10016vz1());
        return true;
    }

    public final boolean a(com.android.tools.r8.graph.H2 h22, InterfaceC6522b2 interfaceC6522b2) {
        if (this.f56875a.contains(h22)) {
            return false;
        }
        ((List) this.f56876b.computeIfAbsent(h22, new Function() {
            @Override
            public final Object apply(Object obj) {
                return P.a(obj);
            }
        })).add(interfaceC6522b2);
        return true;
    }

    public static List a(Object obj) {
        return new ArrayList();
    }

    public final Set a() {
        Set set = this.f56875a;
        return C8570nJ.b() ? Collections.unmodifiableSet(set) : set;
    }
}
