package com.android.tools.r8.internal;

import com.android.tools.r8.graph.C4554l1;
import com.android.tools.r8.graph.C4724u1;
import com.android.tools.r8.graph.C4798y;
import com.android.tools.r8.shaking.AbstractC11516y1;
import com.android.tools.r8.shaking.C11245i;
import java.util.function.Consumer;

public final class C5124Eu {

    public static final boolean f40043e = true;

    public final C4798y f40044a;

    public final C10667zu f40045b;

    public final C4724u1 f40046c;

    public final C5240Gu f40047d = new C5240Gu();

    public C5124Eu(C4798y c4798y, C10667zu c10667zu) {
        this.f40044a = c4798y;
        this.f40045b = c10667zu;
        this.f40046c = c4798y.b();
    }

    public final void a() {
        AbstractC11516y1 abstractC11516y1 = ((C11245i) this.f40044a.f()).f57407v;
        C8570nJ E10 = this.f40044a.E();
        abstractC11516y1.c(new Consumer() {
            @Override
            public final void accept(Object obj) {
                C5124Eu.this.a((com.android.tools.r8.graph.M2) obj);
            }
        }, E10);
        abstractC11516y1.a(new Consumer() {
            @Override
            public final void accept(Object obj) {
                C5124Eu.this.a((C4554l1) obj);
            }
        }, E10);
        abstractC11516y1.b(new Consumer() {
            @Override
            public final void accept(Object obj) {
                C5124Eu.this.a((com.android.tools.r8.graph.A2) obj);
            }
        }, E10);
    }

    public final void a(C4554l1 c4554l1) {
        com.android.tools.r8.graph.M2 a10 = c4554l1.f37449i.a(this.f40046c);
        if (a10 != c4554l1.f38297f) {
            a(a10);
        }
    }

    public final void a(com.android.tools.r8.graph.A2 a22) {
        com.android.tools.r8.graph.I2 i22 = a22.f36127i;
        com.android.tools.r8.graph.M2 a10 = i22.f36440e.a(this.f40046c);
        if (a10 != a22.f38297f) {
            a(a10);
        }
        for (com.android.tools.r8.graph.M2 m22 : i22.f36441f.f36675b) {
            com.android.tools.r8.graph.M2 a11 = m22.a(this.f40046c);
            if (a11 != a22.f38297f) {
                a(a11);
            }
        }
    }

    public final void a(com.android.tools.r8.graph.M2 m22) {
        if (this.f40047d.c(m22)) {
            this.f40045b.a(m22, AbstractC6295Zb0.f46275c);
            this.f40047d.d(m22);
        }
    }
}
