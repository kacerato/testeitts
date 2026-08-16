package com.android.tools.r8.shaking;

import com.android.tools.r8.experimental.graphinfo.GraphConsumer;
import com.android.tools.r8.graph.C4514j;
import com.android.tools.r8.graph.C4798y;
import com.android.tools.r8.internal.C5658Oa0;
import com.android.tools.r8.internal.InterfaceC6160Wr0;
import com.android.tools.r8.internal.M70;
import com.android.tools.r8.shaking.N;
import java.util.Set;
import java.util.concurrent.ExecutorService;

public class C11178e0 {
    public static N a(C4798y<? extends C4514j> c4798y, M70 m70, ExecutorService executorService, com.android.tools.r8.graph.Y5 y52) {
        return new N(c4798y, m70, executorService, y52, null, N.a.f56825b, null, null);
    }

    public static N a(C4798y c4798y, ExecutorService executorService, com.android.tools.r8.graph.Y5 y52, GraphConsumer graphConsumer, Set set, K4 k42) {
        final N n10 = new N(c4798y, M70.b(c4798y), executorService, y52, graphConsumer, N.a.f56826c, set, k42);
        InterfaceC6160Wr0 interfaceC6160Wr0 = new InterfaceC6160Wr0() {
            @Override
            public final void accept(Object obj) {
                C11178e0.a(N.this, (C5658Oa0) obj);
            }
        };
        C5658Oa0 c5658Oa0 = c4798y.f38388C;
        if (c5658Oa0 != null) {
            interfaceC6160Wr0.accept(c5658Oa0);
        }
        return n10;
    }

    public static void a(N n10, C5658Oa0 c5658Oa0) {
        Set set = c5658Oa0.f42930i;
        if (!N.f56757p0 && !n10.f56786b.a()) {
            throw new AssertionError();
        }
        n10.f56764G = set;
    }
}
