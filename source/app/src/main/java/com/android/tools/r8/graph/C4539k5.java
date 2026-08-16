package com.android.tools.r8.graph;

import com.android.tools.r8.graph.Z4;
import java.util.function.Consumer;

public final class C4539k5 extends Z4.c {
    public C4539k5(E0 e02, C4725u2 c4725u2, C4516j1 c4516j1) {
        super(e02, c4725u2, c4516j1);
    }

    @Override
    public final Z4.c a(E0 e02) {
        return e02 != this.f37020b ? new C4539k5(e02, (C4725u2) d(), q()) : this;
    }

    @Override
    public final void a(Consumer consumer, Consumer consumer2, Consumer consumer3, Consumer consumer4) {
        consumer2.accept(this);
    }
}
