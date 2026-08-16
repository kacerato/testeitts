package com.android.tools.r8.internal;

import java.util.ArrayList;
import java.util.Comparator;
import java.util.List;

public abstract class AbstractC8619nf {

    public static final boolean f51013a = true;

    public static int a(AbstractC7552hC abstractC7552hC, AbstractC7552hC abstractC7552hC2) {
        C6906dK0 c6906dK0 = new C6906dK0();
        int compare = Integer.compare(abstractC7552hC.size(), abstractC7552hC2.size());
        for (int i10 = 0; i10 < abstractC7552hC.size() && compare == 0; i10++) {
            compare = c6906dK0.compare(abstractC7552hC.get(i10), abstractC7552hC2.get(i10));
        }
        return compare;
    }

    public static Comparator b(final Comparator comparator) {
        return new Comparator() {
            @Override
            public final int compare(Object obj, Object obj2) {
                return AbstractC8619nf.a(Comparator.this, (List) obj, (List) obj2);
            }
        };
    }

    public static int a(Comparator comparator, List list, List list2) {
        int compare = Integer.compare(list.size(), list2.size());
        for (int i10 = 0; i10 < list.size() && compare == 0; i10++) {
            compare = comparator.compare(list.get(i10), list2.get(i10));
        }
        return compare;
    }

    public static int a(int[] iArr, int[] iArr2) {
        int compare = Integer.compare(iArr.length, iArr2.length);
        for (int i10 = 0; i10 < iArr.length && compare == 0; i10++) {
            compare = Integer.compare(iArr[i10], iArr2[i10]);
        }
        return compare;
    }

    public static Comparator a(final Comparator comparator) {
        return new Comparator() {
            @Override
            public final int compare(Object obj, Object obj2) {
                return AbstractC8619nf.a(Comparator.this, (Object[]) obj, (Object[]) obj2);
            }
        };
    }

    public static int a(Comparator comparator, Object[] objArr, Object[] objArr2) {
        int compare = Integer.compare(objArr.length, objArr2.length);
        for (int i10 = 0; i10 < objArr.length && compare == 0; i10++) {
            compare = comparator.compare(objArr[i10], objArr2[i10]);
        }
        return compare;
    }

    public static int a(SG sg2, SG sg3, Comparator comparator) {
        int compare = Integer.compare(sg2.size(), sg3.size());
        if (compare != 0) {
            return compare;
        }
        if (sg2.isEmpty()) {
            if (f51013a || sg3.isEmpty()) {
                return 0;
            }
            throw new AssertionError();
        }
        Integer a10 = a(sg2, sg3);
        Integer a11 = a(sg3, sg2);
        if (a10 != null) {
            if (f51013a || a11 != null) {
                return a10.compareTo(a11);
            }
            throw new AssertionError();
        }
        ArrayList arrayList = new ArrayList(sg2.o());
        arrayList.sort(new C7752iQ0());
        int size = arrayList.size();
        int i10 = 0;
        while (i10 < size) {
            Object obj = arrayList.get(i10);
            i10++;
            int intValue = ((Integer) obj).intValue();
            int compare2 = comparator.compare(sg2.get(intValue), sg3.get(intValue));
            if (compare2 != 0) {
                return compare2;
            }
        }
        return 0;
    }

    public static Integer a(SG sg2, SG sg3) {
        PH it = sg2.o().iterator();
        boolean z10 = false;
        int i10 = Integer.MAX_VALUE;
        while (it.hasNext()) {
            int intValue = ((Integer) it.next()).intValue();
            if (!sg3.a(intValue)) {
                i10 = z10 ? Math.min(i10, intValue) : intValue;
                z10 = true;
            }
        }
        if (z10) {
            return Integer.valueOf(i10);
        }
        return null;
    }
}
