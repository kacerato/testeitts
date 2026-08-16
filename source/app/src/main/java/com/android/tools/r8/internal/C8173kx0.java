package com.android.tools.r8.internal;

import com.android.tools.r8.graph.C4387c4;
import com.android.tools.r8.graph.C4798y;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import java.util.function.Consumer;

public final class C8173kx0 extends AbstractC9447sd {

    public static final boolean f49842o = true;

    public final ArrayList f49843n;

    public C8173kx0(C4798y c4798y, C9114qd c9114qd, C4387c4 c4387c4, C8006jx0 c8006jx0) {
        super(c4798y, c9114qd, c4387c4, c8006jx0.f49432a, c8006jx0.f49434c);
        this.f49843n = c8006jx0.f49433b;
    }

    @Override
    public final void a(com.android.tools.r8.graph.H2 h22, Set set, C4942Bq c4942Bq) {
        boolean z10 = f49842o;
        if (!z10 && !set.add(h22)) {
            throw new AssertionError((Object) h22.b1());
        }
        if (((C8674nx0) this.f52414i).d(h22.getType())) {
            if (!z10 && h22.f1()) {
                throw new AssertionError();
            }
            a((com.android.tools.r8.graph.H2) AbstractC9907vK.a((Collection) this.f52412g.a(h22)), set, c4942Bq);
            return;
        }
        C4942Bq a10 = a(h22, c4942Bq);
        Iterator it = this.f52412g.a(h22).iterator();
        while (it.hasNext()) {
            a((com.android.tools.r8.graph.H2) it.next(), set, a10);
        }
    }

    public final void c(com.android.tools.r8.graph.A2 a22) {
        if (a22.b(this.f46882b)) {
            return;
        }
        C5058Dq c5058Dq = this.f52416k;
        c5058Dq.getClass();
        c5058Dq.f39661b.add(new com.android.tools.r8.graph.D2(a22));
    }

    @Override
    public final void d() {
        this.f46881a.r().b(new Consumer() {
            @Override
            public final void accept(Object obj) {
                C8173kx0.this.c((com.android.tools.r8.graph.A2) obj);
            }
        }, this.f46881a.E());
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public final void c() {
        C6674bx0 c6674bx0 = (C6674bx0) this.f52413h;
        Iterator it = c6674bx0.f46909c.entrySet().iterator();
        while (it.hasNext()) {
            for (Map.Entry entry : ((Map) ((Map.Entry) it.next()).getValue()).entrySet()) {
                com.android.tools.r8.graph.A2 a22 = (com.android.tools.r8.graph.A2) entry.getValue();
                com.android.tools.r8.graph.A2 a23 = (com.android.tools.r8.graph.A2) c6674bx0.f46912f.f51964b.get(a22);
                if (a23 != null) {
                    entry.setValue(a23);
                } else {
                    if (!C6674bx0.f46906j && !c6674bx0.f46910d.f49890b.containsKey(a22)) {
                        throw new AssertionError();
                    }
                    entry.setValue((com.android.tools.r8.graph.A2) c6674bx0.f46910d.f49890b.get(a22));
                }
            }
        }
    }

    @Override
    public final boolean d(com.android.tools.r8.graph.H2 h22) {
        if (!super.d(h22)) {
            return false;
        }
        C8674nx0 c8674nx0 = (C8674nx0) this.f52414i;
        return !AbstractC9907vK.b(c8674nx0.f51120a.d(h22.getType()), new V60() {
            @Override
            public final boolean apply(Object obj) {
                return C8173kx0.this.c((com.android.tools.r8.graph.M2) obj);
            }
        });
    }

    public final boolean c(com.android.tools.r8.graph.M2 m22) {
        return d(com.android.tools.r8.graph.H2.a(this.f46881a.g(m22)));
    }
}
