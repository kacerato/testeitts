package com.android.tools.r8.graph;

import java.util.Comparator;
import java.util.Set;
import java.util.TreeSet;
import java.util.function.Supplier;

public final class V5 extends K5 {
    public V5(String str) {
        super(str, new Supplier() {
            @Override
            public final Object get() {
                return V5.a();
            }
        });
    }

    public static Set a() {
        return new TreeSet(new Comparator() {
            @Override
            public final int compare(Object obj, Object obj2) {
                int compareTo;
                compareTo = ((H2) obj).getType().compareTo(((H2) obj2).getType());
                return compareTo;
            }
        });
    }
}
