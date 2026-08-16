package com.android.tools.r8.internal;

import java.util.Iterator;

public final class C6661bt implements Iterator {

    public static final boolean f46877d = true;

    public W5 f46878b;

    public final C6993dt f46879c;

    public C6661bt(C6993dt c6993dt, W5 w52) {
        this.f46879c = c6993dt;
        this.f46878b = w52;
    }

    @Override
    public final boolean hasNext() {
        return this.f46878b != null;
    }

    @Override
    public final Object next() {
        if (!hasNext()) {
            return null;
        }
        W5 w52 = this.f46878b;
        if (w52.q() == 0) {
            this.f46878b = null;
            return w52;
        }
        C6993dt c6993dt = this.f46879c;
        W5 w53 = this.f46878b;
        if (!C6993dt.f47533f && c6993dt.f47538e) {
            throw new AssertionError();
        }
        W5 w54 = c6993dt.f47535b[w53.q()];
        this.f46878b = w54;
        if (f46877d || w54 != w52) {
            return w52;
        }
        throw new AssertionError();
    }
}
