package com.tonyodev.fetch2.fetch;

import com.tonyodev.fetch2.Download;
import com.tonyodev.fetch2.Status;
import java.util.List;
import org.jetbrains.annotations.NotNull;

public final class FetchImpl$deleteAllInGroupWithStatus$1 extends kotlin.jvm.internal.O implements Mf.a<List<? extends Download>> {
    final int $id;
    final List<Status> $statuses;
    final FetchImpl this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public FetchImpl$deleteAllInGroupWithStatus$1(FetchImpl fetchImpl, int i10, List<? extends Status> list) {
        super(0);
        this.this$0 = fetchImpl;
        this.$id = i10;
        this.$statuses = list;
    }

    @Override
    @NotNull
    public final List<? extends Download> invoke() {
        return this.this$0.fetchHandler.deleteAllInGroupWithStatus(this.$id, this.$statuses);
    }
}
