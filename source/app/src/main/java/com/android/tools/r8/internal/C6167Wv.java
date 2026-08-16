package com.android.tools.r8.internal;

import com.android.tools.r8.graph.C4516j1;
import com.android.tools.r8.graph.C4798y;
import com.android.tools.r8.shaking.C11245i;
import java.util.ArrayList;
import java.util.IdentityHashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import java.util.function.BiConsumer;
import java.util.function.Consumer;
import java.util.function.Function;

public final class C6167Wv {

    public final IdentityHashMap f45578a = new IdentityHashMap();

    public final C9115qd0 f45579b = new C9115qd0();

    public final void a(C4798y c4798y) {
        ((C11245i) c4798y.f()).f57405t.a(new BiConsumer() {
            @Override
            public final void accept(Object obj, Object obj2) {
                C6167Wv.this.a((com.android.tools.r8.graph.H2) obj, (Set) obj2);
            }
        });
    }

    public final void a(com.android.tools.r8.graph.H2 h22, Set set) {
        Iterator it = set.iterator();
        while (it.hasNext()) {
            ((List) this.f45578a.computeIfAbsent((C4516j1) it.next(), new Function() {
                @Override
                public final Object apply(Object obj) {
                    return C6167Wv.a((C4516j1) obj);
                }
            })).add(h22);
        }
        this.f45579b.b(set.size(), h22);
    }

    public static List a(C4516j1 c4516j1) {
        return new ArrayList();
    }

    public final void a(Consumer consumer, com.android.tools.r8.graph.H5 h52) {
        List<com.android.tools.r8.graph.H2> list = (List) this.f45578a.get(h52.d());
        if (list != null) {
            for (com.android.tools.r8.graph.H2 h22 : list) {
                int c10 = this.f45579b.c(h22) - 1;
                if (c10 > 0) {
                    this.f45579b.b(c10, h22);
                } else {
                    consumer.accept(h22);
                }
            }
        }
    }
}
