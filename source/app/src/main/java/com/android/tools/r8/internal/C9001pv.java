package com.android.tools.r8.internal;

import java.util.Collections;
import java.util.Iterator;
import java.util.List;

public final class C9001pv implements InterfaceC10164wt0, Cloneable {

    public static final C9001pv f51661e = new C9001pv();

    public boolean f51662b;

    public final List f51663c;

    public final List f51664d;

    public C9001pv() {
        List list = Collections.EMPTY_LIST;
        this.f51663c = list;
        this.f51664d = list;
    }

    @Override
    public final AbstractC9997vt0 a(C5713Oz c5713Oz, C5009Cu0 c5009Cu0) {
        boolean z10;
        boolean a10 = a(c5009Cu0.f39378a);
        boolean z11 = false;
        if (a10) {
            z10 = true;
        } else {
            Iterator it = this.f51663c.iterator();
            if (it.hasNext()) {
                it.next().getClass();
                throw new ClassCastException();
            }
            z10 = false;
        }
        if (a10) {
            z11 = true;
        } else {
            Iterator it2 = this.f51664d.iterator();
            if (it2.hasNext()) {
                it2.next().getClass();
                throw new ClassCastException();
            }
        }
        if (z10 || z11) {
            return new C8834ov(this, z11, z10, c5713Oz, c5009Cu0);
        }
        return null;
    }

    public final C9001pv m742clone() {
        try {
            return (C9001pv) super.clone();
        } catch (CloneNotSupportedException e10) {
            throw new AssertionError(e10);
        }
    }

    public static boolean a(Class cls) {
        if (Enum.class.isAssignableFrom(cls) || (cls.getModifiers() & 8) != 0) {
            return false;
        }
        return cls.isAnonymousClass() || cls.isLocalClass();
    }
}
