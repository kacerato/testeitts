package com.android.tools.r8.kotlin;

import com.android.tools.r8.graph.C4798y;
import com.android.tools.r8.graph.InterfaceC4403d1;
import com.android.tools.r8.internal.GP;
import com.android.tools.r8.internal.HP;
import java.util.function.Consumer;

public final class C10787h extends AbstractC10817m {

    public final C10823n f55323b;

    public C10787h(C10823n c10823n) {
        this.f55323b = c10823n;
    }

    @Override
    public final void a(InterfaceC4403d1 interfaceC4403d1) {
        this.f55323b.a(interfaceC4403d1);
    }

    @Override
    public final boolean b(final Consumer consumer, C4798y c4798y) {
        return this.f55323b.b(new Consumer() {
            @Override
            public final void accept(Object obj) {
                C10787h.a(Consumer.this, (GP) obj);
            }
        }, c4798y);
    }

    public static void a(Consumer consumer, GP gp) {
        if (gp != null) {
            consumer.accept(new HP(gp));
        }
    }
}
