package com.android.tools.r8.internal;

import com.android.tools.r8.retrace.RetracedSingleFrame;
import java.util.function.Consumer;
import java.util.stream.Stream;

public final class C10097wV0 implements Consumer {

    public final Stream.Builder f53518b;

    @Override
    public final void accept(Object obj) {
        this.f53518b.add((RetracedSingleFrame) obj);
    }
}
