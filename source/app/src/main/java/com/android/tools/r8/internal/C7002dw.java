package com.android.tools.r8.internal;

import com.android.tools.r8.graph.AbstractC4458g;
import com.android.tools.r8.graph.C4537k3;
import com.android.tools.r8.graph.C4798y;
import com.android.tools.r8.shaking.C11245i;
import java.util.concurrent.ExecutorService;
import java.util.function.Consumer;

public final class C7002dw {

    public final C4798y f47549a;

    public C7002dw(C4798y c4798y) {
        this.f47549a = c4798y;
    }

    public static void a(final C4798y c4798y, C8659ns0 c8659ns0, final ExecutorService executorService) {
        c8659ns0.a("Finalize fields pass", new InterfaceC5930Sr0() {
            @Override
            public final void a() {
                C7002dw.a(C4798y.this, executorService);
            }
        });
    }

    public static void a(C4798y c4798y, ExecutorService executorService) {
        if (c4798y.E().f50693j1.a() && c4798y.E().T() && c4798y.E().W()) {
            new C7002dw(c4798y).a(executorService);
        }
    }

    public final void a(ExecutorService executorService) {
        com.android.tools.r8.J.a(this.f47549a, ((C11245i) this.f47549a.f()).d(), new Consumer() {
            @Override
            public final void accept(Object obj) {
                C7002dw.this.a((com.android.tools.r8.graph.H2) obj);
            }
        }, executorService);
    }

    public final void a(com.android.tools.r8.graph.H2 h22) {
        Consumer consumer = new Consumer() {
            @Override
            public final void accept(Object obj) {
                C7002dw.this.a((com.android.tools.r8.graph.F5) obj);
            }
        };
        h22.getClass();
        h22.f(consumer, EnumC6871d70.f47286b);
    }

    public final void a(com.android.tools.r8.graph.F5 f52) {
        C4537k3 accessFlags = f52.getAccessFlags();
        if (accessFlags.e() || AbstractC4458g.d(accessFlags.f37197c, 64) || !f52.a(this.f47549a)) {
            return;
        }
        accessFlags.p();
    }
}
