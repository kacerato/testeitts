package com.android.tools.r8.internal;

import com.android.tools.r8.graph.C4387c4;
import com.android.tools.r8.graph.C4594n3;
import com.android.tools.r8.graph.C4613o3;
import com.android.tools.r8.graph.C4798y;
import com.android.tools.r8.shaking.C11245i;
import java.util.Iterator;
import java.util.Set;
import java.util.function.Consumer;
import java.util.function.Predicate;

public final class G3 {

    public static final boolean f40379e = true;

    public final C4798y f40380a;

    public final C4387c4 f40381b;

    public final C5591Mw f40382c;

    public final C10601zX f40383d;

    public G3(C4798y c4798y, C4387c4 c4387c4, C5591Mw c5591Mw, C10601zX c10601zX) {
        this.f40380a = c4798y;
        this.f40381b = c4387c4;
        this.f40382c = c5591Mw;
        this.f40383d = c10601zX;
    }

    public final void a(Set set) {
        Iterator<E> it = set.iterator();
        while (it.hasNext()) {
            com.android.tools.r8.graph.H2 h22 = (com.android.tools.r8.graph.H2) it.next();
            Consumer consumer = new Consumer() {
                @Override
                public final void accept(Object obj) {
                    G3.this.a((com.android.tools.r8.graph.F5) obj);
                }
            };
            h22.getClass();
            h22.f(consumer, EnumC6871d70.f47286b);
        }
    }

    public final void b(Set set) {
        ZW.a(this.f40380a, this.f40381b, set, new Predicate() {
            @Override
            public final boolean test(Object obj) {
                return G3.this.c((com.android.tools.r8.graph.H5) obj);
            }
        }).forEach(new Consumer() {
            @Override
            public final void accept(Object obj) {
                G3.this.a((com.android.tools.r8.graph.H5) obj);
            }
        });
    }

    public final boolean c(com.android.tools.r8.graph.H5 h52) {
        if (!b(h52)) {
            return false;
        }
        if (h52.d().J0() && !h52.getHolder().p1() && !h52.getAccessFlags().e()) {
            return true;
        }
        this.f40383d.a(h52, C9669tv0.f52729a);
        return false;
    }

    public final void a(com.android.tools.r8.graph.H5 h52) {
        this.f40383d.a(h52, C9669tv0.f52729a);
    }

    public final boolean b(com.android.tools.r8.graph.H5 h52) {
        if (f40379e || !h52.d().J0() || !h52.d().k1().e()) {
            return h52.d().k1().c() || !this.f40380a.a(h52).i(this.f40380a.E());
        }
        throw new AssertionError((Object) ("Unexpected virtual method without library method override information: " + h52.r()));
    }

    public final void a(com.android.tools.r8.graph.F5 f52) {
        if (this.f40380a.a(f52).a(this.f40380a, f52)) {
            C4594n3 c4594n3 = ((C11245i) this.f40380a.f()).f57404s;
            C4613o3 c4613o3 = (C4613o3) c4594n3.f37507a.get(f52.getReference());
            if (!c4613o3.e() && !c4613o3.g()) {
                return;
            }
        }
        C5591Mw c5591Mw = this.f40382c;
        C10671zv0 c10671zv0 = C10671zv0.f54579b;
        C7040e80 c7040e80 = c5591Mw.f42460a;
        if (((Q00) c7040e80.f43368b.put(new C7333fv(C5573Mn.f42399a, f52), c10671zv0)) != null) {
            return;
        }
        AbstractC5361Iw0.a(f52.getReference().getType());
    }
}
