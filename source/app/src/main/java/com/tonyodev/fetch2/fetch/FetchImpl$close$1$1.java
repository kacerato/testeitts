package com.tonyodev.fetch2.fetch;

import com.tonyodev.fetch2core.Logger;

public final class FetchImpl$close$1$1 extends kotlin.jvm.internal.O implements Mf.a<nf.P0> {
    final FetchImpl this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public FetchImpl$close$1$1(FetchImpl fetchImpl) {
        super(0);
        this.this$0 = fetchImpl;
    }

    @Override
    public nf.P0 invoke() {
        invoke2();
        return nf.P0.f98194a;
    }

    public final void invoke2() {
        Logger logger;
        try {
            this.this$0.fetchHandler.close();
        } catch (Exception e10) {
            logger = this.this$0.logger;
            logger.e("exception occurred whiles shutting down Fetch with namespace:" + this.this$0.getNamespace(), e10);
        }
    }
}
