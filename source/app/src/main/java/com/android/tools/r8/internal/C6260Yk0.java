package com.android.tools.r8.internal;

import com.android.tools.r8.graph.C4798y;
import com.android.tools.r8.shaking.C11245i;
import com.android.tools.r8.shaking.C11349o2;
import com.android.tools.r8.shaking.EnumC11332n2;

public final class C6260Yk0 extends AbstractC7173ex0 {

    public static final boolean f46080d = true;

    public final C11349o2 f46081b;

    public final com.android.tools.r8.synthesis.J f46082c;

    public C6260Yk0(C4798y c4798y) {
        this.f46081b = ((C11245i) c4798y.f()).f();
        this.f46082c = c4798y.f38408a.g();
    }

    @Override
    public final boolean a(C8340lx0 c8340lx0) {
        if (!f46080d) {
            C11349o2 c11349o2 = this.f46081b;
            c11349o2.getClass();
            if (!C11349o2.f57580g && C11349o2.b() != C11349o2.f57579f) {
                throw new AssertionError();
            }
            if (c11349o2 == C11349o2.f57579f) {
                throw new AssertionError();
            }
        }
        com.android.tools.r8.graph.H2 h22 = c8340lx0.f50154b;
        com.android.tools.r8.graph.H2 h23 = c8340lx0.f50155c;
        C11349o2 c11349o22 = this.f46081b;
        com.android.tools.r8.synthesis.J j10 = this.f46082c;
        c11349o22.getClass();
        com.android.tools.r8.graph.M2 type = h22.getType();
        com.android.tools.r8.graph.M2 type2 = h23.getType();
        EnumC11332n2 a10 = c11349o22.a(type, j10);
        return a10 == c11349o22.a(type2, j10) && a10 != EnumC11332n2.f57551b;
    }

    @Override
    public final String f() {
        return "SameMainDexGroupPolicy";
    }

    @Override
    public final boolean l() {
        C11349o2 c11349o2 = this.f46081b;
        c11349o2.getClass();
        if (C11349o2.f57580g || C11349o2.b() == C11349o2.f57579f) {
            return c11349o2 == C11349o2.f57579f;
        }
        throw new AssertionError();
    }
}
