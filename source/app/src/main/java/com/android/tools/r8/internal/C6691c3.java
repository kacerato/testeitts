package com.android.tools.r8.internal;

import com.android.tools.r8.graph.C4460g1;
import com.android.tools.r8.graph.C4798y;
import com.android.tools.r8.graph.C4804y5;
import com.android.tools.r8.shaking.C11416s2;
import java.util.ArrayList;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ConcurrentLinkedDeque;
import java.util.function.BiConsumer;
import java.util.function.Consumer;

public final class C6691c3 {

    public final C11416s2 f46943a = new C11416s2(new ConcurrentHashMap());

    public final ConcurrentLinkedDeque f46944b = new ConcurrentLinkedDeque();

    public static void a(C4798y c4798y, Y50 y50, com.android.tools.r8.shaking.N n10) {
        ArrayList arrayList = y50.f45613b;
        int size = arrayList.size();
        int i10 = 0;
        while (i10 < size) {
            Object obj = arrayList.get(i10);
            i10++;
            com.android.tools.r8.graph.D5 d52 = (com.android.tools.r8.graph.D5) obj;
            if (d52.L()) {
                com.android.tools.r8.graph.F5 W10 = d52.W();
                C4460g1 d10 = W10.d();
                d10.getClass();
                if (!C4460g1.f37201p && d10 != W10.d()) {
                    throw new AssertionError();
                }
                d10.f37204i = new C4804y5(W10.getReference());
                VY vy = (VY) d10.f37207l.a();
                vy.getClass();
                N1 n12 = N1.f42479b;
                if (vy.f45079a.isUnknown()) {
                    vy.f45079a = n12;
                } else {
                    vy.f45079a = new I1(c4798y).a(vy.f45079a, n12, W10);
                }
                d10.f37207l = vy;
            }
        }
    }

    public final void a(Consumer consumer) {
        consumer.accept(this.f46943a);
    }

    public final void a(Y50 y50) {
        this.f46944b.add(y50);
    }

    public final AbstractC7024e3 a(final C4798y c4798y) {
        if (this.f46943a.f57795a.isEmpty() && this.f46944b.isEmpty()) {
            return C6858d3.f47261a;
        }
        return new C7191f3(this.f46943a, new ArrayList(this.f46944b), new BiConsumer() {
            @Override
            public final void accept(Object obj, Object obj2) {
                C6691c3.a(C4798y.this, (Y50) obj, (com.android.tools.r8.shaking.N) obj2);
            }
        });
    }
}
