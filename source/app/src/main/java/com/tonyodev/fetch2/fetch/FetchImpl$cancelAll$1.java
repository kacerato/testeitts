package com.tonyodev.fetch2.fetch;

import com.tonyodev.fetch2.Download;
import java.util.List;
import org.jetbrains.annotations.NotNull;

public final class FetchImpl$cancelAll$1 extends kotlin.jvm.internal.O implements Mf.a<List<? extends Download>> {
    final FetchImpl this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public FetchImpl$cancelAll$1(FetchImpl fetchImpl) {
        super(0);
        this.this$0 = fetchImpl;
    }

    @Override
    @NotNull
    public final List<? extends Download> invoke() {
        return this.this$0.fetchHandler.cancelAll();
    }
}
