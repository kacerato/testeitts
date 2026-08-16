package com.android.tools.r8.internal;

import com.android.tools.r8.graph.C4460g1;
import com.android.tools.r8.graph.C4798y;
import java.util.HashSet;
import java.util.Iterator;

public final class C7016e00 extends AbstractC7173ex0 {

    public final C4798y f47571b;

    public C7016e00(C4798y c4798y) {
        this.f47571b = c4798y;
    }

    /* JADX WARN: Code restructure failed: missing block: B:14:0x007f, code lost:
    
        r8 = true;
     */
    @Override
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final boolean a(C8340lx0 c8340lx0) {
        com.android.tools.r8.graph.H2 h22 = c8340lx0.f50154b;
        com.android.tools.r8.graph.H2 h23 = c8340lx0.f50155c;
        if (h22.getType().a(h23.a1())) {
            C5533Lw c5533Lw = C5533Lw.f42102a;
            HashSet hashSet = new HashSet();
            Iterator<com.android.tools.r8.graph.M2> it = h23.R0().iterator();
            while (true) {
                if (it.hasNext()) {
                    com.android.tools.r8.graph.E0 g10 = this.f47571b.g(it.next());
                    if (g10 == null) {
                        break;
                    }
                    Iterator<C4460g1> it2 = g10.A1().iterator();
                    while (it2.hasNext()) {
                        hashSet.add(new C7333fv(c5533Lw, it2.next().getReference()));
                    }
                } else {
                    Iterator<C4460g1> it3 = h22.k1().iterator();
                    while (it3.hasNext()) {
                        if (hashSet.contains(new C7333fv(c5533Lw, it3.next().getReference()))) {
                        }
                    }
                }
            }
        }
        boolean z10 = false;
        return !z10;
    }

    @Override
    public final String f() {
        return "NoFieldResolutionChangesPolicy";
    }
}
