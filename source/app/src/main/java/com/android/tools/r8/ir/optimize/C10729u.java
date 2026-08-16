package com.android.tools.r8.ir.optimize;

import com.android.tools.r8.graph.C4460g1;
import com.android.tools.r8.graph.C4798y;
import com.android.tools.r8.graph.InterfaceC4403d1;
import com.android.tools.r8.graph.R2;
import java.util.IdentityHashMap;
import java.util.function.BiConsumer;

public final class C10729u {

    public static final C10729u f54942b = new C10729u(null);

    public static final boolean f54943c = true;

    public final IdentityHashMap f54944a;

    public C10729u(IdentityHashMap identityHashMap) {
        this.f54944a = identityHashMap;
    }

    public final void a(BiConsumer biConsumer) {
        IdentityHashMap identityHashMap = this.f54944a;
        if (identityHashMap != null) {
            identityHashMap.forEach(biConsumer);
        }
    }

    public final void a(final BiConsumer biConsumer, final C4798y c4798y) {
        BiConsumer biConsumer2 = new BiConsumer() {
            @Override
            public final void accept(Object obj, Object obj2) {
                R2 r22 = (R2) obj2;
                BiConsumer.this.accept(((C4460g1) obj).a((InterfaceC4403d1) c4798y), r22);
            }
        };
        IdentityHashMap identityHashMap = this.f54944a;
        if (identityHashMap != null) {
            identityHashMap.forEach(biConsumer2);
        }
    }
}
