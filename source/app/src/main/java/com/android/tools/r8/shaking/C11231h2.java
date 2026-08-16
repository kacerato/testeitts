package com.android.tools.r8.shaking;

import com.android.tools.r8.graph.C4408d6;
import com.android.tools.r8.graph.C4516j1;
import com.android.tools.r8.graph.C4798y;
import com.android.tools.r8.internal.AbstractC5513Ll0;
import com.android.tools.r8.internal.InterfaceC6160Wr0;
import java.util.Collections;
import java.util.Iterator;
import java.util.Objects;
import java.util.Set;
import java.util.function.Consumer;
import java.util.function.Predicate;

public final class C11231h2 {

    public static final boolean f57362c = true;

    public final C4798y f57363a;

    public final Set f57364b;

    public C11231h2(C4798y c4798y) {
        this.f57363a = c4798y;
        this.f57364b = Collections.synchronizedSet(b(c4798y));
    }

    public static Set a(C4798y c4798y) {
        final Set c10 = AbstractC5513Ll0.c();
        new C4408d6(c4798y, 4).a(((C11245i) c4798y.f()).d(), new InterfaceC6160Wr0() {
            @Override
            public final void accept(Object obj) {
                C11231h2.a(Set.this, (com.android.tools.r8.graph.H2) obj);
            }
        });
        return c10;
    }

    public static Set b(C4798y c4798y) {
        final Set a10 = a(c4798y);
        AbstractC11516y1 abstractC11516y1 = ((C11245i) c4798y.f()).f57407v;
        Objects.requireNonNull(a10);
        abstractC11516y1.c(new Consumer() {
            @Override
            public final void accept(Object obj) {
                Set.this.remove((com.android.tools.r8.graph.M2) obj);
            }
        }, c4798y.E());
        return a10;
    }

    /* JADX WARN: Code restructure failed: missing block: B:10:0x0041, code lost:
    
        r4.add(r5.f36245e);
     */
    /* JADX WARN: Code restructure failed: missing block: B:11:0x0046, code lost:
    
        return;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static void a(Set set, com.android.tools.r8.graph.H2 h22) {
        Iterator<C4516j1> it = h22.D1().iterator();
        while (true) {
            if (it.hasNext()) {
                C4516j1 next = it.next();
                if (!next.f37314g.H() && next.k1().c()) {
                    break;
                }
            } else if (!set.contains(h22.f36247g)) {
                for (com.android.tools.r8.graph.M2 m22 : h22.f36248h.f36675b) {
                    if (!set.contains(m22)) {
                    }
                }
                return;
            }
        }
    }

    public final void a() {
        if (!f57362c) {
            Set a10 = a(this.f57363a);
            for (com.android.tools.r8.graph.H2 h22 : ((C11245i) this.f57363a.f()).d()) {
                if (!f57362c && !((C11245i) this.f57363a.f()).b(h22) && a10.contains(h22.f36245e) && !this.f57364b.contains(h22.f36245e)) {
                    throw new AssertionError();
                }
            }
        }
        this.f57363a.f38390E = new Predicate() {
            @Override
            public final boolean test(Object obj) {
                return C11231h2.this.a((com.android.tools.r8.graph.M2) obj);
            }
        };
    }

    public final boolean a(com.android.tools.r8.graph.M2 m22) {
        return !this.f57364b.contains(m22);
    }
}
