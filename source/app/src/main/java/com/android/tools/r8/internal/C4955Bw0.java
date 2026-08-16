package com.android.tools.r8.internal;

import java.util.ArrayList;
import java.util.Collection;
import java.util.IdentityHashMap;
import java.util.Iterator;
import java.util.Set;
import java.util.function.Function;

public final class C4955Bw0 {

    public static final boolean f39041b = true;

    public final IdentityHashMap f39042a = new IdentityHashMap();

    /* JADX WARN: Multi-variable type inference failed */
    public final C4897Aw0 a(C10340xw0 c10340xw0) {
        return (C4897Aw0) this.f39042a.computeIfAbsent(c10340xw0, new Function() {
            @Override
            public final Object apply(Object obj) {
                return new C4897Aw0((C10340xw0) obj);
            }
        });
    }

    public final void a() {
        Collection values = this.f39042a.values();
        C6286Yx0 c6286Yx0 = new C6286Yx0(2);
        c6286Yx0.b((Iterable) values);
        while (c6286Yx0.b()) {
            C4897Aw0 c4897Aw0 = (C4897Aw0) c6286Yx0.c();
            C5684Ok0 c5684Ok0 = new C5684Ok0(new Function() {
                @Override
                public final Object apply(Object obj) {
                    return ((C4897Aw0) obj).a();
                }
            });
            if (!C5684Ok0.f43006h && c5684Ok0.f43007a != 0) {
                throw new AssertionError();
            }
            c5684Ok0.a(c4897Aw0);
            ArrayList arrayList = c5684Ok0.f43012f;
            int size = arrayList.size();
            int i10 = 0;
            while (i10 < size) {
                Object obj = arrayList.get(i10);
                i10++;
                Set set = (Set) obj;
                Iterator<E> it = set.iterator();
                if (!f39041b && !it.hasNext()) {
                    throw new AssertionError();
                }
                C4897Aw0 c4897Aw02 = (C4897Aw0) it.next();
                while (it.hasNext()) {
                    C4897Aw0 c4897Aw03 = (C4897Aw0) it.next();
                    for (C4897Aw0 c4897Aw04 : c4897Aw03.f38741c) {
                        c4897Aw04.f38742d.remove(c4897Aw03);
                        c4897Aw04.f38742d.add(c4897Aw02);
                        c4897Aw02.f38741c.add(c4897Aw04);
                    }
                    c4897Aw03.f38741c.clear();
                    for (C4897Aw0 c4897Aw05 : c4897Aw03.f38742d) {
                        c4897Aw05.f38741c.remove(c4897Aw03);
                        c4897Aw05.f38741c.add(c4897Aw02);
                        c4897Aw02.f38742d.add(c4897Aw05);
                    }
                    c4897Aw03.f38742d.clear();
                    c4897Aw02.f38740b.addAll(c4897Aw03.f38740b);
                    this.f39042a.put(c4897Aw03.f38739a, c4897Aw02);
                }
                c6286Yx0.a(set);
            }
        }
    }
}
