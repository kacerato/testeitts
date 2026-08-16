package com.android.tools.r8.kotlin;

import com.android.tools.r8.graph.AbstractC4744v2;
import com.android.tools.r8.graph.C4798y;
import com.android.tools.r8.internal.AbstractC5308Hz;
import com.android.tools.r8.internal.AbstractC5455Kl0;
import com.android.tools.r8.internal.AbstractC5513Ll0;
import com.android.tools.r8.internal.C5107El0;
import com.android.tools.r8.internal.C9073qK;
import java.util.Set;
import java.util.function.Consumer;
import java.util.function.Predicate;

public final class X {

    public static final boolean f55209c = true;

    public int f55210a;

    public final Set f55211b;

    public X(C4798y c4798y) {
        this.f55211b = c4798y.E().f50599F1.f50829L0 ? AbstractC5513Ll0.c() : null;
    }

    public final void a(AbstractC4744v2 abstractC4744v2) {
        this.f55210a++;
        Set set = this.f55211b;
        if (set != null) {
            set.add(abstractC4744v2);
        }
    }

    public final boolean a(X x10, final C4798y c4798y) {
        if (this.f55210a != x10.f55210a) {
            return false;
        }
        Set set = this.f55211b;
        if (set == null) {
            return true;
        }
        boolean z10 = f55209c;
        if (!z10 && x10.f55211b == null) {
            throw new AssertionError();
        }
        if (!z10 && set.size() != x10.f55211b.size()) {
            throw new AssertionError();
        }
        Set set2 = this.f55211b;
        Set set3 = x10.f55211b;
        if (set2 == null) {
            throw new NullPointerException("set1");
        }
        if (set3 != null) {
            C5107El0 c5107El0 = new C5107El0(set2, set3);
            if (set3.containsAll(set2)) {
                return true;
            }
            Set set4 = x10.f55211b;
            Set set5 = this.f55211b;
            if (set4 == null) {
                throw new NullPointerException("set1");
            }
            if (set5 != null) {
                final C5107El0 c5107El02 = new C5107El0(set4, set5);
                c5107El0.forEach(new Consumer() {
                    @Override
                    public final void accept(Object obj) {
                        X.this.a(c4798y, c5107El02, (AbstractC4744v2) obj);
                    }
                });
                return true;
            }
            throw new NullPointerException("set2");
        }
        throw new NullPointerException("set2");
    }

    public final void a(final C4798y c4798y, AbstractC5455Kl0 abstractC5455Kl0, AbstractC4744v2 abstractC4744v2) {
        Object d10;
        AbstractC5308Hz v10 = c4798y.v();
        AbstractC5308Hz abstractC5308Hz = c4798y.f38418k;
        v10.getClass();
        if (abstractC4744v2.p0()) {
            d10 = v10.d(abstractC5308Hz, abstractC4744v2.l0());
        } else {
            d10 = v10.d(abstractC5308Hz, abstractC4744v2.n0());
        }
        boolean z10 = f55209c;
        if (!z10 && !abstractC5455Kl0.contains(d10)) {
            throw new AssertionError();
        }
        if (!z10 && C9073qK.b(abstractC4744v2.u0(), new Predicate() {
            @Override
            public final boolean test(Object obj) {
                return X.this.a(c4798y, (com.android.tools.r8.graph.M2) obj);
            }
        }) == null) {
            throw new AssertionError();
        }
    }

    public final boolean a(C4798y c4798y, com.android.tools.r8.graph.M2 m22) {
        com.android.tools.r8.graph.L2 l22 = m22.f36592f;
        com.android.tools.r8.graph.L2 l23 = c4798y.b().f38007a5.f55313f;
        l22.getClass();
        return l22.b(l23.f36562f);
    }
}
