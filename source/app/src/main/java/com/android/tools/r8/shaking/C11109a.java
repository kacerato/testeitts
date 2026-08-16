package com.android.tools.r8.shaking;

import com.android.tools.r8.graph.C4387c4;
import com.android.tools.r8.graph.C4514j;
import com.android.tools.r8.graph.C4516j1;
import com.android.tools.r8.graph.C4798y;
import com.android.tools.r8.internal.C9406sK;
import com.android.tools.r8.internal.CK;
import com.android.tools.r8.internal.JK;
import java.util.Collections;
import java.util.HashSet;
import java.util.List;
import java.util.Set;
import java.util.function.Consumer;

public final class C11109a {

    public static final boolean f57163d = true;

    public final C4798y f57164a;

    public final C4387c4 f57165b;

    public M4 f57166c = new M4(null);

    public C11109a(C4798y c4798y) {
        this.f57164a = c4798y;
        this.f57165b = C4387c4.a(c4798y, ((C4514j) c4798y.f()).d());
    }

    public final void a() {
        for (com.android.tools.r8.graph.H2 h22 : ((C11245i) this.f57164a.f()).d()) {
            if (!f57163d && this.f57166c.f56741a != null) {
                throw new AssertionError();
            }
            if (!h22.isInterface()) {
                if (h22.i1()) {
                    C4798y c4798y = this.f57164a;
                    com.android.tools.r8.graph.M2 a12 = h22.a1();
                    c4798y.getClass();
                    if (com.android.tools.r8.graph.H2.a(a12 == h22.f36245e ? h22 : c4798y.a(a12)) == null) {
                    }
                }
                a(h22);
            }
        }
        this.f57164a.getClass();
    }

    public final void a(com.android.tools.r8.graph.H2 h22) {
        M4 m42 = this.f57166c;
        m42.getClass();
        this.f57166c = new M4(m42);
        C9406sK M12 = h22.M1();
        CK a10 = JK.a(M12.f52337b.iterator(), M12.f52338c);
        HashSet hashSet = null;
        while (a10.f43396b.hasNext()) {
            com.android.tools.r8.graph.H5 h52 = (com.android.tools.r8.graph.H5) a10.a(a10.f43396b.next());
            if (h52.getAccessFlags().H() && this.f57166c.a(h52.d()) == 1 && !((C11245i) this.f57164a.f()).a(h52)) {
                if (hashSet == null) {
                    hashSet = new HashSet();
                }
                hashSet.add(h52.d());
            }
        }
        if (hashSet != null) {
            com.android.tools.r8.graph.N4 b02 = h22.b0();
            b02.getClass();
            if (!hashSet.isEmpty()) {
                b02.f36638b.a((Set) hashSet);
                b02.f36639c = C4516j1.f37311v;
            }
        }
        ((List) this.f57165b.f37096b.getOrDefault(h22, Collections.EMPTY_LIST)).forEach(new Consumer() {
            @Override
            public final void accept(Object obj) {
                C11109a.this.a((com.android.tools.r8.graph.H2) obj);
            }
        });
        this.f57166c = this.f57166c.f56741a;
    }
}
