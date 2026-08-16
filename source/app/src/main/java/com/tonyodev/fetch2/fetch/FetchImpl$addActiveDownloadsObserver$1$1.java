package com.tonyodev.fetch2.fetch;

import com.tonyodev.fetch2.util.ActiveDownloadInfo;
import com.tonyodev.fetch2core.FetchObserver;
import java.util.Set;

public final class FetchImpl$addActiveDownloadsObserver$1$1 extends kotlin.jvm.internal.O implements Mf.a<nf.P0> {
    final FetchObserver<Boolean> $fetchObserver;
    final boolean $includeAddedDownloads;
    final FetchImpl this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public FetchImpl$addActiveDownloadsObserver$1$1(FetchImpl fetchImpl, FetchObserver<Boolean> fetchObserver, boolean z10) {
        super(0);
        this.this$0 = fetchImpl;
        this.$fetchObserver = fetchObserver;
        this.$includeAddedDownloads = z10;
    }

    @Override
    public nf.P0 invoke() {
        invoke2();
        return nf.P0.f98194a;
    }

    public final void invoke2() {
        Set set;
        set = this.this$0.activeDownloadsSet;
        set.add(new ActiveDownloadInfo(this.$fetchObserver, this.$includeAddedDownloads));
    }
}
