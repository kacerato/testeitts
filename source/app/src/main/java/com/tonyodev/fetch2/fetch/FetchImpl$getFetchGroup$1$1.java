package com.tonyodev.fetch2.fetch;

import android.os.Handler;
import com.tonyodev.fetch2.FetchGroup;
import com.tonyodev.fetch2core.Func;

public final class FetchImpl$getFetchGroup$1$1 extends kotlin.jvm.internal.O implements Mf.a<nf.P0> {
    final Func<FetchGroup> $func;
    final int $group;
    final FetchImpl this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public FetchImpl$getFetchGroup$1$1(FetchImpl fetchImpl, int i10, Func<FetchGroup> func) {
        super(0);
        this.this$0 = fetchImpl;
        this.$group = i10;
        this.$func = func;
    }

    public static final void invoke$lambda$0(Func func, FetchGroup fetchGroup) {
        kotlin.jvm.internal.M.p(func, "$func");
        kotlin.jvm.internal.M.p(fetchGroup, "$fetchGroup");
        func.call(fetchGroup);
    }

    @Override
    public nf.P0 invoke() {
        invoke2();
        return nf.P0.f98194a;
    }

    public final void invoke2() {
        Handler handler;
        final FetchGroup fetchGroup = this.this$0.fetchHandler.getFetchGroup(this.$group);
        handler = this.this$0.uiHandler;
        final Func<FetchGroup> func = this.$func;
        handler.post(new Runnable() {
            @Override
            public final void run() {
                FetchImpl$getFetchGroup$1$1.invoke$lambda$0(Func.this, fetchGroup);
            }
        });
    }
}
