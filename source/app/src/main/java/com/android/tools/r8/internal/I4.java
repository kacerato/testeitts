package com.android.tools.r8.internal;

import java.util.Collection;
import java.util.Iterator;
import java.util.LinkedList;

public abstract class I4 extends AbstractC10102wY {
    @Override
    public final Collection a(AA aa2) {
        LinkedList linkedList = new LinkedList();
        Iterator<E> it = aa2.f38553b.iterator();
        while (it.hasNext()) {
            com.android.tools.r8.graph.H2 h22 = (com.android.tools.r8.graph.H2) it.next();
            if (a(h22)) {
                AA aa3 = new AA();
                aa3.f38553b.add(h22);
                linkedList.add(aa3);
            }
        }
        if (linkedList.size() <= 1) {
            int i10 = AbstractC7552hC.f48487c;
            return new C5920Sm0(aa2);
        }
        if (!AbstractC10241xK.f53735a && linkedList.isEmpty()) {
            throw new AssertionError();
        }
        Iterator it2 = linkedList.iterator();
        Iterator<E> it3 = aa2.f38553b.iterator();
        while (it3.hasNext()) {
            com.android.tools.r8.graph.H2 h23 = (com.android.tools.r8.graph.H2) it3.next();
            if (!a(h23)) {
                boolean hasNext = it2.hasNext();
                it2 = it2;
                if (!hasNext) {
                    it2 = linkedList.iterator();
                }
                ((AA) it2.next()).f38553b.add(h23);
            }
        }
        return AbstractC9369s60.a(linkedList);
    }

    public abstract boolean a(com.android.tools.r8.graph.H2 h22);
}
