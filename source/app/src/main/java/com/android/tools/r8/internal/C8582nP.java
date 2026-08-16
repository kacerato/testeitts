package com.android.tools.r8.internal;

import java.util.HashMap;
import java.util.HashSet;
import java.util.Set;
import java.util.function.Function;

public final class C8582nP {

    public final C8749oP f50949a;

    public final HashSet f50950b = new HashSet();

    public final HashMap f50951c = new HashMap();

    public C8582nP(C8749oP c8749oP) {
        this.f50949a = c8749oP;
    }

    public final void a(C10251xP c10251xP) {
        ((Set) this.f50951c.computeIfAbsent(c10251xP.f53756b.a(C9083qP.f51776b), new Function() {
            @Override
            public final Object apply(Object obj) {
                return C8582nP.a((C6748cP) obj);
            }
        })).add(c10251xP.f53755a.f42280a);
    }

    public static Set a(C6748cP c6748cP) {
        return new HashSet();
    }
}
