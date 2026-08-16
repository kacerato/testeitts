package com.android.tools.r8.internal;

import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Set;
import java.util.function.Consumer;

public abstract class AbstractC7701i6 {

    public static final boolean f48838a = true;

    public Set a(Object obj) {
        return a(obj, new C6286Yx0(1));
    }

    public abstract void a(Consumer consumer);

    public abstract void a(Consumer consumer, Object obj);

    public final ArrayList a() {
        final HashSet hashSet = new HashSet();
        final ArrayList arrayList = new ArrayList();
        a(new Consumer() {
            @Override
            public final void accept(Object obj) {
                AbstractC7701i6.this.a(hashSet, arrayList, obj);
            }
        });
        return arrayList;
    }

    public final void a(Set set, List list, Object obj) {
        if (set.contains(obj)) {
            return;
        }
        Set a10 = a(obj);
        list.add(a10);
        set.addAll(a10);
    }

    public final Set a(Object obj, C6286Yx0 c6286Yx0) {
        if (!f48838a && c6286Yx0.b()) {
            throw new AssertionError();
        }
        c6286Yx0.b((C6286Yx0) obj);
        while (c6286Yx0.b()) {
            a(new C8717oB0(c6286Yx0), c6286Yx0.c());
        }
        return c6286Yx0.f46126b;
    }
}
