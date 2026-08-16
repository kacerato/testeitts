package com.android.tools.r8.internal;

import java.util.Iterator;
import java.util.Set;
import java.util.function.Predicate;

public final class C4897Aw0 {

    public final C10340xw0 f38739a;

    public final Set f38740b;

    public final Set f38741c;

    public final Set f38742d;

    public C4897Aw0(C10340xw0 c10340xw0) {
        Set c10 = AbstractC5513Ll0.c();
        this.f38740b = c10;
        this.f38741c = AbstractC5513Ll0.c();
        this.f38742d = AbstractC5513Ll0.c();
        c10.add(c10340xw0);
        this.f38739a = c10340xw0;
    }

    public final Set a() {
        return this.f38742d;
    }

    public final boolean a(Predicate predicate) {
        Iterator it = this.f38742d.iterator();
        while (it.hasNext()) {
            if (predicate.test((C4897Aw0) it.next())) {
                return true;
            }
        }
        return false;
    }
}
