package com.tonyodev.fetch2.fetch;

import android.os.Handler;
import com.tonyodev.fetch2.Download;
import com.tonyodev.fetch2core.Func2;

public final class FetchImpl$getDownload$1$1 extends kotlin.jvm.internal.O implements Mf.a<nf.P0> {
    final Func2<Download> $func2;
    final int $id;
    final FetchImpl this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public FetchImpl$getDownload$1$1(FetchImpl fetchImpl, int i10, Func2<Download> func2) {
        super(0);
        this.this$0 = fetchImpl;
        this.$id = i10;
        this.$func2 = func2;
    }

    public static final void invoke$lambda$0(Func2 func2, Download download) {
        kotlin.jvm.internal.M.p(func2, "$func2");
        func2.call(download);
    }

    @Override
    public nf.P0 invoke() {
        invoke2();
        return nf.P0.f98194a;
    }

    public final void invoke2() {
        Handler handler;
        final Download download = this.this$0.fetchHandler.getDownload(this.$id);
        handler = this.this$0.uiHandler;
        final Func2<Download> func2 = this.$func2;
        handler.post(new Runnable() {
            @Override
            public final void run() {
                FetchImpl$getDownload$1$1.invoke$lambda$0(Func2.this, download);
            }
        });
    }
}
