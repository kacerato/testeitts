package com.tonyodev.fetch2.fetch;

import com.tonyodev.fetch2.NetworkType;

public final class FetchImpl$setGlobalNetworkType$1$1 extends kotlin.jvm.internal.O implements Mf.a<nf.P0> {
    final NetworkType $networkType;
    final FetchImpl this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public FetchImpl$setGlobalNetworkType$1$1(FetchImpl fetchImpl, NetworkType networkType) {
        super(0);
        this.this$0 = fetchImpl;
        this.$networkType = networkType;
    }

    @Override
    public nf.P0 invoke() {
        invoke2();
        return nf.P0.f98194a;
    }

    public final void invoke2() {
        this.this$0.fetchHandler.setGlobalNetworkType(this.$networkType);
    }
}
