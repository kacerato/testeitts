package com.android.tools.r8.internal;

import com.android.tools.r8.graph.C4798y;
import com.android.tools.r8.internal.D1;

public abstract class D1<StateType extends D1<StateType>> implements Cloneable, InterfaceC5700Os0 {
    public boolean a(C4798y c4798y, D1 d12) {
        return equals(b(c4798y, d12));
    }

    public abstract D1 b(C4798y c4798y, D1 d12);

    @Override
    public final boolean b() {
        return true;
    }

    public abstract boolean equals(Object obj);

    @Override
    public D1 mo697clone() {
        return c();
    }
}
