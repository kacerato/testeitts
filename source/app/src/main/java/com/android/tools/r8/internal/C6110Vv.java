package com.android.tools.r8.internal;

import com.android.tools.r8.graph.C4516j1;
import com.android.tools.r8.graph.C4613o3;
import com.android.tools.r8.graph.C4798y;
import com.android.tools.r8.graph.InterfaceC4556l3;
import com.android.tools.r8.shaking.C11245i;
import java.util.ArrayList;
import java.util.IdentityHashMap;
import java.util.List;
import java.util.function.Consumer;
import java.util.function.Function;

public final class C6110Vv {

    public final IdentityHashMap f45209a = new IdentityHashMap();

    public final C9115qd0 f45210b = new C9115qd0();

    public final void a(final C4798y c4798y) {
        ((C11245i) c4798y.f()).f57404s.a(new Consumer() {
            @Override
            public final void accept(Object obj) {
                C6110Vv.this.a(c4798y, (InterfaceC4556l3) obj);
            }
        });
    }

    public final void a(C4798y c4798y, InterfaceC4556l3 interfaceC4556l3) {
        C4613o3 c4613o3 = (C4613o3) interfaceC4556l3;
        final com.android.tools.r8.graph.F5 r10 = ((C11245i) c4798y.f()).c(c4613o3.f37536a).r();
        if (r10 == null || c4613o3.d() || c4613o3.g()) {
            return;
        }
        c4613o3.f37539d.a(new Consumer() {
            @Override
            public final void accept(Object obj) {
                C6110Vv.this.a(r10, (com.android.tools.r8.graph.H5) obj);
            }
        });
        this.f45210b.b(c4613o3.f37539d.b(), r10.d());
    }

    public static List a(C4516j1 c4516j1) {
        return new ArrayList();
    }

    public final void a(com.android.tools.r8.graph.F5 f52, com.android.tools.r8.graph.H5 h52) {
        ((List) this.f45209a.computeIfAbsent(h52.d(), new Function() {
            @Override
            public final Object apply(Object obj) {
                return C6110Vv.a((C4516j1) obj);
            }
        })).add(f52);
    }

    public final void a(Consumer consumer, com.android.tools.r8.graph.H5 h52) {
        List<com.android.tools.r8.graph.F5> list = (List) this.f45209a.get(h52.d());
        if (list != null) {
            for (com.android.tools.r8.graph.F5 f52 : list) {
                int c10 = this.f45210b.c(f52.d()) - 1;
                if (c10 > 0) {
                    this.f45210b.b(c10, f52.d());
                } else {
                    consumer.accept(f52);
                }
            }
        }
    }
}
