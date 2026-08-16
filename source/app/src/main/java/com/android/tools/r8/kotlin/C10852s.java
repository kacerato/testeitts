package com.android.tools.r8.kotlin;

import com.android.tools.r8.graph.C4798y;
import com.android.tools.r8.graph.InterfaceC4403d1;
import com.android.tools.r8.internal.AbstractC5308Hz;
import com.android.tools.r8.internal.AbstractC6750cQ;
import com.android.tools.r8.internal.C10420yQ;
import java.util.function.Consumer;

public final class C10852s extends AbstractC10877x {

    public final C10853s0 f55455a;

    public final boolean f55456b;

    public C10852s(C10853s0 c10853s0, boolean z10) {
        this.f55455a = c10853s0;
        this.f55456b = z10;
    }

    @Override
    public final boolean a(final C10420yQ c10420yQ, C4798y c4798y) {
        return this.f55455a.b(new Consumer() {
            @Override
            public final void accept(Object obj) {
                C10852s.this.a(c10420yQ, (String) obj);
            }
        }, c4798y, "Lkotlin/Any;");
    }

    public final void a(C10420yQ c10420yQ, String str) {
        AbstractC6750cQ.a aVar = new AbstractC6750cQ.a(AbstractC10752b0.a(str, this.f55456b));
        c10420yQ.getClass();
        c10420yQ.f54009b = aVar;
    }

    @Override
    public final void a(InterfaceC4403d1 interfaceC4403d1) {
        this.f55455a.a(interfaceC4403d1);
    }

    @Override
    public final com.android.tools.r8.graph.M2 a(AbstractC5308Hz abstractC5308Hz, AbstractC5308Hz abstractC5308Hz2) {
        C10853s0 c10853s0 = this.f55455a;
        com.android.tools.r8.graph.M2 m22 = c10853s0.f55458a;
        if (m22 == null || !m22.I0()) {
            return null;
        }
        return abstractC5308Hz.d(abstractC5308Hz2, c10853s0.f55458a);
    }
}
