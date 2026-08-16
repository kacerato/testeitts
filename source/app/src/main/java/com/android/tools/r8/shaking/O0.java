package com.android.tools.r8.shaking;

import com.android.tools.r8.graph.C4363b;
import com.android.tools.r8.graph.C4554l1;
import com.android.tools.r8.graph.C4594n3;
import com.android.tools.r8.graph.C4613o3;
import com.android.tools.r8.graph.C4798y;
import java.util.IdentityHashMap;
import java.util.function.BiConsumer;

public final class O0 {

    public final IdentityHashMap f56851a;

    public O0(IdentityHashMap identityHashMap) {
        this.f56851a = identityHashMap;
    }

    public final void a(C4798y c4798y) {
        final C4594n3 c4594n3 = ((C11245i) c4798y.f()).f57404s;
        this.f56851a.forEach(new BiConsumer() {
            @Override
            public final void accept(Object obj, Object obj2) {
                O0.a(C4594n3.this, (C4554l1) obj, (N0) obj2);
            }
        });
    }

    public static void a(C4594n3 c4594n3, C4554l1 c4554l1, N0 n02) {
        C4363b c4363b = C4363b.f37064a;
        C4613o3 c4613o3 = new C4613o3(c4554l1, 0, c4363b, c4363b);
        c4613o3.f37538c = n02.f56832a;
        c4613o3.f37539d = n02.f56833b;
        c4594n3.a(c4554l1, c4613o3);
    }
}
