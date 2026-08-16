package com.tonyodev.fetch2.fetch;

public final class FetchImpl$setDownloadConcurrentLimit$1$1 extends kotlin.jvm.internal.O implements Mf.a<nf.P0> {
    final int $downloadConcurrentLimit;
    final FetchImpl this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public FetchImpl$setDownloadConcurrentLimit$1$1(FetchImpl fetchImpl, int i10) {
        super(0);
        this.this$0 = fetchImpl;
        this.$downloadConcurrentLimit = i10;
    }

    @Override
    public nf.P0 invoke() {
        invoke2();
        return nf.P0.f98194a;
    }

    public final void invoke2() {
        this.this$0.fetchHandler.setDownloadConcurrentLimit(this.$downloadConcurrentLimit);
    }
}
