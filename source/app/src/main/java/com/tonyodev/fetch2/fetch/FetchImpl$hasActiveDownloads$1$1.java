package com.tonyodev.fetch2.fetch;

import android.os.Handler;
import com.tonyodev.fetch2core.Func;

public final class FetchImpl$hasActiveDownloads$1$1 extends kotlin.jvm.internal.O implements Mf.a<nf.P0> {
    final Func<Boolean> $func;
    final boolean $includeAddedDownloads;
    final FetchImpl this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public FetchImpl$hasActiveDownloads$1$1(FetchImpl fetchImpl, boolean z10, Func<Boolean> func) {
        super(0);
        this.this$0 = fetchImpl;
        this.$includeAddedDownloads = z10;
        this.$func = func;
    }

    public static final void invoke$lambda$0(Func func, boolean z10) {
        kotlin.jvm.internal.M.p(func, "$func");
        func.call(Boolean.valueOf(z10));
    }

    @Override
    public nf.P0 invoke() {
        invoke2();
        return nf.P0.f98194a;
    }

    public final void invoke2() {
        Handler handler;
        final boolean hasActiveDownloads = this.this$0.fetchHandler.hasActiveDownloads(this.$includeAddedDownloads);
        handler = this.this$0.uiHandler;
        final Func<Boolean> func = this.$func;
        handler.post(new Runnable() {
            @Override
            public final void run() {
                FetchImpl$hasActiveDownloads$1$1.invoke$lambda$0(Func.this, hasActiveDownloads);
            }
        });
    }
}
