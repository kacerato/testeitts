package com.android.tools.r8.internal;

import com.android.tools.r8.graph.C4798y;
import com.android.tools.r8.ir.optimize.C10696a;
import java.util.ArrayDeque;
import java.util.Collections;
import java.util.Iterator;
import java.util.Set;
import java.util.function.Function;

public final class C6090Vl {

    public static final boolean f45157c = true;

    public final C4798y f45158a;

    public final Function f45159b;

    public C6090Vl(C4798y c4798y, final R00 r00, final AbstractC5308Hz abstractC5308Hz) {
        Function function = new Function() {
            @Override
            public final Object apply(Object obj) {
                com.android.tools.r8.graph.M2 c10;
                c10 = AbstractC5308Hz.this.c(abstractC5308Hz, (com.android.tools.r8.graph.M2) obj);
                return c10;
            }
        };
        this.f45158a = c4798y;
        this.f45159b = function;
    }

    public final void a(C7215fB c7215fB, Set set) {
        ArrayDeque arrayDeque = new ArrayDeque(set);
        while (!arrayDeque.isEmpty()) {
            C7201f60 c7201f60 = (C7201f60) arrayDeque.poll();
            c7201f60.a(AbstractC8999pu0.f());
            for (C7201f60 c7201f602 : c7201f60.a0()) {
                if (set.add(c7201f602)) {
                    arrayDeque.add(c7201f602);
                }
            }
        }
        if (!f45157c) {
            Z5 u10 = c7215fB.u();
            while (u10.hasNext()) {
                for (C7201f60 c7201f603 : u10.next().s()) {
                    AbstractC8999pu0 u11 = c7201f603.u();
                    C4798y c4798y = this.f45158a;
                    Function function = this.f45159b;
                    u11.getClass();
                    AbstractC8999pu0 a10 = u11.a(c4798y, function, Collections.EMPTY_SET);
                    if (!f45157c && a10 != u11 && !set.contains(c7201f603)) {
                        throw new AssertionError();
                    }
                }
            }
        }
        if (!f45157c) {
            Iterator it = set.iterator();
            while (it.hasNext()) {
                for (C10340xw0 c10340xw0 : ((C7201f60) it.next()).c0()) {
                    if (c10340xw0.j()) {
                        C7201f60 l10 = c10340xw0.l();
                        AbstractC8999pu0 u12 = l10.u();
                        boolean z10 = f45157c;
                        if (!z10 && set.contains(l10)) {
                            u12.getClass();
                            if (!(u12 instanceof C10540z7)) {
                                throw new AssertionError();
                            }
                        }
                        if (!z10 && !set.contains(l10) && !u12.x() && !(u12 instanceof C6301Zd0) && (!u12.y() || u12.a(this.f45158a, this.f45159b, Collections.EMPTY_SET) != u12)) {
                            throw new AssertionError();
                        }
                    }
                }
            }
        }
        C10696a c10696a = new C10696a();
        arrayDeque.addAll(set);
        while (!arrayDeque.isEmpty()) {
            C7201f60 c7201f604 = (C7201f60) arrayDeque.poll();
            AbstractC8999pu0 d10 = c7201f604.d(this.f45158a);
            if (!c7201f604.u().equals(d10)) {
                if (!f45157c) {
                    d10.getClass();
                    if (d10 instanceof C10540z7) {
                        throw new AssertionError();
                    }
                }
                c7201f604.a(d10);
                arrayDeque.addAll(c7201f604.a0());
                c10696a.f54829b.addAll(c7201f604.a());
            }
        }
        if (!f45157c) {
            new C8331lu0(this.f45158a, c7215fB, false).a(set, 5);
        }
        c10696a.a(this.f45158a, c7215fB, C6628bi.b());
    }
}
