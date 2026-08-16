package com.tonyodev.fetch2.fetch;

import com.tonyodev.fetch2.Download;
import com.tonyodev.fetch2core.FetchObserver;
import java.util.Arrays;

public final class FetchImpl$attachFetchObserversForDownload$1$1 extends kotlin.jvm.internal.O implements Mf.a<nf.P0> {
    final int $downloadId;
    final FetchObserver<Download>[] $fetchObservers;
    final FetchImpl this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public FetchImpl$attachFetchObserversForDownload$1$1(FetchImpl fetchImpl, int i10, FetchObserver<Download>[] fetchObserverArr) {
        super(0);
        this.this$0 = fetchImpl;
        this.$downloadId = i10;
        this.$fetchObservers = fetchObserverArr;
    }

    @Override
    public nf.P0 invoke() {
        invoke2();
        return nf.P0.f98194a;
    }

    public final void invoke2() {
        FetchHandler fetchHandler = this.this$0.fetchHandler;
        int i10 = this.$downloadId;
        FetchObserver<Download>[] fetchObserverArr = this.$fetchObservers;
        fetchHandler.addFetchObserversForDownload(i10, (FetchObserver[]) Arrays.copyOf(fetchObserverArr, fetchObserverArr.length));
    }
}
