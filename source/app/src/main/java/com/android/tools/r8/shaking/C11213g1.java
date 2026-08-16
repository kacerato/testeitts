package com.android.tools.r8.shaking;

import android.provider.CalendarContract;

public final class C11213g1 {

    public static final C11213g1 f57330b = new C11213g1("none");

    public static final C11213g1 f57331c = new C11213g1(CalendarContract.CalendarColumns.VISIBLE);

    public static final C11213g1 f57332d = new C11213g1("invisible");

    public static final C11213g1 f57333e = new C11213g1(Tj.d.f25405q);

    public final String f57334a;

    public C11213g1(String str) {
        this.f57334a = str;
    }

    public final boolean a(C11213g1 c11213g1) {
        if (this == c11213g1 || a()) {
            return true;
        }
        c11213g1.getClass();
        return c11213g1 == f57333e;
    }

    public final boolean equals(Object obj) {
        return this == obj;
    }

    public final int hashCode() {
        return System.identityHashCode(this);
    }

    public final String toString() {
        return this.f57334a;
    }

    public final boolean a() {
        return this == f57330b;
    }
}
