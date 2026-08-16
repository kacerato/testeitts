package com.tonyodev.fetch2.fetch;

import android.os.Handler;
import com.tonyodev.fetch2.Error;
import com.tonyodev.fetch2.FetchErrorUtils;
import com.tonyodev.fetch2.Request;
import com.tonyodev.fetch2core.Func;
import com.tonyodev.fetch2core.Logger;

public final class FetchImpl$getContentLengthForRequest$1$1 extends kotlin.jvm.internal.O implements Mf.a<nf.P0> {
    final boolean $fromServer;
    final Func<Long> $func;
    final Func<Error> $func2;
    final Request $request;
    final FetchImpl this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public FetchImpl$getContentLengthForRequest$1$1(FetchImpl fetchImpl, Request request, boolean z10, Func<Error> func, Func<Long> func2) {
        super(0);
        this.this$0 = fetchImpl;
        this.$request = request;
        this.$fromServer = z10;
        this.$func2 = func;
        this.$func = func2;
    }

    public static final void invoke$lambda$0(Func func, long j10) {
        kotlin.jvm.internal.M.p(func, "$func");
        func.call(Long.valueOf(j10));
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
        try {
            final long contentLengthForRequest = this.this$0.fetchHandler.getContentLengthForRequest(this.$request, this.$fromServer);
            handler2 = this.this$0.uiHandler;
            final Func<Long> func = this.$func;
            handler2.post(new Runnable() {
                @Override
                public final void run() {
                    FetchImpl$getContentLengthForRequest$1$1.invoke$lambda$0(Func.this, contentLengthForRequest);
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
                        FetchImpl$getContentLengthForRequest$1$1.invoke$lambda$1(Func.this, errorFromMessage);
                    }
                });
            }
        }
    }
}
