package com.tonyodev.fetch2.fetch;

import com.tonyodev.fetch2.Download;
import com.tonyodev.fetch2.Status;
import java.util.List;
import org.jetbrains.annotations.NotNull;

public final class FetchImpl$removeAllWithStatus$1 extends kotlin.jvm.internal.O implements Mf.a<List<? extends Download>> {
    final Status $status;
    final FetchImpl this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public FetchImpl$removeAllWithStatus$1(FetchImpl fetchImpl, Status status) {
        super(0);
        this.this$0 = fetchImpl;
        this.$status = status;
    }

    @Override
    @NotNull
    public final List<? extends Download> invoke() {
        return this.this$0.fetchHandler.removeAllWithStatus(this.$status);
    }
}
