package com.android.tools.r8.internal;

import java.util.function.Function;

public final class C10031w40 extends AbstractC10198x40 {

    public final C8415mP f53412b;

    public C10031w40(C8415mP c8415mP) {
        this.f53412b = c8415mP;
    }

    @Override
    public final Object a() {
        return this.f53412b;
    }

    @Override
    public final boolean b() {
        return false;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof C10031w40) {
            return this.f53412b.equals(((C10031w40) obj).f53412b);
        }
        return false;
    }

    public final int hashCode() {
        return this.f53412b.hashCode();
    }

    public final String toString() {
        return this.f53412b.toString();
    }

    @Override
    public final Object a(Function function) {
        return function.apply(this.f53412b);
    }
}
