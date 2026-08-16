package com.android.tools.r8.kotlin;

import com.android.tools.r8.graph.C4516j1;
import com.android.tools.r8.graph.C4798y;
import com.android.tools.r8.graph.InterfaceC4403d1;
import com.android.tools.r8.internal.C8918pQ;
import com.android.tools.r8.internal.C9251rQ;
import com.android.tools.r8.shaking.InterfaceC11195f0;
import java.util.Iterator;
import java.util.function.Consumer;

public final class O implements InterfaceC11195f0 {

    public final K f55133a;

    public final boolean f55134b;

    public O(K k10, boolean z10) {
        this.f55133a = k10;
        this.f55134b = z10;
    }

    public final boolean a(Consumer consumer, com.android.tools.r8.graph.H2 h22, C4798y c4798y) {
        final C9251rQ c9251rQ = new C9251rQ();
        consumer.accept(c9251rQ);
        C4516j1 c4516j1 = null;
        if (!this.f55134b) {
            return this.f55133a.a(new Consumer() {
                @Override
                public final void accept(Object obj) {
                    C9251rQ.this.a((C8918pQ) obj);
                }
            }, (C4516j1) null, c4798y);
        }
        Iterator<C4516j1> it = h22.z1().iterator();
        while (true) {
            if (!it.hasNext()) {
                break;
            }
            C4516j1 next = it.next();
            if (next.f37323p == this.f55133a) {
                c4516j1 = next;
                break;
            }
        }
        return this.f55133a.a(new Consumer() {
            @Override
            public final void accept(Object obj) {
                C9251rQ.this.a((C8918pQ) obj);
            }
        }, c4516j1, c4798y);
    }

    @Override
    public final void a(InterfaceC4403d1 interfaceC4403d1) {
        this.f55133a.a(interfaceC4403d1);
    }
}
