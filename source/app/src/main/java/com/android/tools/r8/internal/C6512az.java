package com.android.tools.r8.internal;

import com.android.tools.r8.graph.C4514j;
import com.android.tools.r8.graph.C4516j1;
import com.android.tools.r8.graph.C4798y;
import java.util.Iterator;
import java.util.Set;
import java.util.function.Predicate;

public final class C6512az {

    public final C4798y f46672a;

    public final C5485La0 f46673b;

    public final W60 f46674c;

    public final C6678bz f46675d;

    public C6512az(C6678bz c6678bz, C4798y c4798y, W60 w60, Set set, com.android.tools.r8.shaking.A a10) {
        this.f46675d = c6678bz;
        this.f46672a = c4798y;
        this.f46673b = c4798y.f38388C.f42929h;
        this.f46674c = w60;
    }

    public final void a() {
        W60 w60 = this.f46674c;
        w60.f45305b.add(new Predicate() {
            @Override
            public final boolean test(Object obj) {
                return C6512az.this.a((com.android.tools.r8.graph.M2) obj);
            }
        });
    }

    public final boolean a(com.android.tools.r8.graph.M2 m22) {
        return ((C4514j) this.f46672a.f()).b(m22, this.f46673b.f41998j);
    }

    public final void a(com.android.tools.r8.graph.Y5 y52) {
        Iterator<com.android.tools.r8.graph.M2> it = y52.g(this.f46673b.f41997i).iterator();
        while (it.hasNext()) {
            com.android.tools.r8.graph.H2 d02 = this.f46672a.g(it.next()).d0();
            if (d02 != null) {
                C4516j1 a10 = d02.f36252l.f36638b.a(new Predicate() {
                    @Override
                    public final boolean test(Object obj) {
                        return C6512az.this.a((C4516j1) obj);
                    }
                });
                if (a10 != null) {
                    this.f46675d.f46927e.add(a10.getReference());
                }
            }
        }
    }

    public final boolean a(C4516j1 c4516j1) {
        return c4516j1.C0().g(this.f46673b.f41979A);
    }
}
