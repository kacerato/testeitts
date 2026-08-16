package com.android.tools.r8.internal;

import com.android.tools.r8.graph.C4798y;
import java.util.IdentityHashMap;

public abstract class AbstractC8435mZ extends C8268lZ {

    public static final boolean f50327o = true;

    public com.android.tools.r8.ir.optimize.A f50328n;

    public AbstractC8435mZ(C4798y c4798y, InterfaceC9368s6 interfaceC9368s6, IdentityHashMap identityHashMap, InterfaceC8701o6 interfaceC8701o6, C9035q6 c9035q6) {
        super(c4798y, interfaceC9368s6, identityHashMap, interfaceC8701o6, c9035q6);
    }

    @Override
    public final com.android.tools.r8.ir.optimize.A f() {
        if (f50327o || this.f50328n != null) {
            return this.f50328n;
        }
        throw new AssertionError();
    }

    @Override
    public final boolean h() {
        return true;
    }

    public AbstractC8435mZ(C4798y c4798y, C9201r6 c9201r6, N10 n10) {
        super(c4798y, C8268lZ.f49994j, c9201r6.f51964b, C8268lZ.f49996l, c9201r6);
        this.f50328n = n10;
    }
}
