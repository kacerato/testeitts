package com.android.tools.r8.dex;

import com.android.tools.r8.graph.H2;
import com.android.tools.r8.internal.AbstractC9148qo0;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Comparator;
import java.util.IdentityHashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.function.Predicate;

public final class p0 {

    public final ArrayList f35916a;

    public final ArrayList f35917b;

    public p0(ArrayList arrayList, ArrayList arrayList2) {
        this.f35916a = arrayList;
        this.f35917b = arrayList2;
    }

    public static p0 a(Collection collection, IdentityHashMap identityHashMap, AbstractC9148qo0 abstractC9148qo0) {
        Comparator a10 = a(identityHashMap);
        Predicate a11 = a(abstractC9148qo0);
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList(collection.size());
        Iterator it = collection.iterator();
        while (it.hasNext()) {
            H2 h22 = (H2) it.next();
            if (a11.test(h22)) {
                arrayList.add(h22);
            } else {
                arrayList2.add(h22);
            }
        }
        arrayList.sort(a10);
        arrayList2.sort(a10);
        return new p0(arrayList, arrayList2);
    }

    public static Comparator a(final IdentityHashMap identityHashMap) {
        return new Comparator() {
            @Override
            public final int compare(Object obj, Object obj2) {
                return com.android.tools.r8.dex.p0.a(Map.this, (H2) obj, (H2) obj2);
            }
        };
    }

    public static int a(Map map, H2 h22, H2 h23) {
        String str = (String) map.get(h22);
        String str2 = (String) map.get(h23);
        int lastIndexOf = str.lastIndexOf(46);
        int lastIndexOf2 = str2.lastIndexOf(46);
        if (lastIndexOf == -1 && lastIndexOf2 == -1) {
            return str.compareTo(str2);
        }
        if (lastIndexOf == -1) {
            return -1;
        }
        if (lastIndexOf2 == -1) {
            return 1;
        }
        int compareTo = str.substring(0, lastIndexOf).compareTo(str2.substring(0, lastIndexOf2));
        return compareTo != 0 ? compareTo : str.compareTo(str2);
    }

    public static Predicate a(final AbstractC9148qo0 abstractC9148qo0) {
        return new Predicate() {
            @Override
            public final boolean test(Object obj) {
                boolean b10;
                b10 = AbstractC9148qo0.this.b(((H2) obj).getType());
                return b10;
            }
        };
    }
}
