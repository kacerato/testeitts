package com.tonyodev.fetch2.fetch;

import android.os.Handler;
import com.tonyodev.fetch2core.DownloadBlock;
import com.tonyodev.fetch2core.Func;
import java.util.List;

public final class FetchImpl$getDownloadBlocks$1$1 extends kotlin.jvm.internal.O implements Mf.a<nf.P0> {
    final int $downloadId;
    final Func<List<DownloadBlock>> $func;
    final FetchImpl this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public FetchImpl$getDownloadBlocks$1$1(FetchImpl fetchImpl, int i10, Func<List<DownloadBlock>> func) {
        super(0);
        this.this$0 = fetchImpl;
        this.$downloadId = i10;
        this.$func = func;
    }

    public static final void invoke$lambda$0(Func func, List downloadBlocksList) {
        kotlin.jvm.internal.M.p(func, "$func");
        kotlin.jvm.internal.M.p(downloadBlocksList, "$downloadBlocksList");
        func.call(downloadBlocksList);
    }

    @Override
    public nf.P0 invoke() {
        invoke2();
        return nf.P0.f98194a;
    }

    public final void invoke2() {
        Handler handler;
        final List<DownloadBlock> downloadBlocks = this.this$0.fetchHandler.getDownloadBlocks(this.$downloadId);
        handler = this.this$0.uiHandler;
        final Func<List<DownloadBlock>> func = this.$func;
        handler.post(new Runnable() {
            @Override
            public final void run() {
                FetchImpl$getDownloadBlocks$1$1.invoke$lambda$0(Func.this, downloadBlocks);
            }
        });
    }
}
