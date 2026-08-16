package com.android.tools.r8.internal;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import java.util.function.Consumer;
import java.util.function.Function;
import java.util.function.Predicate;

public class C6246Ye {
    public static void a(Set set, Consumer consumer, Object obj) {
        for (Object obj2 : set) {
            if (obj2.equals(obj)) {
                return;
            } else {
                consumer.accept(obj2);
            }
        }
    }

    public static void a(AbstractC8374m80 abstractC8374m80, Consumer consumer, Predicate predicate) {
        for (Object obj : abstractC8374m80) {
            if (predicate.test(obj)) {
                return;
            } else {
                consumer.accept(obj);
            }
        }
    }

    public static <T> Collection<T> a(Collection<T> collection, Comparator<T> comparator) {
        ArrayList arrayList = new ArrayList(collection);
        arrayList.sort(comparator);
        return arrayList;
    }

    public static String[] a(List list, Function function) {
        String[] strArr = new String[list.size()];
        Iterator<E> it = list.iterator();
        int i10 = 0;
        while (it.hasNext()) {
            strArr[i10] = (String) function.apply(it.next());
            i10++;
        }
        return strArr;
    }
}
