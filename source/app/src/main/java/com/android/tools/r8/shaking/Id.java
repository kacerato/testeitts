package com.android.tools.r8.shaking;

import java.util.Set;
import java.util.function.Consumer;

public final class Id implements Consumer {

    public final Set f56633b;

    @Override
    public final void accept(Object obj) {
        this.f56633b.add((com.android.tools.r8.graph.M2) obj);
    }
}
