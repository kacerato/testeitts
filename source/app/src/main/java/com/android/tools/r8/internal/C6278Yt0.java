package com.android.tools.r8.internal;

import java.util.Calendar;
import java.util.GregorianCalendar;

public final class C6278Yt0 implements InterfaceC10164wt0 {

    public final C5818Qt0 f46103b;

    public C6278Yt0(C5818Qt0 c5818Qt0) {
        this.f46103b = c5818Qt0;
    }

    @Override
    public final AbstractC9997vt0 a(C5713Oz c5713Oz, C5009Cu0 c5009Cu0) {
        Class cls = c5009Cu0.f39378a;
        if (cls == Calendar.class || cls == GregorianCalendar.class) {
            return this.f46103b;
        }
        return null;
    }

    public final String toString() {
        return "Factory[type=" + Calendar.class.getName() + "+" + GregorianCalendar.class.getName() + ",adapter=" + ((Object) this.f46103b) + "]";
    }
}
