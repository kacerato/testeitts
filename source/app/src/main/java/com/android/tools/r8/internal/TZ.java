package com.android.tools.r8.internal;

import com.android.tools.r8.graph.C4798y;
import com.android.tools.r8.shaking.C11245i;
import java.util.Collection;
import java.util.Collections;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.function.Predicate;

public final class TZ extends AbstractC10102wY {

    public final C4798y f44497b;

    public TZ(C4798y c4798y) {
        this.f44497b = c4798y;
    }

    public final boolean a(Collection collection, com.android.tools.r8.graph.H2 h22) {
        boolean z10 = ((C11245i) this.f44497b.f()).f57387B.contains(h22.getType()) || h22.h1();
        if (z10) {
            AA aa2 = new AA();
            aa2.f38553b.add(h22);
            collection.add(aa2);
        }
        return z10;
    }

    @Override
    public final String f() {
        return "NoDeadLocks";
    }

    @Override
    public final Collection a(AA aa2) {
        final LinkedList linkedList = new LinkedList();
        aa2.removeIf(new Predicate() {
            @Override
            public final boolean test(Object obj) {
                return TZ.this.a(linkedList, (com.android.tools.r8.graph.H2) obj);
            }
        });
        if (linkedList.isEmpty()) {
            return Collections.singletonList(aa2);
        }
        Iterator it = linkedList.iterator();
        Iterator<E> it2 = aa2.f38553b.iterator();
        Iterator it3 = it;
        while (it2.hasNext()) {
            com.android.tools.r8.graph.H2 h22 = (com.android.tools.r8.graph.H2) it2.next();
            if (!it3.hasNext()) {
                it3 = linkedList.iterator();
            }
            ((AA) it3.next()).f38553b.add(h22);
            it3 = it3;
        }
        AbstractC9369s60.a(linkedList);
        return linkedList;
    }
}
