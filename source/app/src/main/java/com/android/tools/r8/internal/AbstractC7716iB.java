package com.android.tools.r8.internal;

import com.android.tools.r8.graph.C4514j;
import com.android.tools.r8.graph.C4724u1;
import com.android.tools.r8.graph.C4798y;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.IdentityHashMap;
import java.util.Iterator;
import java.util.Set;
import java.util.function.Predicate;

public abstract class AbstractC7716iB {

    public static final boolean f48869a = true;

    public static QJ a(C4724u1 c4724u1, C10340xw0 c10340xw0) {
        QJ qj2 = null;
        for (AbstractC10561zE abstractC10561zE : c10340xw0.b0()) {
            if (abstractC10561zE.O1()) {
                QJ c02 = abstractC10561zE.c0();
                if (c4724u1.a(c02.B2()) && c02.C2() == c10340xw0) {
                    if (qj2 != null) {
                        return null;
                    }
                    qj2 = c02;
                }
            }
        }
        return qj2;
    }

    /* JADX WARN: Type inference failed for: r4v1, types: [java.util.Map, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r4v3, types: [java.util.Map, java.lang.Object] */
    public static C7040e80 a(C4798y c4798y, C7215fB c7215fB, C7207f80 c7207f80) {
        C7207f80 c7207f802 = new C7207f80(new IdentityHashMap());
        C7040e80 k10 = C7040e80.k();
        for (C5634No0 c5634No0 : c7215fB.b((Predicate) new YN0())) {
            com.android.tools.r8.graph.F5 o10 = ((C4514j) c4798y.f()).c(c5634No0.getField()).o();
            if (o10 != null && c7207f80.f47879b.containsKey(o10.getReference()) && !c7207f802.f47879b.containsKey(o10.getReference())) {
                C5573Mn c5573Mn = C5573Mn.f42399a;
                if (k10.f43368b.put(new C7333fv(c5573Mn, o10), c5634No0) != null) {
                    c7207f802.a(o10);
                    k10.f43368b.remove(new C7333fv(c5573Mn, o10));
                }
            }
        }
        return k10;
    }

    public static void a(AbstractC10561zE abstractC10561zE) {
        if (abstractC10561zE.w1()) {
            if (!f48869a && !abstractC10561zE.J().A2()) {
                throw new AssertionError();
            }
            return;
        }
        C10340xw0 d10 = abstractC10561zE.d();
        if (d10.B() || d10.y()) {
            return;
        }
        if (!abstractC10561zE.Z1()) {
            if (!f48869a) {
                throw new AssertionError();
            }
            return;
        }
        ArrayDeque arrayDeque = new ArrayDeque();
        if (abstractC10561zE.u0() != null) {
            arrayDeque.add(abstractC10561zE);
        } else if (abstractC10561zE instanceof C8769oZ) {
            for (AbstractC10561zE abstractC10561zE2 : d10.b0()) {
                if (!f48869a) {
                    abstractC10561zE2.getClass();
                    if (abstractC10561zE2 instanceof C4) {
                        throw new AssertionError();
                    }
                }
                if (!abstractC10561zE2.o1()) {
                    return;
                } else {
                    arrayDeque.add(abstractC10561zE2);
                }
            }
        } else if (!f48869a) {
            throw new AssertionError();
        }
        a(arrayDeque);
    }

    public static void a(ArrayDeque arrayDeque) {
        Set c10 = AbstractC5513Ll0.c();
        while (!arrayDeque.isEmpty()) {
            FE fe2 = (FE) arrayDeque.removeFirst();
            if (!c10.contains(fe2)) {
                if (fe2.j()) {
                    C7201f60 l10 = fe2.l();
                    if (!l10.D() && !l10.y()) {
                        Iterator it = l10.a0().iterator();
                        while (true) {
                            if (it.hasNext()) {
                                if (((C7201f60) it.next()) != l10) {
                                    break;
                                }
                            } else {
                                l10.f0();
                                for (C10340xw0 c10340xw0 : l10.c0()) {
                                    arrayDeque.add(c10340xw0.j() ? c10340xw0.l() : c10340xw0.f53886c);
                                }
                                c10.add(l10);
                            }
                        }
                    }
                } else {
                    AbstractC10561zE k10 = fe2.k();
                    if (!k10.e1() || !k10.d().w()) {
                        k10.f54317b.l().c(k10);
                        ArrayList arrayList = k10.f54321f;
                        int size = arrayList.size();
                        int i10 = 0;
                        while (i10 < size) {
                            Object obj = arrayList.get(i10);
                            i10++;
                            C10340xw0 c10340xw02 = (C10340xw0) obj;
                            arrayDeque.add(c10340xw02.j() ? c10340xw02.l() : c10340xw02.f53886c);
                        }
                        c10.add(k10);
                    }
                }
            }
        }
    }
}
