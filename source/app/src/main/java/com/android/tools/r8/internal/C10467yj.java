package com.android.tools.r8.internal;

import com.android.tools.r8.graph.C4798y;
import java.util.function.Consumer;

public final class C10467yj extends AbstractC5012Cw {

    public final C7207f80 f54124m;

    public final Consumer f54125n;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C10467yj(C4798y c4798y, C7215fB c7215fB, C7207f80 c7207f80, C9603tZ c9603tZ, C7207f80 c7207f802, Consumer consumer) {
        super(c4798y, c7215fB, c7207f80, c9603tZ);
        this.f54124m = c7207f802;
        this.f54125n = consumer;
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [java.util.Map, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r3v2, types: [java.util.Map, java.lang.Object] */
    @Override
    public final int b(com.android.tools.r8.graph.F5 f52) {
        if (((com.android.tools.r8.graph.F5) this.f54124m.f47879b.remove(f52.getReference())) != null) {
            this.f54125n.accept(f52);
        }
        return this.f54124m.f47879b.isEmpty() ? 1 : 2;
    }
}
