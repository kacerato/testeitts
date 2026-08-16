package com.android.tools.r8.internal;

import com.android.tools.r8.graph.C4798y;
import java.util.List;

public abstract class AbstractC9408sL extends AbstractC10561zE {

    public static final boolean f52340k = true;

    public AbstractC9408sL() {
        super(null);
    }

    @Override
    public final boolean U1() {
        return true;
    }

    @Override
    public final boolean a(C4798y c4798y, com.android.tools.r8.graph.H5 h52) {
        return false;
    }

    @Override
    public final boolean d1() {
        return true;
    }

    @Override
    public final AbstractC9408sL l0() {
        return this;
    }

    public W5 u2() {
        return null;
    }

    public AbstractC9408sL(C10340xw0 c10340xw0) {
        super((C10340xw0) null, c10340xw0);
    }

    public void a(W5 w52) {
        if (!f52340k) {
            throw new AssertionError((Object) "We should not change the fallthrough of a JumpInstruction with no fallthrough.");
        }
    }

    public AbstractC9408sL(List list) {
        super(list, (C10340xw0) null);
    }

    @Override
    public final com.android.tools.r8.ir.optimize.E a(C4798y c4798y, C7215fB c7215fB) {
        return com.android.tools.r8.ir.optimize.E.f54734b;
    }

    @Override
    public com.android.tools.r8.ir.optimize.O a(com.android.tools.r8.ir.optimize.X x10, com.android.tools.r8.graph.H5 h52) {
        return com.android.tools.r8.ir.optimize.O.f54787d;
    }
}
