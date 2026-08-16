package com.android.tools.r8.kotlin;

import com.android.tools.r8.graph.C4798y;
import com.android.tools.r8.graph.InterfaceC4403d1;
import com.android.tools.r8.internal.RP;
import java.util.function.Consumer;

public final class C10799j extends AbstractC10817m {

    public final C10853s0 f55343b;

    public C10799j(C10853s0 c10853s0) {
        this.f55343b = c10853s0;
    }

    @Override
    public final void a(InterfaceC4403d1 interfaceC4403d1) {
        this.f55343b.a(interfaceC4403d1);
    }

    @Override
    public final boolean b(final Consumer consumer, C4798y c4798y) {
        return this.f55343b.a(new Consumer() {
            @Override
            public final void accept(Object obj) {
                Consumer.this.accept(new RP((String) obj));
            }
        }, c4798y, "kotlin/Any");
    }
}
