package com.android.tools.r8.internal;

import com.android.tools.r8.graph.C4798y;
import com.android.tools.r8.shaking.C11349o2;
import com.android.tools.r8.shaking.EnumC11332n2;

public final class C6203Xk0 extends AbstractC10436yY {

    public final C11349o2 f45811b;

    public final com.android.tools.r8.synthesis.J f45812c;

    public C6203Xk0(C4798y c4798y) {
        this.f45811b = c4798y.f().f();
        this.f45812c = c4798y.f38408a.g();
    }

    @Override
    public final Object a(com.android.tools.r8.graph.H2 h22) {
        C11349o2 c11349o2 = this.f45811b;
        com.android.tools.r8.synthesis.J j10 = this.f45812c;
        c11349o2.getClass();
        if (C11349o2.a(h22.getType(), c11349o2.f57581a, j10)) {
            return null;
        }
        C11349o2 c11349o22 = this.f45811b;
        com.android.tools.r8.synthesis.J j11 = this.f45812c;
        if (C11349o2.f57580g) {
            c11349o22.getClass();
        } else {
            c11349o22.getClass();
            if (C11349o2.a(h22.getType(), c11349o22.f57581a, j11)) {
                throw new AssertionError();
            }
        }
        EnumC11332n2 a10 = c11349o22.a(h22.getReference(), j11);
        if (a10 == EnumC11332n2.f57551b) {
            return null;
        }
        return a10;
    }

    @Override
    public final String f() {
        return "SameMainDexGroup";
    }
}
