package com.tonyodev.fetch2.fetch;

import android.os.Handler;
import com.tonyodev.fetch2.Error;
import com.tonyodev.fetch2.FetchErrorUtils;
import com.tonyodev.fetch2.Request;
import com.tonyodev.fetch2core.Func;
import com.tonyodev.fetch2core.Logger;
import java.util.ArrayList;
import java.util.List;

public final class FetchImpl$getContentLengthForRequests$1$1 extends kotlin.jvm.internal.O implements Mf.a<nf.P0> {
    final boolean $fromServer;
    final Func<List<nf.Z<Request, Long>>> $func;
    final Func<List<nf.Z<Request, Error>>> $func2;
    final List<Request> $requests;
    final FetchImpl this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public FetchImpl$getContentLengthForRequests$1$1(List<? extends Request> list, FetchImpl fetchImpl, boolean z10, Func<List<nf.Z<Request, Long>>> func, Func<List<nf.Z<Request, Error>>> func2) {
        super(0);
        this.$requests = list;
        this.this$0 = fetchImpl;
        this.$fromServer = z10;
        this.$func = func;
        this.$func2 = func2;
    }

    public static final void invoke$lambda$0(Func func, List results) {
        kotlin.jvm.internal.M.p(func, "$func");
        kotlin.jvm.internal.M.p(results, "$results");
        func.call(results);
    }

    public static final void invoke$lambda$1(Func func2, List results2) {
        kotlin.jvm.internal.M.p(func2, "$func2");
        kotlin.jvm.internal.M.p(results2, "$results2");
        func2.call(results2);
    }

    @Override
    public nf.P0 invoke() {
        invoke2();
        return nf.P0.f98194a;
    }

    public final void invoke2() {
        Handler handler;
        Handler handler2;
        Logger logger;
        final ArrayList arrayList = new ArrayList();
        final ArrayList arrayList2 = new ArrayList();
        for (Request request : this.$requests) {
            try {
                arrayList.add(new nf.Z(request, Long.valueOf(this.this$0.fetchHandler.getContentLengthForRequest(request, this.$fromServer))));
            } catch (Exception e10) {
                logger = this.this$0.logger;
                logger.e("Fetch with namespace " + this.this$0.getNamespace() + " error", e10);
                Error errorFromMessage = FetchErrorUtils.getErrorFromMessage(e10.getMessage());
                errorFromMessage.setThrowable(e10);
                arrayList2.add(new nf.Z(request, errorFromMessage));
            }
        }
        handler = this.this$0.uiHandler;
        final Func<List<nf.Z<Request, Long>>> func = this.$func;
        handler.post(new Runnable() {
            @Override
            public final void run() {
                FetchImpl$getContentLengthForRequests$1$1.invoke$lambda$0(Func.this, arrayList);
            }
        });
        handler2 = this.this$0.uiHandler;
        final Func<List<nf.Z<Request, Error>>> func2 = this.$func2;
        handler2.post(new Runnable() {
            @Override
            public final void run() {
                FetchImpl$getContentLengthForRequests$1$1.invoke$lambda$1(Func.this, arrayList2);
            }
        });
    }
}
