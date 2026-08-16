package com.android.tools.r8.internal;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;

public abstract class AbstractC9369s60 {

    public static final boolean f52280a = true;

    public AbstractC10102wY a() {
        return null;
    }

    public AbstractC10269xY b() {
        return null;
    }

    public AbstractC10644zm0 c() {
        return null;
    }

    public AbstractC7674hx0 d() {
        return null;
    }

    public void e() {
    }

    public abstract String f();

    public boolean g() {
        return this instanceof C7172ex;
    }

    public boolean h() {
        return false;
    }

    public boolean i() {
        return false;
    }

    public boolean j() {
        return false;
    }

    public boolean k() {
        return false;
    }

    public boolean l() {
        return false;
    }

    public static Collection a(Collection collection) {
        if (!f52280a && (collection instanceof ArrayList)) {
            throw new AssertionError();
        }
        collection.removeIf(new C10663zs1());
        return collection;
    }

    public final void a(boolean z10, int i10, Collection collection) {
        if (!f52280a && i10 < 2) {
            throw new AssertionError();
        }
        int i11 = i10 - 1;
        Iterator it = collection.iterator();
        int i12 = 0;
        while (it.hasNext()) {
            if (!((AA) it.next()).k()) {
                i12 += r0.f38553b.size() - 1;
            }
        }
        if (!f52280a && i11 < i12) {
            throw new AssertionError();
        }
        synchronized (this) {
        }
    }
}
