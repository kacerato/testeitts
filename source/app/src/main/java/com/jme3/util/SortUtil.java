package com.jme3.util;

import java.util.Arrays;
import java.util.Comparator;

public class SortUtil {
    public static void gsort(Object[] objArr, Comparator comparator) {
        int length = objArr.length;
        int i10 = 1;
        int i11 = 0;
        while (i10 < length) {
            int i12 = i10 - 1;
            if (comparator.compare(objArr[i10], objArr[i12]) >= 0) {
                if (i11 != 0) {
                    i10 = i11;
                    i11 = 0;
                }
                i10++;
            } else {
                Object obj = objArr[i10];
                objArr[i10] = objArr[i12];
                objArr[i12] = obj;
                if (i10 > 1) {
                    if (i11 == 0) {
                        i11 = i10;
                    }
                    i10--;
                } else {
                    i10++;
                }
            }
        }
    }

    public static void main(String[] strArr) {
        while (true) {
            test(new Float[]{Float.valueOf(2.0f), Float.valueOf(1.0f), Float.valueOf(5.0f), Float.valueOf(3.0f), Float.valueOf(4.0f), Float.valueOf(6.0f), Float.valueOf(8.0f), Float.valueOf(9.0f), Float.valueOf(11.0f), Float.valueOf(10.0f), Float.valueOf(12.0f), Float.valueOf(13.0f), Float.valueOf(14.0f), Float.valueOf(15.0f), Float.valueOf(7.0f), Float.valueOf(19.0f), Float.valueOf(20.0f), Float.valueOf(18.0f), Float.valueOf(16.0f), Float.valueOf(17.0f), Float.valueOf(21.0f), Float.valueOf(23.0f), Float.valueOf(22.0f), Float.valueOf(24.0f), Float.valueOf(25.0f), Float.valueOf(27.0f), Float.valueOf(26.0f), Float.valueOf(29.0f), Float.valueOf(28.0f), Float.valueOf(30.0f), Float.valueOf(31.0f)}, new Float[31], new Comparator<Float>() {
                @Override
                public int compare(Float f10, Float f11) {
                    return (int) (f10.floatValue() - f11.floatValue());
                }
            });
        }
    }

    private static void merge(Object[] objArr, Object[] objArr2, int i10, int i11, int i12, Comparator comparator) {
        int i13 = i11 - 1;
        int i14 = (i12 - i10) + 1;
        int i15 = i11;
        int i16 = i10;
        while (i10 <= i13 && i15 <= i12) {
            if (comparator.compare(objArr[i10], objArr[i15]) <= 0) {
                objArr2[i16] = objArr[i10];
                i16++;
                i10++;
            } else {
                objArr2[i16] = objArr[i15];
                i16++;
                i15++;
            }
        }
        while (i10 <= i13) {
            objArr2[i16] = objArr[i10];
            i16++;
            i10++;
        }
        while (i15 <= i12) {
            objArr2[i16] = objArr[i15];
            i16++;
            i15++;
        }
        int i17 = 0;
        while (i17 < i14) {
            objArr[i12] = objArr2[i12];
            i17++;
            i12--;
        }
    }

    public static void msort(Object[] objArr, Object[] objArr2, Comparator comparator) {
        msort(objArr, objArr2, 0, objArr.length - 1, comparator);
    }

    public static void qsort(Object[] objArr, Comparator comparator) {
        qsort(objArr, 0, objArr.length - 1, comparator);
    }

