package com.android.tools.r8.internal;

import com.android.tools.r8.graph.C4554l1;
import com.android.tools.r8.graph.C4798y;
import java.util.function.BiConsumer;

public final class C5403Jo0 extends AbstractC5461Ko0 {

    public final AbstractC8552nC f41504a;

    public C5403Jo0(AbstractC8552nC abstractC8552nC) {
        this.f41504a = abstractC8552nC;
    }

    @Override
    public final C5403Jo0 a() {
        return this;
    }

    public final C5403Jo0 a(final C4798y c4798y, final AbstractC5308Hz abstractC5308Hz, final AbstractC5308Hz abstractC5308Hz2) {
        final C8051kC c8051kC = new C8051kC(4);
        this.f41504a.forEach(new BiConsumer() {
            @Override
            public final void accept(Object obj, Object obj2) {
                C5403Jo0.a(C8051kC.this, abstractC5308Hz, c4798y, abstractC5308Hz2, (C4554l1) obj, (Q30) obj2);
            }
        });
        return new C5403Jo0(c8051kC.b());
    }

    public static void a(C8051kC c8051kC, AbstractC5308Hz abstractC5308Hz, C4798y c4798y, AbstractC5308Hz abstractC5308Hz2, C4554l1 c4554l1, Q30 q30) {
        c8051kC.a(abstractC5308Hz.e((AbstractC5308Hz) null, c4554l1), q30.a(c4798y, abstractC5308Hz, abstractC5308Hz2));
    }
}
