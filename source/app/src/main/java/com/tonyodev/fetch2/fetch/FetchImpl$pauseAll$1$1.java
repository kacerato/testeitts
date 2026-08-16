package com.tonyodev.fetch2.fetch;

import com.tonyodev.fetch2.Download;
import com.tonyodev.fetch2.FetchErrorUtils;
import com.tonyodev.fetch2core.Logger;
import java.util.List;

@kotlin.jvm.internal.t0({"SMAP\nFetchImpl.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FetchImpl.kt\ncom/tonyodev/fetch2/fetch/FetchImpl$pauseAll$1$1\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,1305:1\n1855#2,2:1306\n*S KotlinDebug\n*F\n+ 1 FetchImpl.kt\ncom/tonyodev/fetch2/fetch/FetchImpl$pauseAll$1$1\n*L\n238#1:1306,2\n*E\n"})
public final class FetchImpl$pauseAll$1$1 extends kotlin.jvm.internal.O implements Mf.a<nf.P0> {
    final FetchImpl this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public FetchImpl$pauseAll$1$1(FetchImpl fetchImpl) {
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
        Logger logger2;
        ListenerCoordinator listenerCoordinator;
        try {
            List<Download> pauseAll = this.this$0.fetchHandler.pauseAll();
            FetchImpl fetchImpl = this.this$0;
            for (Download download : pauseAll) {
                logger2 = fetchImpl.logger;
                logger2.d("Paused download " + ((Object) download));
                listenerCoordinator = fetchImpl.listenerCoordinator;
                listenerCoordinator.getMainListener().onPaused(download);
            }
        } catch (Exception e10) {
            logger = this.this$0.logger;
            logger.e("Fetch with namespace " + this.this$0.getNamespace() + " error", e10);
            FetchErrorUtils.getErrorFromMessage(e10.getMessage()).setThrowable(e10);
        }
    }
}
