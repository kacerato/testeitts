package androidx.core.os;

import nf.P0;

public final class HandlerKt$postAtTime$runnable$1 implements Runnable {
    final Mf.a<P0> $action;

    public HandlerKt$postAtTime$runnable$1(Mf.a<P0> aVar) {
        this.$action = aVar;
    }

    @Override
    public final void run() {
        this.$action.invoke();
    }
}
