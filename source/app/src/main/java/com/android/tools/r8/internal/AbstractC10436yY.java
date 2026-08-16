package com.android.tools.r8.internal;

import java.util.Collection;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.function.Function;

public abstract class AbstractC10436yY<T> extends AbstractC10102wY {
    public abstract T a(com.android.tools.r8.graph.H2 h22);

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public final Collection a(AA aa2) {
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        Iterator<E> it = aa2.f38553b.iterator();
        while (it.hasNext()) {
            com.android.tools.r8.graph.H2 h22 = (com.android.tools.r8.graph.H2) it.next();
            T a10 = a(h22);
            if (a10 != null) {
                ((AA) linkedHashMap.computeIfAbsent(a10, new Function() {
                    @Override
                    public final Object apply(Object obj) {
                        return AbstractC10436yY.a(obj);
                    }
                })).f38553b.add(h22);
            }
        }
        AbstractC9369s60.a(linkedHashMap.values());
        return linkedHashMap.values();
    }

    public static AA a(Object obj) {
        return new AA();
    }
}
