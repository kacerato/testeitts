package com.android.tools.r8.internal;

import com.android.tools.r8.graph.C4798y;
import java.util.function.Consumer;
import java.util.function.Function;

public abstract class M70 {
    public static C6520b10 b() {
        return C6520b10.f46682a;
    }

    public abstract M70 a(AbstractC8194l4 abstractC8194l4);

    public abstract M70 a(AbstractC9148qo0 abstractC9148qo0);

    public abstract M70 a(Function function);

    public C9957vg a() {
        return null;
    }

    public abstract void a(com.android.tools.r8.graph.A2 a22, Consumer consumer);

    public abstract void a(com.android.tools.r8.graph.H5 h52, com.android.tools.r8.graph.H5 h53);

    public abstract void a(C4798y c4798y);

    public abstract void c();

    public static M70 b(C4798y c4798y) {
        AbstractC8194l4 abstractC8194l4 = c4798y.f38411d;
        AbstractC9148qo0 abstractC9148qo0 = c4798y.f38424q;
        if (abstractC8194l4.isEmpty() && abstractC9148qo0.c()) {
            return b();
        }
        return new C9957vg(abstractC8194l4, abstractC9148qo0);
    }
}
