package com.tonyodev.fetch2.fetch;

import android.os.Handler;
import com.tonyodev.fetch2core.Func;
import java.util.List;

public final class FetchImpl$getAllGroupIds$1$1 extends kotlin.jvm.internal.O implements Mf.a<nf.P0> {
    final Func<List<Integer>> $func;
    final FetchImpl this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public FetchImpl$getAllGroupIds$1$1(FetchImpl fetchImpl, Func<List<Integer>> func) {
        super(0);
        this.this$0 = fetchImpl;
        this.$func = func;
    }

    public static final void invoke$lambda$0(Func func, List groupIdList) {
        kotlin.jvm.internal.M.p(func, "$func");
        kotlin.jvm.internal.M.p(groupIdList, "$groupIdList");
        func.call(groupIdList);
    }

    @Override
    public nf.P0 invoke() {
        invoke2();
        return nf.P0.f98194a;
    }

    public final void invoke2() {
        Handler handler;
        final List<Integer> allGroupIds = this.this$0.fetchHandler.getAllGroupIds();
        handler = this.this$0.uiHandler;
        final Func<List<Integer>> func = this.$func;
        handler.post(new Runnable() {
            @Override
            public final void run() {
                FetchImpl$getAllGroupIds$1$1.invoke$lambda$0(Func.this, allGroupIds);
            }
        });
    }
}
