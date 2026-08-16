package com.android.tools.r8.internal;

import com.android.tools.r8.shaking.AbstractC11147c3;
import com.android.tools.r8.shaking.C11130b3;
import java.util.Collections;
import java.util.IdentityHashMap;
import java.util.Set;
import java.util.function.Function;

public final class J00 extends AbstractC7160et {

    public static final boolean f41265c = true;

    public final AbstractC7552hC f41266a;

    public final IdentityHashMap f41267b = new IdentityHashMap();

    public J00(C11130b3 c11130b3) {
        boolean z10 = f41265c;
        if (!z10 && c11130b3 == null) {
            throw new AssertionError();
        }
        if (!z10 && c11130b3.f57189a.size() == 0) {
            throw new AssertionError();
        }
        this.f41266a = c11130b3.f57189a;
    }

    @Override
    public final boolean a(com.android.tools.r8.graph.M2 m22) {
        for (AbstractC11147c3 abstractC11147c3 : this.f41266a) {
            if (abstractC11147c3.a(m22)) {
                a(abstractC11147c3, m22);
                return true;
            }
        }
        return false;
    }

    public final void b(C8570nJ c8570nJ) {
        for (AbstractC11147c3 abstractC11147c3 : this.f41266a) {
            if (!f41265c && !this.f41267b.containsKey(abstractC11147c3) && !c8570nJ.f50599F1.f50827K0.contains(abstractC11147c3.toString())) {
                throw new AssertionError((Object) ("Unexpected unused rule -dontwarn " + abstractC11147c3.toString()));
            }
        }
    }

    public final void a(AbstractC11147c3 abstractC11147c3, com.android.tools.r8.graph.M2 m22) {
        if (C8570nJ.b()) {
            ((Set) this.f41267b.computeIfAbsent(abstractC11147c3, new Function() {
                @Override
                public final Object apply(Object obj) {
                    Set c10;
                    c10 = AbstractC5513Ll0.c();
                    return c10;
                }
            })).add(m22);
        }
    }

    @Override
    public final void a(C8570nJ c8570nJ) {
        boolean z10 = f41265c;
        if (!z10 && !c8570nJ.f50599F1.f50840R) {
            a();
        }
        if (z10 || c8570nJ.f50599F1.f50842S) {
            return;
        }
        b(c8570nJ);
    }

    public final void a() {
        for (AbstractC11147c3 abstractC11147c3 : this.f41266a) {
            if (!f41265c && abstractC11147c3.d().iterator().hasNext() && ((Set) this.f41267b.getOrDefault(abstractC11147c3, Collections.EMPTY_SET)).size() == 1) {
                throw new AssertionError((Object) ("Unexpected unnecessary wildcard in -dontwarn " + abstractC11147c3.toString() + " (only matches " + ((com.android.tools.r8.graph.M2) ((Set) this.f41267b.get(abstractC11147c3)).iterator().next()).D0() + ")"));
            }
        }
    }
}
