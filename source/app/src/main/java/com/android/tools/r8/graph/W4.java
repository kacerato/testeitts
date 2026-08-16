package com.android.tools.r8.graph;

import com.android.tools.r8.graph.Z4;
import com.android.tools.r8.internal.AbstractC5513Ll0;
import com.android.tools.r8.internal.AbstractC9907vK;
import com.android.tools.r8.internal.C4875Al0;
import com.android.tools.r8.internal.C6628bi;
import com.android.tools.r8.internal.V60;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import java.util.Set;
import java.util.function.Consumer;

public final class W4 {

    public static final boolean f36931d = true;

    public Z4 f36932a = null;

    public ArrayList f36933b = null;

    public boolean f36934c = false;

    public static boolean a(Z4.a aVar, Z4.a aVar2) {
        return aVar2 == aVar;
    }

    public final void a(Z4 z42) {
        if (this.f36932a == null) {
            this.f36932a = z42;
            return;
        }
        if (this.f36933b == null) {
            ArrayList arrayList = new ArrayList();
            this.f36933b = arrayList;
            arrayList.add(this.f36932a);
        }
        this.f36933b.add(z42);
    }

    public final Z4 a(Z4.a aVar, Collection collection) {
        Z4 z42 = this.f36932a;
        if (z42 == null) {
            return aVar;
        }
        if (this.f36933b == null) {
            return z42;
        }
        final ArrayList arrayList = new ArrayList();
        final ArrayList arrayList2 = new ArrayList();
        final ArrayList arrayList3 = new ArrayList();
        final Set c10 = AbstractC5513Ll0.c();
        this.f36933b.forEach(new Consumer() {
            @Override
            public final void accept(Object obj) {
                W4.this.a(arrayList, arrayList2, c10, arrayList3, (Z4) obj);
            }
        });
        if (!c10.isEmpty()) {
            if (arrayList2.isEmpty() && arrayList.isEmpty()) {
                arrayList3.add(Z4.b.f37018c);
            } else {
                arrayList3.add(a(c10, collection));
            }
        }
        if (arrayList.isEmpty()) {
            if (arrayList2.size() == 1 && arrayList3.isEmpty()) {
                return (Z4) arrayList2.get(0);
            }
            if (arrayList2.isEmpty() && arrayList3.size() == 1) {
                return (Z4) arrayList3.get(0);
            }
            return new C4426e5(arrayList2, arrayList3);
        }
        if (arrayList2.isEmpty() && arrayList3.isEmpty() && arrayList.size() == 1) {
            return (Z4) arrayList.get(0);
        }
        if (arrayList.size() == 1) {
            Z4.c cVar = (Z4.c) arrayList.get(0);
            cVar.getClass();
            if (cVar instanceof C4558l5) {
                return new C4483h5(cVar.n(), arrayList2, arrayList3);
            }
            C4520j5 m10 = cVar.m();
            if (f36931d || m10 != null) {
                return new C4407d5(m10, arrayList2, arrayList3);
            }
            throw new AssertionError();
        }
        return new C4445f5(arrayList, arrayList2, arrayList3);
    }

    public final void a(final List list, final List list2, final Set set, final List list3, Z4 z42) {
        z42.a(new Consumer() {
            @Override
            public final void accept(Object obj) {
                W4.this.a(list, (Z4.c) obj);
            }
        }, new Consumer() {
            @Override
            public final void accept(Object obj) {
                W4.a(List.this, (C4539k5) obj);
            }
        }, C6628bi.b(), new Consumer() {
            @Override
            public final void accept(Object obj) {
                W4.a(Set.this, list3, (Z4.a) obj);
            }
        });
    }

    public final void a(List list, Z4.c cVar) {
        if (!list.isEmpty() && !this.f36934c && !f36931d) {
            throw new AssertionError((Object) "Unexpected multiple results between program and classpath");
        }
        list.add(cVar);
    }

    public static void a(List list, final C4539k5 c4539k5) {
        if (AbstractC9907vK.b(list, new V60() {
            @Override
            public final boolean apply(Object obj) {
                return W4.a(C4539k5.this, (C4539k5) obj);
            }
        })) {
            return;
        }
        list.add(c4539k5);
    }

    public static boolean a(C4539k5 c4539k5, C4539k5 c4539k52) {
        return c4539k52.d() == c4539k5.d();
    }

    public static void a(Set set, List list, final Z4.a aVar) {
        if (aVar.t()) {
            set.add(aVar.l());
        }
        if (AbstractC9907vK.b(list, new V60() {
            @Override
            public final boolean apply(Object obj) {
                return W4.a(Z4.a.this, (Z4.a) obj);
            }
        })) {
            return;
        }
        list.add(aVar);
    }

    public static Z4.b a(Set set, Collection collection) {
        final Set a10 = C4875Al0.a(collection);
        set.forEach(new Consumer() {
            @Override
            public final void accept(Object obj) {
                W4.a(Set.this, (Z4.b) obj);
            }
        });
        if (a10.isEmpty()) {
            return Z4.b.f37018c;
        }
        return new C4502i5(a10);
    }

    public static void a(Set set, Z4.b bVar) {
        if (!f36931d && bVar != Z4.b.f37018c) {
            bVar.getClass();
            if (!(bVar instanceof C4502i5)) {
                throw new AssertionError();
            }
        }
        Collection collection = bVar.f37017b;
        if (collection != null) {
            set.addAll(collection);
        }
    }
}
