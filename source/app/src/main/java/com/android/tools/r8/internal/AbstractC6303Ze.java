package com.android.tools.r8.internal;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;

public abstract class AbstractC6303Ze extends AbstractC7452gf {
    public static List a(Collection collection) {
        GJ.c(collection, "<this>");
        if (collection.size() <= 1) {
            return b(collection);
        }
        Object[] array = collection.toArray(new Comparable[0]);
        Comparable[] comparableArr = (Comparable[]) array;
        GJ.c(comparableArr, "<this>");
        if (comparableArr.length > 1) {
            Arrays.sort(comparableArr);
        }
        return AbstractC6361a4.a(array);
    }

    public static List b(Iterable iterable) {
        ArrayList arrayList;
        GJ.c(iterable, "<this>");
        boolean z10 = iterable instanceof Collection;
        if (z10) {
            Collection collection = (Collection) iterable;
            int size = collection.size();
            if (size == 0) {
                return C6049Ut.f44892b;
            }
            if (size != 1) {
                return new ArrayList(collection);
            }
            List singletonList = Collections.singletonList(iterable instanceof List ? ((List) iterable).get(0) : collection.iterator().next());
            GJ.b(singletonList, "singletonList(...)");
            return singletonList;
        }
        if (z10) {
            arrayList = new ArrayList((Collection) iterable);
        } else {
            arrayList = new ArrayList();
            Iterator it = iterable.iterator();
            while (it.hasNext()) {
                arrayList.add(it.next());
            }
        }
        int size2 = arrayList.size();
        if (size2 == 0) {
            return C6049Ut.f44892b;
        }
        if (size2 != 1) {
            return arrayList;
        }
        List singletonList2 = Collections.singletonList(arrayList.get(0));
        GJ.b(singletonList2, "singletonList(...)");
        return singletonList2;
    }

    public static final Iterator c(Iterable iterable) {
        return iterable.iterator();
    }

    public static List a(Collection collection, Comparator comparator) {
        if (collection.size() <= 1) {
            return b(collection);
        }
        Object[] array = collection.toArray(new Object[0]);
        GJ.c(array, "<this>");
        if (array.length > 1) {
            Arrays.sort(array, comparator);
        }
        return AbstractC6361a4.a(array);
    }

    public static C8889pD a(final List list) {
        return new C8889pD(new InterfaceC8342ly() {
            @Override
            public final Object a() {
                return AbstractC6303Ze.c(Iterable.this);
            }
        });
    }

    public static String a(Collection collection, String str, String str2, String str3, InterfaceC8676ny interfaceC8676ny, int i10) {
        if ((i10 & 1) != 0) {
            str = ", ";
        }
        if ((i10 & 2) != 0) {
            str2 = "";
        }
        if ((i10 & 4) != 0) {
            str3 = "";
        }
        if ((i10 & 32) != 0) {
            interfaceC8676ny = null;
        }
        StringBuilder sb2 = new StringBuilder();
        sb2.append((CharSequence) str2);
        Iterator<E> it = collection.iterator();
        int i11 = 0;
        while (it.hasNext()) {
            Object next = it.next();
            i11++;
            if (i11 > 1) {
                sb2.append((CharSequence) str);
            }
            if (interfaceC8676ny != null) {
                sb2.append((CharSequence) interfaceC8676ny.a(next));
            } else {
                if (next != null ? next instanceof CharSequence : true) {
                    sb2.append((CharSequence) next);
                } else if (next instanceof Character) {
                    sb2.append(((Character) next).charValue());
                } else {
                    sb2.append((CharSequence) next.toString());
                }
            }
        }
        sb2.append((CharSequence) str3);
        return sb2.toString();
    }
}
