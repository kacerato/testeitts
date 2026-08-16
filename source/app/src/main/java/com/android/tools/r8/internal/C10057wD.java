package com.android.tools.r8.internal;

import com.android.tools.r8.graph.C4514j;
import com.android.tools.r8.graph.C4798y;
import com.android.tools.r8.shaking.C11245i;
import java.util.Map;
import java.util.function.Function;
import u.C15556y0;

public final class C10057wD {

    public static final boolean f53448c = true;

    public final C4798y f53449a;

    public final Map f53450b;

    public C10057wD(C4798y c4798y, Map map) {
        this.f53449a = c4798y;
        this.f53450b = map;
    }

    public static com.android.tools.r8.graph.M2 b(AbstractC5308Hz abstractC5308Hz, AbstractC5308Hz abstractC5308Hz2, com.android.tools.r8.graph.M2 m22) {
        com.android.tools.r8.graph.M2 c10 = abstractC5308Hz.c(abstractC5308Hz2, m22);
        if (c10.P0()) {
            return null;
        }
        return c10;
    }

    public final boolean a(com.android.tools.r8.graph.H2 h22, com.android.tools.r8.graph.H5 h52) {
        if (!f53448c && h52.d().w0()) {
            throw new AssertionError();
        }
        C4514j c4514j = (C4514j) this.f53449a.f();
        if (c4514j.i()) {
            C11245i m10 = c4514j.m();
            if (m10.f57407v.a((com.android.tools.r8.graph.D5) h22).d(m10.j())) {
                return false;
            }
        }
        if (c4514j.c((com.android.tools.r8.graph.M2) this.f53450b.getOrDefault(h52.p(), this.f53449a.b().f38068i2), h22.f36245e)) {
            return !h22.isInterface();
        }
        return false;
    }

    public final C10057wD a(final AbstractC5308Hz abstractC5308Hz, final AbstractC5308Hz abstractC5308Hz2) {
        return new C10057wD(this.f53449a, TU.a(this.f53450b, new C15556y0(), new Function() {
            @Override
            public final Object apply(Object obj) {
                return C10057wD.a(AbstractC5308Hz.this, abstractC5308Hz2, (com.android.tools.r8.graph.M2) obj);
            }
        }, new Function() {
            @Override
            public final Object apply(Object obj) {
                return C10057wD.b(AbstractC5308Hz.this, abstractC5308Hz2, (com.android.tools.r8.graph.M2) obj);
            }
        }, new InterfaceC7495gt0() {
            @Override
            public final Object a(Object obj, Object obj2, Object obj3) {
                return C10057wD.this.a((com.android.tools.r8.graph.M2) obj, (com.android.tools.r8.graph.M2) obj2, (com.android.tools.r8.graph.M2) obj3);
            }
        }));
    }

    public static com.android.tools.r8.graph.M2 a(AbstractC5308Hz abstractC5308Hz, AbstractC5308Hz abstractC5308Hz2, com.android.tools.r8.graph.M2 m22) {
        com.android.tools.r8.graph.M2 c10 = abstractC5308Hz.c(abstractC5308Hz2, m22);
        if (c10.P0()) {
            return null;
        }
        return c10;
    }

    public final com.android.tools.r8.graph.M2 a(com.android.tools.r8.graph.M2 m22, com.android.tools.r8.graph.M2 m23, com.android.tools.r8.graph.M2 m24) {
        return C6949de.a((C4514j) this.f53449a.f(), m23, m24);
    }
}
