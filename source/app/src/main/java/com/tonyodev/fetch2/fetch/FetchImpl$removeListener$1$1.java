package com.tonyodev.fetch2.fetch;

import com.tonyodev.fetch2.FetchListener;

public final class FetchImpl$removeListener$1$1 extends kotlin.jvm.internal.O implements Mf.a<nf.P0> {
    final FetchListener $listener;
    final FetchImpl this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public FetchImpl$removeListener$1$1(FetchImpl fetchImpl, FetchListener fetchListener) {
        super(0);
        this.this$0 = fetchImpl;
        this.$listener = fetchListener;
    }

    @Override
    public nf.P0 invoke() {
        invoke2();
        return nf.P0.f98194a;
    }

    public final void invoke2() {
        this.this$0.fetchHandler.removeListener(this.$listener);
    }
}
