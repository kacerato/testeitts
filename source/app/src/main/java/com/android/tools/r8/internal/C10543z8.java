package com.android.tools.r8.internal;

import com.android.tools.r8.graph.C4516j1;
import com.android.tools.r8.graph.C4798y;
import com.android.tools.r8.shaking.C11245i;
import java.util.Iterator;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.ExecutorService;
import java.util.function.Consumer;
import java.util.function.Function;

public class C10543z8 extends AbstractC9050qB {

    public static final boolean f54290e = true;

    public C10543z8(C4798y<C11245i> c4798y) {
        super(c4798y);
    }

    @Override
    public C10209x8 a(ExecutorService executorService, C8659ns0 c8659ns0) throws ExecutionException {
        return super.a(executorService, c8659ns0);
    }

    public final void c(com.android.tools.r8.graph.H5 h52) {
        h52.a(new C9216rB(this.f38540a, (D00) b(h52), new Function() {
            @Override
            public final Object apply(Object obj) {
                return (D00) C10543z8.this.b((com.android.tools.r8.graph.H5) obj);
            }
        }, this.f38542c, EnumC6871d70.f47286b));
    }

    @Override
    public final void a(ExecutorService executorService) {
        com.android.tools.r8.J.a(this.f38540a, ((C11245i) this.f38540a.f()).d(), new Consumer() {
            @Override
            public final void accept(Object obj) {
                C10543z8.this.a((com.android.tools.r8.graph.H2) obj);
            }
        }, executorService);
    }

    public final void a(com.android.tools.r8.graph.H2 h22) {
        h22.h(new Consumer() {
            @Override
            public final void accept(Object obj) {
                C10543z8.this.c((com.android.tools.r8.graph.H5) obj);
            }
        }, new u.P0());
    }

    @Override
    public final void a() {
        Iterator<com.android.tools.r8.graph.H2> it = ((C11245i) this.f38540a.f()).d().iterator();
        while (it.hasNext()) {
            for (C4516j1 c4516j1 : it.next().z1()) {
                if (!f54290e) {
                    if (c4516j1.b1() != (this.f38541b.get(c4516j1.getReference()) != null)) {
                        throw new AssertionError();
                    }
                }
            }
        }
    }
}
