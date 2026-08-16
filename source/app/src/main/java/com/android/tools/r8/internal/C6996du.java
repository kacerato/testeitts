package com.android.tools.r8.internal;

import com.android.tools.r8.graph.C4516j1;
import com.android.tools.r8.graph.C4724u1;
import com.android.tools.r8.graph.C4798y;
import java.util.ArrayList;
import java.util.IdentityHashMap;
import java.util.function.BiConsumer;
import java.util.function.Predicate;

public final class C6996du {

    public static final boolean f47542c = true;

    public final C4798y f47543a;

    public final IdentityHashMap f47544b = new IdentityHashMap();

    public C6996du(C4798y c4798y) {
        this.f47543a = c4798y;
        X2.a(c4798y).f53766c.g().forEach(new BiConsumer() {
            @Override
            public final void accept(Object obj, Object obj2) {
                C6996du.this.a((com.android.tools.r8.graph.M2) obj, (C7163eu) obj2);
            }
        });
    }

    public final void a(com.android.tools.r8.graph.M2 m22, C7163eu c7163eu) {
        this.f47544b.put(m22, c7163eu.f47804a);
    }

    public final C4516j1[] a(com.android.tools.r8.graph.H2 h22, com.android.tools.r8.graph.M2 m22) {
        ArrayList d10 = C9073qK.d(h22.k(new Predicate() {
            @Override
            public final boolean test(Object obj) {
                return C6996du.this.a((C4516j1) obj);
            }
        }));
        int size = d10.size();
        C4516j1[] c4516j1Arr = new C4516j1[size];
        for (int i10 = 0; i10 < size; i10++) {
            C4516j1 d11 = ((com.android.tools.r8.graph.H5) d10.get(i10)).d();
            C4724u1 b10 = this.f47543a.b();
            d11.getClass();
            C4516j1.a aVar = new C4516j1.a(d11, d11.F0());
            aVar.a(d11.getReference().a(m22, b10));
            c4516j1Arr[i10] = aVar.a();
        }
        return c4516j1Arr;
    }

    public final boolean a(C4516j1 c4516j1) {
        return X2.a(this.f47543a).a(c4516j1.getReference()) != null;
    }
}
