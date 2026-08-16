package com.tonyodev.fetch2.fetch;

import com.tonyodev.fetch2.util.ActiveDownloadInfo;
import com.tonyodev.fetch2core.FetchObserver;
import com.tonyodev.fetch2core.Logger;
import java.util.Iterator;
import java.util.Set;

public final class FetchImpl$removeActiveDownloadsObserver$1$1 extends kotlin.jvm.internal.O implements Mf.a<nf.P0> {
    final FetchObserver<Boolean> $fetchObserver;
    final FetchImpl this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public FetchImpl$removeActiveDownloadsObserver$1$1(FetchImpl fetchImpl, FetchObserver<Boolean> fetchObserver) {
        super(0);
        this.this$0 = fetchImpl;
        this.$fetchObserver = fetchObserver;
    }

    @Override
    public nf.P0 invoke() {
        invoke2();
        return nf.P0.f98194a;
    }

    public final void invoke2() {
        Set set;
        Logger logger;
        set = this.this$0.activeDownloadsSet;
        Iterator it = set.iterator();
        while (it.hasNext()) {
            if (kotlin.jvm.internal.M.g(((ActiveDownloadInfo) it.next()).getFetchObserver(), this.$fetchObserver)) {
                it.remove();
                logger = this.this$0.logger;
                logger.d("Removed ActiveDownload FetchObserver " + ((Object) this.$fetchObserver));
                return;
            }
        }
    }
}
