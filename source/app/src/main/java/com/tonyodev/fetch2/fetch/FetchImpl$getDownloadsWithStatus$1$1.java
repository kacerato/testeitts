package com.tonyodev.fetch2.fetch;

import android.os.Handler;
import com.tonyodev.fetch2.Download;
import com.tonyodev.fetch2.Status;
import com.tonyodev.fetch2core.Func;
import java.util.List;

public final class FetchImpl$getDownloadsWithStatus$1$1 extends kotlin.jvm.internal.O implements Mf.a<nf.P0> {
    final Func<List<Download>> $func;
    final Status $status;
    final FetchImpl this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public FetchImpl$getDownloadsWithStatus$1$1(FetchImpl fetchImpl, Status status, Func<List<Download>> func) {
        super(0);
        this.this$0 = fetchImpl;
        this.$status = status;
        this.$func = func;
    }

    public static final void invoke$lambda$0(Func func, List downloads) {
        kotlin.jvm.internal.M.p(func, "$func");
        kotlin.jvm.internal.M.p(downloads, "$downloads");
        func.call(downloads);
    }

    @Override
    public nf.P0 invoke() {
        invoke2();
        return nf.P0.f98194a;
    }

    public final void invoke2() {
        Handler handler;
        final List<Download> downloadsWithStatus = this.this$0.fetchHandler.getDownloadsWithStatus(this.$status);
        handler = this.this$0.uiHandler;
        final Func<List<Download>> func = this.$func;
        handler.post(new Runnable() {
            @Override
            public final void run() {
                FetchImpl$getDownloadsWithStatus$1$1.invoke$lambda$0(Func.this, downloadsWithStatus);
            }
        });
    }
}
