package com.android.tools.r8.ir.optimize;

import com.android.tools.r8.graph.C4798y;
import com.android.tools.r8.internal.AbstractC6931dX;
import com.android.tools.r8.internal.AbstractC9617te;
import com.android.tools.r8.internal.C7215fB;
import com.android.tools.r8.internal.InterfaceC10118we;

public final class t0 extends AbstractC9617te {

    public static final int f54941e = 0;

    public t0(C4798y c4798y) {
        super(c4798y);
    }

    @Override
    public final String a() {
        return "RedundantFieldLoadAndStoreElimination";
    }

    @Override
    public final InterfaceC10118we b(C7215fB c7215fB) {
        return new s0(this, c7215fB).c();
    }

    @Override
    public final boolean a(C7215fB c7215fB, AbstractC6931dX abstractC6931dX) {
        if (this.f52646a.E().f50683g0) {
            return c7215fB.f47902i.a(6) || c7215fB.f47902i.b() || c7215fB.f47902i.a(27);
        }
        return false;
    }
}
