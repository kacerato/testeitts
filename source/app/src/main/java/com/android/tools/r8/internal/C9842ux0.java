package com.android.tools.r8.internal;

import com.android.tools.r8.graph.C4387c4;
import com.android.tools.r8.graph.C4798y;
import com.android.tools.r8.shaking.C11297l1;
import com.android.tools.r8.shaking.C11500x1;
import java.util.Collections;
import java.util.List;
import java.util.function.Consumer;

public final class C9842ux0 extends AbstractC10176wx0 {
    public C9842ux0(C4798y c4798y, C4387c4 c4387c4) {
        super(c4798y, c4387c4);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public final void a(Consumer consumer, com.android.tools.r8.graph.H2 h22) {
        List list = (List) this.f45516b.f37096b.getOrDefault(h22, Collections.EMPTY_LIST);
        if (list.isEmpty()) {
            if (this.f45515a.H().f50833N0 || h22.l1() || h22.isInterface() || !((C11297l1) ((C11500x1) this.f45515a.r()).f57962b.getOrDefault(h22.f36245e, C11297l1.f57491t)).c(this.f45515a.E())) {
                return;
            }
            h22.getAccessFlags().p();
            return;
        }
        list.forEach(consumer);
    }

    @Override
    public final void a(com.android.tools.r8.graph.H5 h52, C10009vx0 c10009vx0) {
        if (this.f45515a.H().f50831M0 || h52.getHolder().isInterface() || h52.getAccessFlags().H() || !c10009vx0.f53383c.isEmpty() || !this.f45515a.a(h52).c(this.f45515a.E())) {
            return;
        }
        h52.getAccessFlags().p();
    }
}
