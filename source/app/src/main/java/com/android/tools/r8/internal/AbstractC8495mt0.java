package com.android.tools.r8.internal;

import com.android.tools.r8.graph.C4724u1;
import com.android.tools.r8.graph.C4798y;
import com.android.tools.r8.ir.optimize.C10696a;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.Set;
import java.util.function.Function;
import java.util.function.Predicate;

public abstract class AbstractC8495mt0 {

    public static final boolean f50445a = true;

    public static void a(C4798y c4798y, C7215fB c7215fB) {
        C4724u1 b10 = c4798y.b();
        boolean z10 = false;
        for (QJ qj2 : c7215fB.b((Predicate) new A11())) {
            com.android.tools.r8.graph.A2 B22 = qj2.B2();
            if (b10.a(B22) && B22.s0().a(b10.f38052g2) && qj2.C2().j()) {
                C7201f60 l10 = qj2.C2().l();
                Set c10 = AbstractC5513Ll0.c();
                Set c11 = AbstractC5513Ll0.c();
                a(l10, c10, c11);
                if (c11.size() == 1) {
                    C10340xw0 c10340xw0 = (C10340xw0) c11.iterator().next();
                    AbstractC10561zE abstractC10561zE = c10340xw0.f53886c;
                    if (abstractC10561zE != null && abstractC10561zE.c2()) {
                        C9603tZ w02 = c10340xw0.f53886c.w0();
                        a(w02.d());
                        if (!qj2.C2().j()) {
                            w02.f52628l = false;
                            z10 = true;
                        } else {
                            throw new C5325If("Failed to remove trivial phis between new-instance and <init>");
                        }
                    } else {
                        throw new C5325If("Invalid defining value for call to <init>");
                    }
                } else {
                    throw new C5325If("Failed to identify unique new-instance for <init>");
                }
            }
        }
        if (!f50445a && z10 && !c7215fB.b((C4798y<?>) c4798y)) {
            throw new AssertionError();
        }
    }

    public static void a(C7201f60 c7201f60, Set set, Set set2) {
        for (C10340xw0 c10340xw0 : c7201f60.c0()) {
            if (!c10340xw0.j()) {
                set2.add(c10340xw0);
            } else {
                C7201f60 l10 = c10340xw0.l();
                if (set.add(l10)) {
                    a(l10, set, set2);
                }
            }
        }
    }

    public static void a(C10340xw0 c10340xw0) {
        C5684Ok0 c5684Ok0 = new C5684Ok0(new Function() {
            @Override
            public final Object apply(Object obj) {
                return ((C10340xw0) obj).a0();
            }
        });
        if (!C5684Ok0.f43006h && c5684Ok0.f43007a != 0) {
            throw new AssertionError();
        }
        c5684Ok0.a(c10340xw0);
        ArrayList arrayList = c5684Ok0.f43012f;
        for (int size = arrayList.size() - 1; size >= 0; size--) {
            Set set = (Set) arrayList.get(size);
            if (set.size() != 1 || set.iterator().next() != c10340xw0) {
                Set<C7201f60> c10 = AbstractC5513Ll0.c();
                Iterator it = set.iterator();
                while (it.hasNext()) {
                    C7201f60 l10 = ((C10340xw0) it.next()).l();
                    Iterator<C10340xw0> it2 = l10.c0().iterator();
                    while (true) {
                        if (it2.hasNext()) {
                            C10340xw0 next = it2.next();
                            if (next == c10340xw0 || set.contains(next)) {
                            }
                        } else {
                            c10.add(l10);
                            break;
                        }
                    }
                }
                for (C7201f60 c7201f60 : c10) {
                    for (C10340xw0 c10340xw02 : c7201f60.c0()) {
                        c10340xw02.f53889f.remove(c7201f60);
                        c10340xw02.f53890g = null;
                    }
                    c7201f60.f(c10340xw0);
                    W5 w52 = c7201f60.f47862p;
                    w52.getClass();
                    w52.a(c7201f60, (C10696a) null, C6628bi.b());
                }
            }
        }
    }
}
