package com.android.tools.r8.internal;

import com.android.tools.r8.graph.C4554l1;
import java.util.function.Supplier;

public interface InterfaceC5825Qx {
    AbstractC5361Iw0 a(C4554l1 c4554l1);

    default AbstractC5361Iw0 a(Q5 q52, Supplier supplier) {
        if (q52.x()) {
            return a(q52.D().f43410a);
        }
        if (AbstractC5767Px.f43414a || q52.o()) {
            return a(q52.C(), supplier);
        }
        throw new AssertionError();
    }

    AbstractC5361Iw0 a(C6431aX c6431aX, Supplier supplier);
}
