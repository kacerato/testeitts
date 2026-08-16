package com.android.tools.r8.internal;

import java.util.ArrayList;
import java.util.IdentityHashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import java.util.function.BooleanSupplier;
import java.util.function.Function;

public final class C6613bd {

    public static final boolean f46803d = true;

    public final Set f46804a;

    public final Set f46805b = AbstractC5513Ll0.c();

    public final IdentityHashMap f46806c = new IdentityHashMap();

    public C6613bd(C10340xw0 c10340xw0) {
        Set c10 = AbstractC5513Ll0.c();
        c10.add(c10340xw0);
        this.f46804a = c10;
    }

    public static List b(C10340xw0 c10340xw0) {
        return new ArrayList();
    }

    public final void a(C10340xw0 c10340xw0, BooleanSupplier booleanSupplier) {
        boolean z10 = f46803d;
        if (!z10 && this.f46804a.contains(c10340xw0)) {
            throw new AssertionError();
        }
        if (this.f46805b.contains(c10340xw0)) {
            if (!z10 && this.f46806c.containsKey(c10340xw0)) {
                throw new AssertionError();
            }
            return;
        }
        ((List) this.f46806c.computeIfAbsent(c10340xw0, new Function() {
            @Override
            public final Object apply(Object obj) {
                return C6613bd.b((C10340xw0) obj);
            }
        })).add(booleanSupplier);
    }

    public final boolean a(C10340xw0 c10340xw0) {
        if (this.f46805b.contains(c10340xw0)) {
            return false;
        }
        List list = (List) this.f46806c.get(c10340xw0);
        if (list != null) {
            Iterator it = list.iterator();
            while (it.hasNext()) {
                if (!((BooleanSupplier) it.next()).getAsBoolean()) {
                    return false;
                }
            }
        }
        this.f46806c.remove(c10340xw0);
        boolean add = this.f46804a.add(c10340xw0);
        if (f46803d || add) {
            return true;
        }
        throw new AssertionError((Object) (c10340xw0.toString() + " already added as an alias"));
    }
}
