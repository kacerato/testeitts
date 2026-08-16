package com.google.android.gms.internal.auth;

import java.util.Comparator;

public final class C11920c1 implements Comparator {
    @Override
    public final int compare(Object obj, Object obj2) {
        AbstractC11956l1 abstractC11956l1 = (AbstractC11956l1) obj;
        AbstractC11956l1 abstractC11956l12 = (AbstractC11956l1) obj2;
        C11916b1 c11916b1 = new C11916b1(abstractC11956l1);
        C11916b1 c11916b12 = new C11916b1(abstractC11956l12);
        while (c11916b1.hasNext() && c11916b12.hasNext()) {
            int compareTo = Integer.valueOf(c11916b1.N1() & 255).compareTo(Integer.valueOf(c11916b12.N1() & 255));
            if (compareTo != 0) {
                return compareTo;
            }
        }
        return Integer.valueOf(abstractC11956l1.l()).compareTo(Integer.valueOf(abstractC11956l12.l()));
    }
}
