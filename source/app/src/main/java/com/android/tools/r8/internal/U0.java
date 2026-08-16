package com.android.tools.r8.internal;

import java.util.Iterator;

public class U0 extends AbstractC5397Jl0 {

    public final V0 f44648b;

    public U0(V0 v02) {
        this.f44648b = v02;
    }

    public LY a() {
        return this.f44648b;
    }

    @Override
    public final void clear() {
        a().clear();
    }

    @Override
    public final boolean contains(Object obj) {
        if (obj instanceof MY) {
            MY my = (MY) obj;
            if (my.a() > 0 && a().b(my.b()) == my.a()) {
                return true;
            }
        }
        return false;
    }

    @Override
    public final Iterator iterator() {
        return this.f44648b.g();
    }

    @Override
    public final boolean remove(Object obj) {
        if (!(obj instanceof MY)) {
            return false;
        }
        MY my = (MY) obj;
        Object b10 = my.b();
        int a10 = my.a();
        if (a10 != 0) {
            return a().a(a10, b10);
        }
        return false;
    }

    @Override
    public final int size() {
        return this.f44648b.c();
    }
}
