package com.android.tools.r8.kotlin;

import com.android.tools.r8.graph.C4798y;
import com.android.tools.r8.graph.InterfaceC4403d1;
import com.android.tools.r8.internal.OP;
import java.util.function.Consumer;

public final class C10805k extends AbstractC10817m {

    public final C10853s0 f55351b;

    public final String f55352c;

    public C10805k(C10853s0 c10853s0, String str) {
        this.f55351b = c10853s0;
        this.f55352c = str;
    }

    @Override
    public final void a(InterfaceC4403d1 interfaceC4403d1) {
        this.f55351b.a(interfaceC4403d1);
    }

    @Override
    public final boolean b(final Consumer consumer, C4798y c4798y) {
        return this.f55351b.a(new Consumer() {
            @Override
            public final void accept(Object obj) {
                C10805k.this.a(consumer, (String) obj);
            }
        }, c4798y, "kotlin/Any");
    }

    public final void a(Consumer consumer, String str) {
        consumer.accept(new OP(str, this.f55352c));
    }
}
