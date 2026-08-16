package com.tonyodev.fetch2.fetch;

import android.os.Handler;
import com.tonyodev.fetch2.FetchErrorUtils;
import com.tonyodev.fetch2.Request;
import com.tonyodev.fetch2.database.DownloadInfo;
import com.tonyodev.fetch2core.Func;
import com.tonyodev.fetch2core.Logger;
import java.util.List;

public final class FetchImpl$enqueueBatch$1$1 extends kotlin.jvm.internal.O implements Mf.a<nf.P0> {
    final Func<List<nf.Z<DownloadInfo, Boolean>>> $func;
    final List<Request> $requests;
    final FetchImpl this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public FetchImpl$enqueueBatch$1$1(FetchImpl fetchImpl, List<? extends Request> list, Func<List<nf.Z<DownloadInfo, Boolean>>> func) {
        super(0);
        this.this$0 = fetchImpl;
        this.$requests = list;
        this.$func = func;
    }

    public static final void invoke$lambda$0(Func func, List enqueueBatch) {
        kotlin.jvm.internal.M.p(enqueueBatch, "$enqueueBatch");
        if (func != null) {
            func.call(enqueueBatch);
        }
    }

    @Override
    public nf.P0 invoke() {
        invoke2();
        return nf.P0.f98194a;
    }

    public final void invoke2() {
        Logger logger;
        Handler handler;
        try {
            final List<nf.Z<DownloadInfo, Boolean>> enqueueBatch = this.this$0.fetchHandler.enqueueBatch(this.$requests);
            handler = this.this$0.uiHandler;
            final Func<List<nf.Z<DownloadInfo, Boolean>>> func = this.$func;
            handler.post(new Runnable() {
                @Override
                public final void run() {
                    FetchImpl$enqueueBatch$1$1.invoke$lambda$0(Func.this, enqueueBatch);
                }
            });
        } catch (Exception e10) {
            logger = this.this$0.logger;
            logger.e("Failed to enqueue list " + ((Object) this.$requests));
            FetchErrorUtils.getErrorFromMessage(e10.getMessage()).setThrowable(e10);
        }
    }
}
