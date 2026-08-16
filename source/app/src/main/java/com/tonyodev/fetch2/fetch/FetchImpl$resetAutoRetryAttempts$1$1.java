package com.tonyodev.fetch2.fetch;

import android.os.Handler;
import com.tonyodev.fetch2.Download;
import com.tonyodev.fetch2.Error;
import com.tonyodev.fetch2.FetchErrorUtils;
import com.tonyodev.fetch2.Status;
import com.tonyodev.fetch2core.Func;
import com.tonyodev.fetch2core.Func2;
import com.tonyodev.fetch2core.Logger;

public final class FetchImpl$resetAutoRetryAttempts$1$1 extends kotlin.jvm.internal.O implements Mf.a<nf.P0> {
    final int $downloadId;
    final Func2<Download> $func;
    final Func<Error> $func2;
    final boolean $retryDownload;
    final FetchImpl this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public FetchImpl$resetAutoRetryAttempts$1$1(FetchImpl fetchImpl, int i10, boolean z10, Func<Error> func, Func2<Download> func2) {
        super(0);
        this.this$0 = fetchImpl;
        this.$downloadId = i10;
        this.$retryDownload = z10;
        this.$func2 = func;
        this.$func = func2;
    }

    public static final void invoke$lambda$0(Func2 func2, Download download) {
        if (func2 != null) {
            func2.call(download);
        }
    }

    public static final void invoke$lambda$1(Func func, Error error) {
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
        Handler handler2;
        Logger logger2;
        ListenerCoordinator listenerCoordinator;
        try {
            final Download resetAutoRetryAttempts = this.this$0.fetchHandler.resetAutoRetryAttempts(this.$downloadId, this.$retryDownload);
            if (resetAutoRetryAttempts != null && resetAutoRetryAttempts.getStatus() == Status.QUEUED) {
                logger2 = this.this$0.logger;
                logger2.d("Queued " + ((Object) resetAutoRetryAttempts) + " for download");
                listenerCoordinator = this.this$0.listenerCoordinator;
                listenerCoordinator.getMainListener().onQueued(resetAutoRetryAttempts, false);
            }
            handler2 = this.this$0.uiHandler;
            final Func2<Download> func2 = this.$func;
            handler2.post(new Runnable() {
                @Override
                public final void run() {
                    FetchImpl$resetAutoRetryAttempts$1$1.invoke$lambda$0(Func2.this, resetAutoRetryAttempts);
                }
            });
        } catch (Exception e10) {
            logger = this.this$0.logger;
            logger.e("Fetch with namespace " + this.this$0.getNamespace() + " error", e10);
            final Error errorFromMessage = FetchErrorUtils.getErrorFromMessage(e10.getMessage());
            errorFromMessage.setThrowable(e10);
            if (this.$func2 != null) {
                handler = this.this$0.uiHandler;
                final Func<Error> func = this.$func2;
                handler.post(new Runnable() {
                    @Override
                    public final void run() {
                        FetchImpl$resetAutoRetryAttempts$1$1.invoke$lambda$1(Func.this, errorFromMessage);
                    }
                });
            }
        }
    }
}
