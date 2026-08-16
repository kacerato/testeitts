package com.android.tools.r8.shaking;

import com.android.tools.r8.internal.C7541h80;
import java.util.function.BiConsumer;

public final class S9 implements BiConsumer {

    public final C7541h80 f56976a;

    public S9(C7541h80 c7541h80) {
        this.f56976a = c7541h80;
    }

    @Override
    public final void accept(Object obj, Object obj2) {
        this.f56976a.b((com.android.tools.r8.graph.H5) obj, (com.android.tools.r8.graph.H5) obj2);
    }
}
