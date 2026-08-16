package com.tonyodev.fetch2.helper;

import com.tonyodev.fetch2.provider.NetworkInfoProvider;
import kotlin.jvm.internal.O;
import nf.P0;

public final class PriorityListProcessorImpl$networkChangeListener$1$onNetworkChanged$1 extends O implements Mf.a<P0> {
    final PriorityListProcessorImpl this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public PriorityListProcessorImpl$networkChangeListener$1$onNetworkChanged$1(PriorityListProcessorImpl priorityListProcessorImpl) {
        super(0);
        this.this$0 = priorityListProcessorImpl;
    }

    @Override
    public P0 invoke() {
        invoke2();
        return P0.f98194a;
    }

    public final void invoke2() {
        boolean z10;
        boolean z11;
        NetworkInfoProvider networkInfoProvider;
        long j10;
        z10 = this.this$0.stopped;
        if (z10) {
            return;
        }
        z11 = this.this$0.paused;
        if (z11) {
            return;
        }
        networkInfoProvider = this.this$0.networkInfoProvider;
        if (networkInfoProvider.isNetworkAvailable()) {
            j10 = this.this$0.backOffTime;
            if (j10 > 500) {
                this.this$0.resetBackOffTime();
            }
        }
    }
}
