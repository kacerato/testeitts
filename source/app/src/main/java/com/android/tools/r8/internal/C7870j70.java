package com.android.tools.r8.internal;

import com.android.tools.r8.graph.C4798y;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.LinkedList;

public final class C7870j70 extends AbstractC10102wY {

    public static final boolean f49159c = true;

    public final C4798y f49160b;

    public C7870j70(C4798y c4798y) {
        this.f49160b = c4798y;
    }

    @Override
    public final Collection a(AA aa2) {
        ArrayList arrayList = new ArrayList();
        Iterator<E> it = aa2.f38553b.iterator();
        while (it.hasNext()) {
            final com.android.tools.r8.graph.H2 h22 = (com.android.tools.r8.graph.H2) it.next();
            if (JK.a(arrayList.iterator(), new V60() {
                @Override
                public final boolean apply(Object obj) {
                    return C7870j70.this.a(h22, (C7705i70) obj);
                }
            }) == -1) {
                C7705i70 c7705i70 = new C7705i70();
                boolean a10 = c7705i70.a(h22, this.f49160b);
                if (!f49159c && !a10) {
                    throw new AssertionError();
                }
                arrayList.add(c7705i70);
            }
        }
        LinkedList linkedList = new LinkedList();
        int size = arrayList.size();
        int i10 = 0;
        while (i10 < size) {
            Object obj = arrayList.get(i10);
            i10++;
            C7705i70 c7705i702 = (C7705i70) obj;
            if (!c7705i702.f48845a.k()) {
                linkedList.add(c7705i702.f48845a);
            }
        }
        return linkedList;
    }

    @Override
    public final String f() {
        return "PreserveMethodCharacteristics";
    }

    public final boolean a(com.android.tools.r8.graph.H2 h22, C7705i70 c7705i70) {
        return c7705i70.a(h22, this.f49160b);
    }
}
