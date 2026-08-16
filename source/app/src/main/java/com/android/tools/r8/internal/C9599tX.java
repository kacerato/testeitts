package com.android.tools.r8.internal;

import com.android.tools.r8.graph.C4798y;
import com.android.tools.r8.shaking.C11245i;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.ExecutorService;
import java.util.function.Consumer;

public final class C9599tX {

    public final C4798y f52623a;

    public C9599tX(C4798y c4798y) {
        this.f52623a = c4798y;
    }

    public final void a(final O60 o60, ExecutorService executorService) {
        final AbstractC5308Hz v10 = this.f52623a.v();
        final C8570nJ E10 = this.f52623a.E();
        C5467Kr0.a(((C11245i) this.f52623a.f()).d(), new InterfaceC6217Xr0() {
            @Override
            public final Object apply(Object obj) {
                return C9599tX.this.a(o60, v10, E10, (com.android.tools.r8.graph.H2) obj);
            }
        }, E10.G(), executorService).forEach(new Consumer() {
            @Override
            public final void accept(Object obj) {
                O60.this.a((List) obj, v10);
            }
        });
    }

    public final List a(final O60 o60, final AbstractC5308Hz abstractC5308Hz, final C8570nJ c8570nJ, com.android.tools.r8.graph.H2 h22) {
        final ArrayList arrayList = new ArrayList();
        h22.h(new Consumer() {
            @Override
            public final void accept(Object obj) {
                C9599tX.this.a(o60, abstractC5308Hz, c8570nJ, arrayList, (com.android.tools.r8.graph.H5) obj);
            }
        }, new u.P0());
        return arrayList;
    }

    public final void a(O60 o60, AbstractC5308Hz abstractC5308Hz, C8570nJ c8570nJ, List list, com.android.tools.r8.graph.H5 h52) {
        C9093qU c9093qU = o60.f42781a;
        boolean z10 = C9093qU.f51788e;
        if (!z10) {
            if (!z10) {
                if (c9093qU.f51791c != abstractC5308Hz) {
                    throw new AssertionError();
                }
            } else {
                c9093qU.getClass();
            }
        }
        if (c9093qU.f51792d.contains(h52.getReference()) || !this.f52623a.a(h52).a(h52)) {
            return;
        }
        C9432sX c9432sX = new C9432sX(this.f52623a, h52);
        h52.a(c9432sX);
        if (c9432sX.f37241e.booleanValue()) {
            list.add(h52);
        }
    }
}