    private static void test(Float[] fArr, Float[] fArr2, Comparator<Float> comparator) {
        long nanoTime = System.nanoTime();
        for (int i10 = 0; i10 < 1000000; i10++) {
            System.arraycopy(fArr, 0, fArr2, 0, fArr.length);
            gsort(fArr2, comparator);
        }
        long nanoTime2 = System.nanoTime() - nanoTime;
        System.out.println("GSort " + (nanoTime2 / 1000000.0d) + " ms");
        long nanoTime3 = System.nanoTime();
        for (int i11 = 0; i11 < 1000000; i11++) {
            System.arraycopy(fArr, 0, fArr2, 0, fArr.length);
            qsort(fArr2, comparator);
        }
        long nanoTime4 = System.nanoTime() - nanoTime3;
        System.out.println("QSort " + (nanoTime4 / 1000000.0d) + " ms");
        long nanoTime5 = System.nanoTime();
        for (int i12 = 0; i12 < 1000000; i12++) {
            System.arraycopy(fArr, 0, fArr2, 0, fArr.length);
            msort(fArr, fArr2, comparator);
        }
        long nanoTime6 = System.nanoTime() - nanoTime5;
        System.out.println("MSort " + (nanoTime6 / 1000000.0d) + " ms");
        long nanoTime7 = System.nanoTime();
        for (int i13 = 0; i13 < 1000000; i13++) {
            System.arraycopy(fArr, 0, fArr2, 0, fArr.length);
            Arrays.sort(fArr2, comparator);
        }
        long nanoTime8 = System.nanoTime() - nanoTime7;
        System.out.println("ASort " + (nanoTime8 / 1000000.0d) + " ms");
    }

    public static void msort(Object[] objArr, Object[] objArr2, int i10, int i11, Comparator comparator) {
        if (i10 < i11) {
            int i12 = (i10 + i11) / 2;
            msort(objArr, objArr2, i10, i12, comparator);
            int i13 = i12 + 1;
            msort(objArr, objArr2, i13, i11, comparator);
            merge(objArr, objArr2, i10, i13, i11, comparator);
        }
    }

    public static void qsort(Object[] objArr, int i10, int i11, Comparator comparator) {
        int i12;
        if (i11 <= i10) {
            return;
        }
        if (i11 - i10 == 1) {
            if (comparator.compare(objArr[i11], objArr[i10]) < 0) {
                Object obj = objArr[i10];
                objArr[i10] = objArr[i11];
                objArr[i11] = obj;
                return;
            }
            return;
        }
        Object obj2 = objArr[(i10 + i11) / 2];
        int i13 = i10 - 1;
        int i14 = i11 + 1;
        while (true) {
            int i15 = i13 + 1;
            if (comparator.compare(objArr[i15], obj2) >= 0) {
                while (true) {
                    i12 = i14 - 1;
                    if (comparator.compare(obj2, objArr[i12]) >= 0) {
                        break;
                    } else {
                        i14 = i12;
                    }
                }
                if (i12 <= i15) {
                    break;
                }
                Object obj3 = objArr[i15];
                objArr[i15] = objArr[i12];
                objArr[i12] = obj3;
                i13 = i15;
                i14 = i12;
            } else {
                i13 = i15;
            }
        }
        if (i10 < i13) {
            qsort(objArr, i10, i13, comparator);
        }
        if (i14 < i11) {
            qsort(objArr, i14, i11, comparator);
        }
    }

    public static void qsort(int[] iArr, int i10, int i11, Comparator comparator) {
        int i12;
        if (i11 <= i10) {
            return;
        }
        if (i11 - i10 == 1) {
            if (comparator.compare(Integer.valueOf(iArr[i11]), Integer.valueOf(iArr[i10])) < 0) {
                int i13 = iArr[i10];
                iArr[i10] = iArr[i11];
                iArr[i11] = i13;
                return;
            }
            return;
        }
        int i14 = iArr[(i10 + i11) / 2];
        int i15 = i10 - 1;
        int i16 = i11 + 1;
        while (true) {
            int i17 = i15 + 1;
            if (comparator.compare(Integer.valueOf(iArr[i17]), Integer.valueOf(i14)) >= 0) {
                while (true) {
                    i12 = i16 - 1;
                    if (comparator.compare(Integer.valueOf(i14), Integer.valueOf(iArr[i12])) >= 0) {
                        break;
                    } else {
                        i16 = i12;
                    }
                }
                if (i12 <= i17) {
                    break;
                }
                int i18 = iArr[i17];
                iArr[i17] = iArr[i12];
                iArr[i12] = i18;
                i15 = i17;
                i16 = i12;
            } else {
                i15 = i17;
            }
        }
        if (i10 < i15) {
            qsort(iArr, i10, i15, comparator);
        }
        if (i16 < i11) {
            qsort(iArr, i16, i11, comparator);
        }
    }
}
