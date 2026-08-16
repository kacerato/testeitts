package com.android.tools.r8.internal;

import java.math.RoundingMode;
import java.util.Collection;
import java.util.EnumSet;
import java.util.Set;
import java.util.SortedSet;

public abstract class QC extends XB implements Set {

    public static final int f43505c = 0;

    public static QC a(Object obj, Object obj2, Object obj3, Object obj4, Object obj5, Object obj6, Object... objArr) {
        if (objArr.length <= 2147483641) {
            int length = objArr.length + 6;
            Object[] objArr2 = new Object[length];
            objArr2[0] = obj;
            objArr2[1] = obj2;
            objArr2[2] = obj3;
            objArr2[3] = obj4;
            objArr2[4] = obj5;
            objArr2[5] = obj6;
            System.arraycopy(objArr, 0, objArr2, 6, objArr.length);
            return a(length, length, objArr2);
        }
        throw new IllegalArgumentException("the total number of elements must fit in an int");
    }

    public static IC h() {
        return new IC();
    }

    public static int j(int i10) {
        int max = Math.max(i10, 2);
        if (max >= 751619276) {
            if (max < 1073741824) {
                return 1073741824;
            }
            throw new IllegalArgumentException("collection too large");
        }
        int highestOneBit = Integer.highestOneBit(max - 1) << 1;
        while (highestOneBit * 0.7d < max) {
            highestOneBit <<= 1;
        }
        return highestOneBit;
    }

    @Override
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if ((obj instanceof QC) && i() && ((QC) obj).i() && hashCode() != obj.hashCode()) {
            return false;
        }
        if (this == obj) {
            return true;
        }
        if (obj instanceof Set) {
            Set set = (Set) obj;
            try {
                if (size() == set.size()) {
                    if (containsAll(set)) {
                        return true;
                    }
                }
            } catch (ClassCastException | NullPointerException unused) {
            }
        }
        return false;
    }

    @Override
    public int hashCode() {
        return AbstractC5513Ll0.a((Set) this);
    }

    public boolean i() {
        return this instanceof C6552bC;
    }

    public static QC a(int i10, int i11, Object... objArr) {
        if (i10 == 0) {
            return C7119ef0.f47742j;
        }
        if (i10 != 1) {
            PC oc2 = new OC(i11);
            for (int i12 = 0; i12 < i10; i12++) {
                Object obj = objArr[i12];
                obj.getClass();
                oc2 = oc2.a(obj);
            }
            return oc2.c().a();
        }
        return new C5978Tm0(objArr[0]);
    }

    /* JADX WARN: Failed to find 'out' block for switch in B:16:0x005c. Please report as an issue. */
    public static QC a(Collection collection) {
        int i10;
        if ((collection instanceof QC) && !(collection instanceof SortedSet)) {
            QC qc2 = (QC) collection;
            if (!qc2.g()) {
                return qc2;
            }
        } else if (collection instanceof EnumSet) {
            EnumSet copyOf = EnumSet.copyOf((EnumSet) collection);
            int size = copyOf.size();
            if (size == 0) {
                return C7119ef0.f47742j;
            }
            if (size != 1) {
                return new C6552bC(copyOf);
            }
            return new C5978Tm0((Enum) AbstractC9907vK.a(copyOf));
        }
        Object[] array = collection.toArray();
        if (collection instanceof Set) {
            return a(array.length, array.length, array);
        }
        int length = array.length;
        RoundingMode roundingMode = RoundingMode.CEILING;
        if (length >= 0) {
            int sqrt = (int) Math.sqrt(length);
            switch (XH.f45647a[roundingMode.ordinal()]) {
                case 1:
                    if (sqrt * sqrt != length) {
                        throw new ArithmeticException("mode was UNNECESSARY, but rounding was necessary");
                    }
                case 2:
                case 3:
                    return a(length, Math.max(4, sqrt), array);
                case 4:
                case 5:
                    i10 = sqrt * sqrt;
                    sqrt += (~(~(i10 - length))) >>> 31;
                    return a(length, Math.max(4, sqrt), array);
                case 6:
                case 7:
                case 8:
                    i10 = (sqrt * sqrt) + sqrt;
                    sqrt += (~(~(i10 - length))) >>> 31;
                    return a(length, Math.max(4, sqrt), array);
                default:
                    throw new AssertionError();
            }
        } else {
            throw new IllegalArgumentException(HC.a(length, "x (", ") must be >= 0"));
        }
    }
}
