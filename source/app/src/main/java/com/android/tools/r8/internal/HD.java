package com.android.tools.r8.internal;

import java.util.Iterator;
import java.util.Set;
import java.util.function.Predicate;

public abstract class HD {

    public static final boolean f40715a = true;

    public static void a(C7215fB c7215fB, Set set, Set set2) {
        if (!f40715a && !c7215fB.f47902i.a(42)) {
            throw new AssertionError();
        }
        Iterator it = c7215fB.b((Predicate) new OG0()).iterator();
        while (it.hasNext()) {
            a(((C10340xw0) ((WX) it.next()).f54321f.get(0)).i(), set, set2);
        }
    }

    public static void a(C10340xw0 c10340xw0, Set set, Set set2) {
        if (!f40715a && c10340xw0.i() != c10340xw0) {
            throw new AssertionError();
        }
        if (!c10340xw0.j()) {
            AbstractC10561zE abstractC10561zE = c10340xw0.f53886c;
            abstractC10561zE.getClass();
            if (abstractC10561zE instanceof C7957jh) {
                set.add(c10340xw0.f53886c.F().f49303l);
                return;
            }
        }
        set2.add(c10340xw0);
    }
}
