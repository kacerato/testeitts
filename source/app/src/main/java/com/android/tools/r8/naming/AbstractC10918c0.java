package com.android.tools.r8.naming;

import java.util.HashMap;
import java.util.function.Function;

public abstract class AbstractC10918c0 {

    public final HashMap f55846a = new HashMap();

    public final Function f55847b;

    public AbstractC10918c0(Function function) {
        this.f55847b = function;
    }

    public abstract Object a(com.android.tools.r8.graph.A2 a22);

    public final Object a(com.android.tools.r8.graph.A2 a22, Object obj) {
        return a(a22);
    }

    public final Object b(com.android.tools.r8.graph.A2 a22) {
        return this.f55846a.get(this.f55847b.apply(a22));
    }

    public final Object c(final com.android.tools.r8.graph.A2 a22) {
        return this.f55846a.computeIfAbsent(this.f55847b.apply(a22), new Function() {
            @Override
            public final Object apply(Object obj) {
                return AbstractC10918c0.this.a(a22, obj);
            }
        });
    }
}
