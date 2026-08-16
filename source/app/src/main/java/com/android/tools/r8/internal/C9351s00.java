package com.android.tools.r8.internal;

import com.android.tools.r8.ClassFileConsumer;
import com.android.tools.r8.graph.C4798y;
import java.util.function.Function;

public final class C9351s00 extends AbstractC10644zm0 {

    public static final boolean f52246c = true;

    public final C4798y f52247b;

    public C9351s00(C4798y c4798y) {
        if (!f52246c && !(c4798y.E().f50697l instanceof ClassFileConsumer)) {
            throw new AssertionError();
        }
        this.f52247b = c4798y;
    }

    @Override
    public final boolean a(com.android.tools.r8.graph.H2 h22) {
        return h22.c(new Function() {
            @Override
            public final Object apply(Object obj) {
                return C9351s00.this.a((com.android.tools.r8.graph.H5) obj);
            }
        }).d();
    }

    @Override
    public final String f() {
        return "NoConstructorMethodHandleFromLambda";
    }

    public final AbstractC6333Zs0 a(com.android.tools.r8.graph.H5 h52) {
        return this.f52247b.a(h52).g(this.f52247b.E()) ? C6276Ys0.f46097c : C6162Ws0.f45559c;
    }
}
