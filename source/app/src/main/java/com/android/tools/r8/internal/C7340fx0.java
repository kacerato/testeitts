package com.android.tools.r8.internal;

import com.android.tools.r8.graph.C4387c4;
import com.android.tools.r8.graph.C4798y;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Set;
import java.util.concurrent.ExecutorService;
import java.util.function.Function;
import java.util.function.Predicate;

public final class C7340fx0 extends AbstractC9536t60 {

    public static final boolean f48144c = true;

    public final C4387c4 f48145b;

    public C7340fx0(C4798y c4798y, C4387c4 c4387c4) {
        this.f48145b = c4387c4;
    }

    public static com.android.tools.r8.graph.M2 a(C8340lx0 c8340lx0) {
        return c8340lx0.f50154b.getType();
    }

    public final ArrayList a(Set set) {
        ArrayList arrayList = new ArrayList();
        Iterator it = set.iterator();
        while (it.hasNext()) {
            com.android.tools.r8.graph.H2 h22 = (com.android.tools.r8.graph.H2) it.next();
            List list = (List) this.f48145b.f37096b.getOrDefault(h22, Collections.EMPTY_LIST);
            if (list.size() == 1) {
                arrayList.add(new C8340lx0(h22, (com.android.tools.r8.graph.H2) AT.a(list)));
            }
        }
        Comparator comparing = Comparator.comparing(new Function() {
            @Override
            public final Object apply(Object obj) {
                return C7340fx0.a((C8340lx0) obj);
            }
        });
        boolean z10 = AT.f38618a;
        arrayList.sort(comparing);
        return arrayList;
    }

    @Override
    public final LinkedList a(AbstractC9369s60 abstractC9369s60, LinkedList linkedList, ExecutorService executorService) {
        if (f48144c || abstractC9369s60.k()) {
            return a(abstractC9369s60.d(), linkedList);
        }
        throw new AssertionError();
    }

    public static LinkedList a(final AbstractC7674hx0 abstractC7674hx0, LinkedList linkedList) {
        final Object a10 = abstractC7674hx0.a(linkedList);
        linkedList.removeIf(new Predicate() {
            @Override
            public final boolean test(Object obj) {
                return C7340fx0.a(AbstractC7674hx0.this, a10, (C8340lx0) obj);
            }
        });
        return linkedList;
    }

    public static boolean a(AbstractC7674hx0 abstractC7674hx0, Object obj, C8340lx0 c8340lx0) {
        if (abstractC7674hx0.a(c8340lx0, obj)) {
            return false;
        }
        if (f48144c) {
            return true;
        }
        abstractC7674hx0.a(c8340lx0.f50154b.isInterface(), 2, Collections.EMPTY_LIST);
        return true;
    }
}
