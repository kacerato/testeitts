package com.android.tools.r8.internal;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;

public abstract class AbstractC9907vK {
    public static C6057Ux a(ArrayList arrayList, List list) {
        return AbstractC6114Vx.b(list, arrayList);
    }

    public static boolean b(Iterable iterable, V60 v60) {
        return JK.a(iterable.iterator(), v60) != -1;
    }

    public static C9239rK c(Iterable iterable, V60 v60) {
        iterable.getClass();
        v60.getClass();
        return new C9239rK(iterable, v60);
    }

    public static Object a(Collection collection) {
        Iterator<E> it = collection.iterator();
        Object next = it.next();
        if (!it.hasNext()) {
            return next;
        }
        StringBuilder sb2 = new StringBuilder("expected one element but was: <");
        sb2.append(next);
        for (int i10 = 0; i10 < 4 && it.hasNext(); i10++) {
            sb2.append(", ");
            sb2.append(it.next());
        }
        if (it.hasNext()) {
            sb2.append(", ...");
        }
        sb2.append('>');
        throw new IllegalArgumentException(sb2.toString());
    }

    public static void a(Iterable iterable, Collection collection) {
        if (iterable instanceof Collection) {
            collection.addAll((Collection) iterable);
        } else {
            iterable.getClass();
            JK.a(collection, iterable.iterator());
        }
    }

    public static boolean a(Iterable iterable, V60 v60) {
        Iterator it = iterable.iterator();
        v60.getClass();
        while (it.hasNext()) {
            if (!v60.apply(it.next())) {
                return false;
            }
        }
        return true;
    }

    public static Object a(Iterable iterable, V60 v60, C5439Ke0 c5439Ke0) {
        Iterator it = iterable.iterator();
        it.getClass();
        v60.getClass();
        while (it.hasNext()) {
            Object next = it.next();
            if (v60.apply(next)) {
                return next;
            }
        }
        return c5439Ke0;
    }

    public static C9740uK a(List list) {
        list.getClass();
        return new C9740uK(list);
    }

    public static C9406sK a(Iterable iterable, InterfaceC5422Jy interfaceC5422Jy) {
        iterable.getClass();
        interfaceC5422Jy.getClass();
        return new C9406sK(iterable, interfaceC5422Jy);
    }
}
