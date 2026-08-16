package com.android.tools.r8.internal;

import java.util.function.Function;

public abstract class AbstractC5913Sj extends AbstractC6029Uj {
    @Override
    public final C5797Qj a(Object obj) {
        return new C5797Qj(obj);
    }

    public abstract void a(C5797Qj c5797Qj, Function function);

    @Override
    public final AbstractC6333Zs0 b(C5797Qj c5797Qj) {
        a(c5797Qj, new Function() {
            @Override
            public final Object apply(Object obj) {
                return AbstractC5913Sj.this.b(obj);
            }
        });
        return C6276Ys0.f46097c;
    }

    @Override
    public final AbstractC6333Zs0 a(C5797Qj c5797Qj) {
        ((C8316lp0) this).f50119f.add((AbstractC5289Hp0) c5797Qj.f43692a);
        return C6276Ys0.f46097c;
    }
}
