package com.tonyodev.fetch2.fetch;

import com.tonyodev.fetch2.Download;
import java.util.List;
import org.jetbrains.annotations.NotNull;

public final class FetchImpl$cancel$1 extends kotlin.jvm.internal.O implements Mf.a<List<? extends Download>> {
    final List<Integer> $ids;
    final FetchImpl this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public FetchImpl$cancel$1(FetchImpl fetchImpl, List<Integer> list) {
        super(0);
        this.this$0 = fetchImpl;
        this.$ids = list;
    }

    @Override
    @NotNull
    public final List<? extends Download> invoke() {
        return this.this$0.fetchHandler.cancel(this.$ids);
    }
}
