package com.android.tools.r8.internal;

import java.util.function.Function;

public abstract class AbstractC10198x40 {

    public static final boolean f53682a = true;

    public static C10031w40 a(C8415mP c8415mP) {
        if (f53682a || c8415mP != null) {
            return new C10031w40(c8415mP);
        }
        throw new AssertionError();
    }

    public abstract boolean b();

    public Object a() {
        throw new FN("Unexpected attempt to get absent value");
    }

    public Object a(Function function) {
        return "";
    }
}
