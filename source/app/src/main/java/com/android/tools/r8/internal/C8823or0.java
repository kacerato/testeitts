package com.android.tools.r8.internal;

import com.android.tools.r8.graph.C4798y;
import java.util.ArrayList;
import java.util.concurrent.ExecutorService;
import java.util.function.Consumer;

public final class C8823or0 {

    public static final boolean f51371c = true;

    public final C4798y f51372a;

    public final ArrayList f51373b;

    public C8823or0(C4798y c4798y, ArrayList arrayList) {
        this.f51372a = c4798y;
        this.f51373b = arrayList;
    }

    public final void a(ExecutorService executorService) {
        if (this.f51373b.isEmpty()) {
            return;
        }
        if (!f51371c) {
            this.f51372a.b().e();
        }
        final C8048kB c8048kB = new C8048kB(this.f51372a);
        C5467Kr0.a(this.f51373b, new Consumer() {
            @Override
            public final void accept(Object obj) {
                C8823or0.this.a(c8048kB, (com.android.tools.r8.graph.H5) obj);
            }
        }, this.f51372a.E().G(), executorService);
        this.f51372a.b().b();
    }

    public final void a(C8048kB c8048kB, com.android.tools.r8.graph.H5 h52) {
        C4798y<?> c4798y = this.f51372a;
        c8048kB.a(h52.a(c4798y, EW.b(c4798y)), AbstractC8529n40.f50496b, C8659ns0.c());
    }
}
