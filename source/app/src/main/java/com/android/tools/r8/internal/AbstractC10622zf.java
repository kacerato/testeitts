package com.android.tools.r8.internal;

import java.util.Comparator;

public abstract class AbstractC10622zf {
    public static final int a(InterfaceC8676ny[] interfaceC8676nyArr, Object obj, Object obj2) {
        int compareTo;
        for (InterfaceC8676ny interfaceC8676ny : interfaceC8676nyArr) {
            Comparable comparable = (Comparable) interfaceC8676ny.a(obj);
            Comparable comparable2 = (Comparable) interfaceC8676ny.a(obj2);
            if (comparable == comparable2) {
                compareTo = 0;
            } else if (comparable == null) {
                compareTo = -1;
            } else {
                compareTo = comparable2 == null ? 1 : comparable.compareTo(comparable2);
            }
            if (compareTo != 0) {
                return compareTo;
            }
        }
        return 0;
    }

    public static Comparator a(final InterfaceC8676ny... interfaceC8676nyArr) {
        if (interfaceC8676nyArr.length > 0) {
            return new Comparator() {
                @Override
                public final int compare(Object obj, Object obj2) {
                    return AbstractC10622zf.a(interfaceC8676nyArr, obj, obj2);
                }
            };
        }
        throw new IllegalArgumentException("Failed requirement.");
    }

    public static Comparator a() {
        final C6768cZ c6768cZ = C6768cZ.f47078b;
        return new Comparator() {
            @Override
            public final int compare(Object obj, Object obj2) {
                return AbstractC10622zf.a(Comparator.this, obj, obj2);
            }
        };
    }

    public static final int a(Comparator comparator, Object obj, Object obj2) {
        if (obj == obj2) {
            return 0;
        }
        if (obj == null) {
            return 1;
        }
        if (obj2 == null) {
            return -1;
        }
        return comparator.compare(obj, obj2);
    }
}
