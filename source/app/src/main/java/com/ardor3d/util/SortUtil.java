package com.ardor3d.util;

import java.util.Comparator;

public abstract class SortUtil {
    public static int SHELL_SORT_THRESHOLD = 17;

    public static <T> void merge(T[] tArr, T[] tArr2, int i10, int i11, int i12, Comparator<? super T> comparator) {
        int i13;
        T t10;
        int i14 = i11 + 1;
        int i15 = i10;
        int i16 = i14;
        while (i10 <= i12) {
            if (i15 == i14) {
                tArr2[i10] = tArr[i16];
                i16++;
            } else {
                if (i16 == i12 + 1) {
                    i13 = i15 + 1;
                    tArr2[i10] = tArr[i15];
                } else {
                    if (comparator.compare(tArr[i15], tArr[i16]) <= 0) {
                        i13 = i15 + 1;
                        t10 = tArr[i15];
                    } else {
                        i13 = i15;
                        t10 = tArr[i16];
                        i16++;
                    }
                    tArr2[i10] = t10;
                }
                i15 = i13;
            }
            i10++;
        }
    }

    public static <T> void msort(T[] tArr, int i10, int i11, Comparator<? super T> comparator) {
        Object[] objArr = new Object[tArr.length];
        System.arraycopy(tArr, 0, objArr, 0, tArr.length);
        msort(objArr, tArr, i10, i11, comparator);
    }

    public static <T> void shellSort(T[] tArr, int i10, int i11, Comparator<? super T> comparator) {
        int i12 = 1;
        while (i12 <= (i11 - 1) / 9) {
            i12 = (i12 * 3) + 1;
        }
        while (i12 > 0) {
            int i13 = i10 + i12;
            for (int i14 = i13; i14 <= i11; i14++) {
                T t10 = tArr[i14];
                int i15 = i14;
                while (i15 >= i13) {
                    int i16 = i15 - i12;
                    if (comparator.compare(t10, tArr[i16]) < 0) {
                        tArr[i15] = tArr[i16];
                        i15 = i16;
                    }
                }
                tArr[i15] = t10;
            }
            i12 /= 3;
        }
    }

    public static <T> void msort(T[] tArr, T[] tArr2, int i10, int i11, Comparator<? super T> comparator) {
        if ((i11 - i10) + 1 <= SHELL_SORT_THRESHOLD) {
            shellSort(tArr2, i10, i11, comparator);
            return;
        }
        int i12 = (i10 + i11) >> 1;
        msort(tArr2, tArr, i10, i12, comparator);
        msort(tArr2, tArr, i12 + 1, i11, comparator);
        merge(tArr, tArr2, i10, i12, i11, comparator);
    }

    public static <T extends Comparable<T>> void shellSort(T[] tArr, int i10, int i11) {
        int i12 = 1;
        while (i12 <= (i11 - 1) / 9) {
            i12 = (i12 * 3) + 1;
        }
        while (i12 > 0) {
            int i13 = i10 + i12;
            for (int i14 = i13; i14 <= i11; i14++) {
                T t10 = tArr[i14];
                int i15 = i14;
                while (i15 >= i13 && t10.compareTo(tArr[i15 - 1]) < 0) {
                    int i16 = i15 - i12;
                    tArr[i15] = tArr[i16];
                    i15 = i16;
                }
                tArr[i15] = t10;
            }
            i12 /= 3;
        }
    }
}
