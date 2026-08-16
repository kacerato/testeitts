package com.android.tools.r8.internal;

import com.android.tools.r8.graph.C4554l1;
import com.android.tools.r8.naming.AbstractC10992r0;

public class C9453sf extends AbstractC9286rf {

    public final AbstractC10992r0 f52427b;

    public C9453sf(AbstractC10992r0 abstractC10992r0) {
        this.f52427b = abstractC10992r0;
    }

    @Override
    public int a(com.android.tools.r8.graph.M2 m22, com.android.tools.r8.graph.M2 m23) {
        if (m22 == m23) {
            return 0;
        }
        com.android.tools.r8.graph.L2 c10 = this.f52427b.c(m22);
        com.android.tools.r8.graph.L2 c11 = this.f52427b.c(m23);
        c10.getClass();
        return a(c10, c11);
    }

    @Override
    public int a(C4554l1 c4554l1, C4554l1 c4554l12) {
        if (c4554l1 == c4554l12) {
            return 0;
        }
        com.android.tools.r8.graph.M2 m22 = c4554l1.f38297f;
        com.android.tools.r8.graph.M2 m23 = c4554l12.f38297f;
        m22.getClass();
        int a10 = a(m22, m23);
        if (a10 != 0) {
            return a10;
        }
        com.android.tools.r8.graph.L2 a11 = this.f52427b.a(c4554l1);
        com.android.tools.r8.graph.L2 a12 = this.f52427b.a(c4554l12);
        a11.getClass();
        int a13 = a(a11, a12);
        if (a13 != 0) {
            return a13;
        }
        com.android.tools.r8.graph.M2 m24 = c4554l1.f37449i;
        com.android.tools.r8.graph.M2 m25 = c4554l12.f37449i;
        m24.getClass();
        return a(m24, m25);
    }

    @Override
    public int a(com.android.tools.r8.graph.A2 a22, com.android.tools.r8.graph.A2 a23) {
        if (a22 == a23) {
            return 0;
        }
        com.android.tools.r8.graph.M2 m22 = a22.f38297f;
        com.android.tools.r8.graph.M2 m23 = a23.f38297f;
        m22.getClass();
        int a10 = a(m22, m23);
        if (a10 != 0) {
            return a10;
        }
        com.android.tools.r8.graph.L2 a11 = this.f52427b.a(a22);
        com.android.tools.r8.graph.L2 a12 = this.f52427b.a(a23);
        a11.getClass();
        int a13 = a(a11, a12);
        return a13 != 0 ? a13 : a22.f36127i.a(a23.f36127i, (AbstractC8953pf) this);
    }
}
