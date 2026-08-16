package com.tonyodev.fetch2.fetch;

import android.os.Handler;
import com.tonyodev.fetch2.Download;
import com.tonyodev.fetch2.Error;
import com.tonyodev.fetch2.FetchErrorUtils;
import com.tonyodev.fetch2core.Func;
import com.tonyodev.fetch2core.Logger;
import java.util.List;

@kotlin.jvm.internal.t0({"SMAP\nFetchImpl.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FetchImpl.kt\ncom/tonyodev/fetch2/fetch/FetchImpl$resumeDownloads$1$1\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,1305:1\n1855#2,2:1306\n*S KotlinDebug\n*F\n+ 1 FetchImpl.kt\ncom/tonyodev/fetch2/fetch/FetchImpl$resumeDownloads$1$1\n*L\n358#1:1306,2\n*E\n"})
public final class FetchImpl$resumeDownloads$1$1 extends kotlin.jvm.internal.O implements Mf.a<nf.P0> {
    final Func<List<Download>> $func;
    final Func<Error> $func2;
    final Integer $groupId;
    final List<Integer> $ids;
    final FetchImpl this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public FetchImpl$resumeDownloads$1$1(List<Integer> list, FetchImpl fetchImpl, Integer num, Func<Error> func, Func<List<Download>> func2) {
        super(0);
        this.$ids = list;
        this.this$0 = fetchImpl;
        this.$groupId = num;
        this.$func2 = func;
        this.$func = func2;
    }

    public static final void invoke$lambda$1(Func func, List downloads) {
        kotlin.jvm.internal.M.p(downloads, "$downloads");
        if (func != null) {
            func.call(downloads);
        }
    }

    public static final void invoke$lambda$2(Func func, Error error) {
        kotlin.jvm.internal.M.p(error, "$error");
        func.call(error);
    }

    @Override
    public nf.P0 invoke() {
        invoke2();
        return nf.P0.f98194a;
    }

    public final void invoke2() {
        Logger logger;
        Handler handler;
        final List<Download> J10;
        Handler handler2;
        Logger logger2;
        ListenerCoordinator listenerCoordinator;
        Logger logger3;
        ListenerCoordinator listenerCoordinator2;
        try {
            if (this.$ids != null) {
                J10 = this.this$0.fetchHandler.resume(this.$ids);
            } else if (this.$groupId != null) {
                J10 = this.this$0.fetchHandler.resumeGroup(this.$groupId.intValue());
            } else {
                J10 = pf.H.J();
            }
            FetchImpl fetchImpl = this.this$0;
            for (Download download : J10) {
                logger2 = fetchImpl.logger;
                logger2.d("Queued download " + ((Object) download));
                listenerCoordinator = fetchImpl.listenerCoordinator;
                listenerCoordinator.getMainListener().onQueued(download, false);
                logger3 = fetchImpl.logger;
                logger3.d("Resumed download " + ((Object) download));
                listenerCoordinator2 = fetchImpl.listenerCoordinator;
                listenerCoordinator2.getMainListener().onResumed(download);
            }
            handler2 = this.this$0.uiHandler;
            final Func<List<Download>> func = this.$func;
            handler2.post(new Runnable() {
                @Override
                public final void run() {
                    FetchImpl$resumeDownloads$1$1.invoke$lambda$1(Func.this, J10);
                }
            });
        } catch (Exception e10) {
            logger = this.this$0.logger;
            logger.e("Fetch with namespace " + this.this$0.getNamespace() + " error", e10);
            final Error errorFromMessage = FetchErrorUtils.getErrorFromMessage(e10.getMessage());
            errorFromMessage.setThrowable(e10);
            if (this.$func2 != null) {
                handler = this.this$0.uiHandler;
                final Func<Error> func2 = this.$func2;
                handler.post(new Runnable() {
                    @Override
                    public final void run() {
                        FetchImpl$resumeDownloads$1$1.invoke$lambda$2(Func.this, errorFromMessage);
                    }
                });
            }
        }
    }
}
