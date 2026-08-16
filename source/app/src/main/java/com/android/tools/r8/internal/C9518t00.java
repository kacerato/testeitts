package com.android.tools.r8.internal;

import com.android.tools.r8.graph.C4516j1;
import com.android.tools.r8.graph.C4798y;
import com.android.tools.r8.graph.H4;
import com.android.tools.r8.shaking.C11245i;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.function.Consumer;

public final class C9518t00 extends AbstractC7173ex0 {

    public static final boolean f52499c = true;

    public final C4798y f52500b;

    public C9518t00(C4798y c4798y) {
        this.f52500b = c4798y;
    }

    @Override
    public final boolean a(C8340lx0 c8340lx0) {
        return !a(c8340lx0.f50154b, c8340lx0.f50155c);
    }

    @Override
    public final String f() {
        return "NoMethodResolutionChangesPolicy";
    }

    public final boolean a(com.android.tools.r8.graph.H2 h22, com.android.tools.r8.graph.H2 h23) {
        Iterator<C4516j1> it = h22.D1().iterator();
        while (it.hasNext()) {
            if (h23.f36252l.f36638b.a(it.next().getReference()) != null) {
                return true;
            }
        }
        if (h22.isInterface() && !h23.isInterface()) {
            ArrayList arrayList = new ArrayList();
            for (C4516j1 c4516j1 : h22.D1()) {
                if (!c4516j1.f37314g.H()) {
                    arrayList.add(c4516j1);
                }
            }
            int size = arrayList.size();
            int i10 = 0;
            while (i10 < size) {
                Object obj = arrayList.get(i10);
                i10++;
                final C4516j1 c4516j12 = (C4516j1) obj;
                H4.a a10 = ((C11245i) this.f52500b.f()).c(c4516j12.B0(), c4516j12.getReference()).b(h23, this.f52500b).a();
                if (!f52499c && a10 == null) {
                    throw new AssertionError();
                }
                if (a10 == null) {
                    return true;
                }
                if (a10.a(c4516j12)) {
                    final C7 c72 = new C7(Boolean.FALSE);
                    a10.a(new Consumer() {
                        @Override
                        public final void accept(Object obj2) {
                            C9518t00.a(C4516j1.this, c72, (com.android.tools.r8.graph.D4) obj2);
                        }
                    }, new Consumer() {
                        @Override
                        public final void accept(Object obj2) {
                            C9518t00.a((com.android.tools.r8.graph.C4) obj2);
                        }
                    });
                    if (((Boolean) c72.a()).booleanValue()) {
                        return true;
                    }
                }
            }
        }
        return false;
    }

    public static void a(C4516j1 c4516j1, C7 c72, com.android.tools.r8.graph.D4 d42) {
        com.android.tools.r8.graph.E0 holder;
        if (d42.d() == c4516j1 || (holder = d42.getHolder()) == null || !holder.isInterface()) {
            return;
        }
        c72.a((C7) Boolean.TRUE);
    }

    public static void a(com.android.tools.r8.graph.C4 c42) {
        if (!f52499c) {
            throw new AssertionError();
        }
    }
}
