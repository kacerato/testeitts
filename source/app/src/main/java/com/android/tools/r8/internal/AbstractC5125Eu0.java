package com.android.tools.r8.internal;

import java.util.Iterator;

public abstract class AbstractC5125Eu0 {

    public static final boolean f40048a = true;

    public static void a(C10340xw0 c10340xw0, C6286Yx0 c6286Yx0) {
        Iterator<AbstractC10561zE> it = c10340xw0.b0().iterator();
        while (it.hasNext()) {
            c6286Yx0.b((C6286Yx0) new C5067Du0(it.next(), c10340xw0));
        }
        Iterator it2 = c10340xw0.a0().iterator();
        while (it2.hasNext()) {
            c6286Yx0.b((C6286Yx0) new C5067Du0((C7201f60) it2.next(), c10340xw0));
        }
    }
}
