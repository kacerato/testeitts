package com.android.tools.r8.internal;

import com.android.tools.r8.graph.C4798y;
import com.android.tools.r8.shaking.C11245i;
import java.util.concurrent.ExecutorService;
import java.util.function.Consumer;
import java.util.function.Function;

public final class C9601tY extends A8 {
    public C9601tY(C4798y c4798y) {
        super(c4798y);
    }

    @Override
    public final E00 a(com.android.tools.r8.graph.H5 h52) {
        return new C9935vY(h52);
    }

    public final void c(com.android.tools.r8.graph.H5 h52) {
        h52.a(new C9768uY(this.f38540a, (C9935vY) b(h52), new Function() {
            @Override
            public final Object apply(Object obj) {
                return (C9935vY) C9601tY.this.b((com.android.tools.r8.graph.H5) obj);
            }
        }, this.f38542c));
    }

    public final C9434sY a(ExecutorService executorService) {
        C5467Kr0.a(((C11245i) this.f38540a.f()).d(), new Consumer() {
            @Override
            public final void accept(Object obj) {
                C9601tY.this.a((com.android.tools.r8.graph.H2) obj);
            }
        }, this.f38540a.E().G(), executorService);
        return new C9434sY(this.f38541b);
    }

    public final void a(com.android.tools.r8.graph.H2 h22) {
        h22.h(new Consumer() {
            @Override
            public final void accept(Object obj) {
                C9601tY.this.c((com.android.tools.r8.graph.H5) obj);
            }
        }, new u.P0());
    }
}
