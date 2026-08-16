package com.android.tools.r8.internal;

import com.android.tools.r8.graph.C4460g1;
import com.android.tools.r8.graph.C4554l1;
import com.android.tools.r8.graph.C4798y;
import j$.util.Collection$EL;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.ExecutorService;
import java.util.function.IntFunction;

public final class C8306lm implements InterfaceC5599Na {

    public final C4798y f50103b;

    public final C8139km f50104c;

    public C8306lm(C4798y c4798y) {
        this.f50103b = c4798y;
        this.f50104c = new C8139km(c4798y);
    }

    @Override
    public final void a(Collection collection, AbstractC5947Ta abstractC5947Ta, ExecutorService executorService, C8659ns0 c8659ns0) {
        C8659ns0 b10 = c8659ns0.b("Desugared library disable desugarer post processor");
        try {
            Iterator it = this.f50103b.b().f38117o3.iterator();
            while (it.hasNext()) {
                com.android.tools.r8.graph.E0 c10 = this.f50103b.g().c((com.android.tools.r8.graph.M2) it.next());
                if (c10 != null && c10.e0()) {
                    com.android.tools.r8.graph.H2 d02 = c10.d0();
                    d02.a(a(d02, d02.k1()));
                    d02.b(a(d02, d02.A1()));
                }
            }
            b10.d();
        } catch (Throwable th2) {
            try {
                b10.d();
            } catch (Throwable th3) {
                th2.addSuppressed(th3);
            }
            throw th2;
        }
    }

    public final C4460g1[] a(com.android.tools.r8.graph.H2 h22, List list) {
        ArrayList arrayList = new ArrayList();
        Iterator it = list.iterator();
        while (it.hasNext()) {
            C4460g1 c4460g1 = (C4460g1) it.next();
            C4554l1 a10 = this.f50104c.a(h22, c4460g1.getReference());
            if (a10 != null) {
                c4460g1 = c4460g1.a(this.f50103b, a10, C6628bi.b());
            }
            arrayList.add(c4460g1);
        }
        return (C4460g1[]) Collection$EL.toArray(arrayList, new IntFunction() {
            @Override
            public final Object apply(int i10) {
                return C8306lm.a(i10);
            }
        });
    }

    public static C4460g1[] a(int i10) {
        return new C4460g1[i10];
    }
}
