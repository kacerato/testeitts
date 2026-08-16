package com.android.tools.r8.internal;

import com.android.tools.r8.graph.C4725u2;
import com.android.tools.r8.graph.C4788x8;
import java.util.Collection;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.function.Function;
import java.util.function.IntFunction;
import u.C15556y0;

public final class C7775ib0 {

    public final Set f48977a;

    public final Set f48978b;

    public final Map f48979c;

    public final Map f48980d;

    public final List f48981e;

    public C7775ib0(Set set, Set set2, XB xb2, Collection collection, List list) {
        this.f48977a = set;
        this.f48978b = set2;
        this.f48979c = TU.a((Collection) xb2, (IntFunction) new C15556y0(), (Function) new C4788x8());
        this.f48980d = TU.a(collection, (IntFunction) new C15556y0(), new Function() {
            @Override
            public final Object apply(Object obj) {
                return ((C4725u2) obj).getType();
            }
        });
        this.f48981e = list;
    }

    public final Set a() {
        return C4875Al0.a(this.f48977a, new com.android.tools.r8.errors.q());
    }

    public final Set b() {
        return C4875Al0.a(this.f48978b, new com.android.tools.r8.errors.q());
    }
}
