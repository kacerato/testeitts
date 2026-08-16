package com.android.tools.r8.internal;

import com.android.tools.r8.graph.C4554l1;
import java.util.Set;
import java.util.function.Consumer;

public final class KH0 implements Consumer {

    public final Set f41631b;

    public KH0(Set set) {
        this.f41631b = set;
    }

    @Override
    public final void accept(Object obj) {
        this.f41631b.add((C4554l1) obj);
    }
}
