package com.jme3.util;

import java.util.Arrays;
import java.util.Comparator;
import org.openjdk.tools.doclint.DocLint;

public class ListSort<T> {
    private static final int MIN_GALLOP = 7;
    private static final int MIN_SIZE = 128;
    private T[] array;
    private Comparator<T> comparator;
    int dest;
    int iterA;
    int iterB;
    int lengthA;
    int lengthB;
    private T[] tmpArray;
    private int nbRuns = 0;
    private int[] runsIndices = null;
    private int[] runsLength = null;
    private int length = 0;
    private int minGallop = 7;

    private void binaryInsertionSort(T[] tArr, int i10, int i11, int i12, Comparator<T> comparator) {
        if (i10 == i12) {
            i12++;
        }
        while (i12 < i11) {
            T t10 = tArr[i12];
            int i13 = i10;
            int i14 = i12;
            while (i13 < i14) {
                int i15 = (i13 + i14) >>> 1;
                if (comparator.compare(t10, tArr[i15]) < 0) {
                    i14 = i15;
                } else {
                    i13 = i15 + 1;
                }
            }
            int i16 = i12 - i13;
            if (i16 != 1) {
                if (i16 != 2) {
                    System.arraycopy(tArr, i13, tArr, i13 + 1, i16);
                    tArr[i13] = t10;
                    i12++;
                } else {
                    tArr[i13 + 2] = tArr[i13 + 1];
                }
            }
            tArr[i13 + 1] = tArr[i13];
            tArr[i13] = t10;
            i12++;
        }
    }

    private void clean() {
        int i10 = 0;
        while (true) {
            int[] iArr = this.runsIndices;
            if (i10 >= iArr.length) {
                return;
            }
            iArr[i10] = 0;
            this.runsLength[i10] = 0;
            i10++;
        }
    }

    private int gallopLeft(T t10, T[] tArr, int i10, int i11, int i12, Comparator<T> comparator) {
        int i13;
        int i14;
        int i15 = i10 + i12;
        if (comparator.compare(t10, tArr[i15]) > 0) {
            int i16 = i11 - i12;
            int i17 = 0;
            int i18 = 1;
            while (i18 < i16 && comparator.compare(t10, tArr[i15 + i18]) > 0) {
                int i19 = (i18 << 1) + 1;
                if (i19 <= 0) {
                    i17 = i18;
                    i18 = i16;
                } else {
                    int i20 = i18;
                    i18 = i19;
                    i17 = i20;
                }
            }
            if (i18 <= i16) {
                i16 = i18;
            }
            i13 = i17 + i12;
            i14 = i16 + i12;
        } else {
            int i21 = i12 + 1;
            int i22 = 0;
            int i23 = 1;
            while (i23 < i21 && comparator.compare(t10, tArr[i15 - i23]) <= 0) {
                int i24 = (i23 << 1) + 1;
                if (i24 <= 0) {
                    i22 = i23;
                    i23 = i21;
                } else {
                    int i25 = i23;
                    i23 = i24;
                    i22 = i25;
                }
            }
            if (i23 <= i21) {
                i21 = i23;
            }
            int i26 = i12 - i21;
            int i27 = i12 - i22;
            i13 = i26;
            i14 = i27;
        }
        int i28 = i13 + 1;
        while (i28 < i14) {
            int i29 = ((i14 - i28) >>> 1) + i28;
            if (comparator.compare(t10, tArr[i10 + i29]) > 0) {
                i28 = i29 + 1;
            } else {
                i14 = i29;
            }
        }
        return i14;
    }

    private int gallopRight(T t10, T[] tArr, int i10, int i11, int i12, Comparator<T> comparator) {
        int i13;
        int i14;
        int i15 = i10 + i12;
        if (comparator.compare(t10, tArr[i15]) < 0) {
            int i16 = i12 + 1;
            int i17 = 0;
            int i18 = 1;
            while (i18 < i16 && comparator.compare(t10, tArr[i15 - i18]) < 0) {
                int i19 = (i18 << 1) + 1;
                if (i19 <= 0) {
                    i17 = i18;
                    i18 = i16;
                } else {
                    int i20 = i18;
                    i18 = i19;
                    i17 = i20;
                }
            }
            if (i18 <= i16) {
                i16 = i18;
            }
            i14 = i12 - i16;
            i13 = i12 - i17;
        } else {
            int i21 = i11 - i12;
            int i22 = 0;
            int i23 = 1;
            while (i23 < i21 && comparator.compare(t10, tArr[i15 + i23]) >= 0) {
                int i24 = (i23 << 1) + 1;
                if (i24 <= 0) {
                    i22 = i23;
                    i23 = i21;
                } else {
                    int i25 = i23;
                    i23 = i24;
                    i22 = i25;
                }
            }
            if (i23 <= i21) {
                i21 = i23;
            }
            int i26 = i22 + i12;
            i13 = i12 + i21;
            i14 = i26;
        }
        int i27 = i14 + 1;
        while (i27 < i13) {
            int i28 = ((i13 - i27) >>> 1) + i27;
            if (comparator.compare(t10, tArr[i10 + i28]) < 0) {
                i13 = i28;
            } else {
                i27 = i28 + 1;
            }
        }
        return i13;
    }

    private int getRunLength(T[] tArr, int i10, int i11, Comparator<T> comparator) {
        int i12 = i10 + 1;
        if (i12 >= i11) {
            return 1;
        }
        int i13 = i10 + 2;
        if (comparator.compare(tArr[i12], tArr[i10]) >= 0) {
            while (i13 < i11 && comparator.compare(tArr[i13], tArr[i13 - 1]) >= 0) {
                i13++;
            }
        } else {
            while (i13 < i11 && comparator.compare(tArr[i13], tArr[i13 - 1]) < 0) {
                i13++;
            }
            reverseArray(tArr, i10, i13);
        }
        return i13 - i10;
    }

    public static void main(String[] strArr) {
        Integer[] numArr = {5, 6, 2, 9, 10, 11, 12, 8, 3, 12, 3, 7, 12, 32, 458, 12, 5, 3, 78, 45, 12, 32, 58, 45, 65, 45, 98, 45, 65, 2, 3, 47, 21, 35};
        ListSort listSort = new ListSort();
        listSort.allocateStack(34);
        listSort.sort(numArr, new Comparator<Integer>() {
            @Override
            public int compare(Integer num, Integer num2) {
                int intValue = num.intValue() - num2.intValue();
                if (intValue == 0) {
                    return 0;
                }
                return intValue > 0 ? 1 : -1;
            }
        });
        for (int i10 = 0; i10 < 34; i10++) {
            Integer num = numArr[i10];
            System.err.print(((Object) num) + DocLint.SEPARATOR);
        }
        System.err.println();
    }

    private void mergeCollapse() {
        while (true) {
            int i10 = this.nbRuns;
            if (i10 <= 1) {
                return;
            }
            int i11 = i10 - 2;
            if (i11 > 0) {
                int[] iArr = this.runsLength;
                int i12 = iArr[i10 - 3];
                int i13 = iArr[i11];
                int i14 = iArr[i10 - 1];
                if (i12 <= i13 + i14) {
                    if (i12 < i14) {
                        i11 = i10 - 3;
                    }
                    mergeRuns(i11);
                }
            }
            int[] iArr2 = this.runsLength;
            if (iArr2[i11] > iArr2[i10 - 1]) {
                return;
            } else {
                mergeRuns(i11);
            }
        }
    }

    private int mergeComputeMinRun(int i10) {
        int i11 = 0;
        while (i10 >= 128) {
            i11 |= i10 & 1;
            i10 >>= 1;
        }
        return i10 + i11;
    }

    private void mergeForceCollapse() {
        while (true) {
            int i10 = this.nbRuns;
            if (i10 <= 1) {
                return;
            }
            int i11 = i10 - 2;
            if (i11 > 0) {
                int[] iArr = this.runsLength;
                if (iArr[i10 - 3] < iArr[i10 - 1]) {
                    i11 = i10 - 3;
                }
            }
            mergeRuns(i11);
        }
    }

    private void mergeHigh(int i10, int i11, int i12, int i13) {
        this.lengthA = i11;
        this.lengthB = i13;
        this.iterA = (i11 + i10) - 1;
        this.iterB = i13 - 1;
        this.dest = (i12 + i13) - 1;
        Comparator<T> comparator = this.comparator;
        T[] tArr = this.array;
        T[] tArr2 = this.tmpArray;
        System.arraycopy(tArr, i12, tArr2, 0, i13);
        int i14 = this.dest;
        int i15 = this.iterA;
        tArr[i14] = tArr[i15];
        this.dest = i14 - 1;
        this.iterA = i15 - 1;
        innerMergeHigh(comparator, tArr2, tArr, i10);
        int i16 = this.minGallop;
        if (i16 < 1) {
            i16 = 1;
        }
        this.minGallop = i16;
        int i17 = this.lengthB;
        if (i17 != 1) {
            if (i17 == 0) {
                throw new UnsupportedOperationException("Compare function result changed! Make sure you do not modify the scene from another thread!");
            }
            System.arraycopy(tArr2, 0, tArr, this.dest - (i17 - 1), i17);
            return;
        }
        int i18 = this.dest;
        int i19 = this.lengthA;
        int i20 = i18 - i19;
        this.dest = i20;
        int i21 = this.iterA - i19;
        this.iterA = i21;
        System.arraycopy(tArr, i21 + 1, tArr, i20 + 1, i19);
        tArr[this.dest] = tArr2[this.iterB];
    }

    private void mergeLow(int i10, int i11, int i12, int i13) {
        this.lengthA = i11;
        this.lengthB = i13;
        this.iterA = 0;
        this.iterB = i12;
        this.dest = i10;
        Comparator<T> comparator = this.comparator;
        T[] tArr = this.array;
        T[] tArr2 = this.tmpArray;
        System.arraycopy(tArr, i10, tArr2, 0, i11);
        int i14 = this.dest;
        int i15 = this.iterB;
        tArr[i14] = tArr[i15];
        this.dest = i14 + 1;
        this.iterB = i15 + 1;
        innerMergeLow(comparator, tArr, tArr2);
        int i16 = this.minGallop;
        if (i16 < 1) {
            i16 = 1;
        }
        this.minGallop = i16;
        int i17 = this.lengthA;
        if (i17 == 1) {
            System.arraycopy(tArr, this.iterB, tArr, this.dest, this.lengthB);
            tArr[this.dest + this.lengthB] = tArr2[this.iterA];
        } else {
            if (i17 == 0) {
                throw new UnsupportedOperationException("Compare function result changed! Make sure you do not modify the scene from another thread and that the comparisons are not based on NaN values.");
            }
            System.arraycopy(tArr2, this.iterA, tArr, this.dest, i17);
        }
    }

    private void mergeRuns(int i10) {
        int[] iArr = this.runsIndices;
        int i11 = iArr[i10];
        int[] iArr2 = this.runsLength;
        int i12 = iArr2[i10];
        int i13 = i10 + 1;
        int i14 = iArr[i13];
        int i15 = iArr2[i13];
        iArr2[i10] = i12 + i15;
        int i16 = this.nbRuns;
        if (i10 == i16 - 3) {
            int i17 = i10 + 2;
            iArr[i13] = iArr[i17];
            iArr2[i13] = iArr2[i17];
        }
        this.nbRuns = i16 - 1;
        T[] tArr = this.array;
        int gallopRight = gallopRight(tArr[i14], tArr, i11, i12, 0, this.comparator);
        int i18 = i11 + gallopRight;
        int i19 = i12 - gallopRight;
        if (i19 == 0) {
            return;
        }
        T[] tArr2 = this.array;
        int gallopLeft = gallopLeft(tArr2[(i18 + i19) - 1], tArr2, i14, i15, i15 - 1, this.comparator);
        if (gallopLeft == 0) {
            return;
        }
        if (i19 <= gallopLeft) {
            mergeLow(i18, i19, i14, gallopLeft);
        } else {
            mergeHigh(i18, i19, i14, gallopLeft);
        }
    }

    private static void reverseArray(Object[] objArr, int i10, int i11) {
        while (true) {
            i11--;
            if (i10 >= i11) {
                return;
            }
            Object obj = objArr[i10];
            objArr[i10] = objArr[i11];
            objArr[i11] = obj;
            i10++;
        }
    }

    public final void allocateStack(int i10) {
        this.length = i10;
        int i11 = i10 >>> 1;
        T[] tArr = this.tmpArray;
        if (tArr == null || i11 > tArr.length) {
            this.tmpArray = (T[]) new Object[i11];
        }
        int i12 = i10 < 1400 ? 5 : i10 < 15730 ? 10 : i10 < 1196194 ? 19 : 40;
        int[] iArr = this.runsIndices;
        if (iArr == null || i12 > iArr.length) {
            this.runsIndices = new int[i12];
            this.runsLength = new int[i12];
        }
    }

    public int getLength() {
        return this.length;
    }

    /* JADX WARN: Code restructure failed: missing block: B:38:0x00f4, code lost:
    
        if (r0 >= 0) goto L52;
     */
    /* JADX WARN: Code restructure failed: missing block: B:39:0x00f6, code lost:
    
        r15.minGallop = 0;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void innerMergeHigh(Comparator<T> comparator, T[] tArr, T[] tArr2, int i10) {
        int i11;
        int i12 = this.lengthA - 1;
        this.lengthA = i12;
        if (i12 == 0 || (i11 = this.lengthB) == 1 || i11 == 1) {
            return;
        }
        while (true) {
            int i13 = 0;
            int i14 = 0;
            do {
                if (comparator.compare(tArr[this.iterB], tArr2[this.iterA]) < 0) {
                    int i15 = this.dest;
                    int i16 = this.iterA;
                    tArr2[i15] = tArr2[i16];
                    this.dest = i15 - 1;
                    this.iterA = i16 - 1;
                    i14++;
                    int i17 = this.lengthA - 1;
                    this.lengthA = i17;
                    if (i17 == 0) {
                        return;
                    } else {
                        i13 = 0;
                    }
                } else {
                    int i18 = this.dest;
                    int i19 = this.iterB;
                    tArr2[i18] = tArr[i19];
                    this.dest = i18 - 1;
                    this.iterB = i19 - 1;
                    i13++;
                    int i20 = this.lengthB - 1;
                    this.lengthB = i20;
                    if (i20 == 1) {
                        return;
                    } else {
                        i14 = 0;
                    }
                }
            } while ((i14 | i13) < this.minGallop);
            while (true) {
                int i21 = this.lengthA;
                int gallopRight = i21 - gallopRight(tArr[this.iterB], tArr2, i10, i21, i21 - 1, comparator);
                if (gallopRight != 0) {
                    int i22 = this.dest - gallopRight;
                    this.dest = i22;
                    int i23 = this.iterA - gallopRight;
                    this.iterA = i23;
                    this.lengthA -= gallopRight;
                    System.arraycopy(tArr2, i23 + 1, tArr2, i22 + 1, gallopRight);
                    if (this.lengthA == 0) {
                        return;
                    }
                }
                int i24 = this.dest;
                int i25 = this.iterB;
                tArr2[i24] = tArr[i25];
                this.dest = i24 - 1;
                this.iterB = i25 - 1;
                int i26 = this.lengthB;
                int i27 = i26 - 1;
                this.lengthB = i27;
                if (i27 != 1) {
                    int gallopLeft = i27 - gallopLeft(tArr2[this.iterA], tArr, 0, i27, i26 - 2, comparator);
                    if (gallopLeft != 0) {
                        int i28 = this.dest - gallopLeft;
                        this.dest = i28;
                        int i29 = this.iterB - gallopLeft;
                        this.iterB = i29;
                        this.lengthB -= gallopLeft;
                        System.arraycopy(tArr, i29 + 1, tArr2, i28 + 1, gallopLeft);
                        if (this.lengthB <= 1) {
                            return;
                        }
                    }
                    int i30 = this.dest;
                    int i31 = this.iterA;
                    tArr2[i30] = tArr2[i31];
                    this.dest = i30 - 1;
                    this.iterA = i31 - 1;
                    int i32 = this.lengthA - 1;
                    this.lengthA = i32;
                    if (i32 != 0) {
                        int i33 = this.minGallop - 1;
                        this.minGallop = i33;
                        if (gallopRight < 7 && gallopLeft < 7) {
                            break;
                        }
                    } else {
                        return;
                    }
                } else {
                    return;
                }
            }
            this.minGallop += 2;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:36:0x00e0, code lost:
    
        if (r4 >= 0) goto L50;
     */
    /* JADX WARN: Code restructure failed: missing block: B:37:0x00e2, code lost:
    
        r12.minGallop = 0;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void innerMergeLow(Comparator<T> comparator, T[] tArr, T[] tArr2) {
        int i10 = this.lengthB - 1;
        this.lengthB = i10;
        if (i10 == 0 || this.lengthA == 1) {
            return;
        }
        while (true) {
            int i11 = 0;
            int i12 = 0;
            do {
                if (comparator.compare(tArr[this.iterB], tArr2[this.iterA]) < 0) {
                    int i13 = this.dest;
                    int i14 = this.iterB;
                    tArr[i13] = tArr[i14];
                    this.dest = i13 + 1;
                    this.iterB = i14 + 1;
                    i12++;
                    int i15 = this.lengthB - 1;
                    this.lengthB = i15;
                    if (i15 == 0) {
                        return;
                    } else {
                        i11 = 0;
                    }
                } else {
                    int i16 = this.dest;
                    int i17 = this.iterA;
                    tArr[i16] = tArr2[i17];
                    this.dest = i16 + 1;
                    this.iterA = i17 + 1;
                    i11++;
                    int i18 = this.lengthA - 1;
                    this.lengthA = i18;
                    if (i18 == 1) {
                        return;
                    } else {
                        i12 = 0;
                    }
                }
            } while ((i11 | i12) < this.minGallop);
            while (true) {
                int gallopRight = gallopRight(tArr[this.iterB], tArr2, this.iterA, this.lengthA, 0, comparator);
                if (gallopRight != 0) {
                    System.arraycopy(tArr2, this.iterA, tArr, this.dest, gallopRight);
                    this.dest += gallopRight;
                    this.iterA += gallopRight;
                    int i19 = this.lengthA - gallopRight;
                    this.lengthA = i19;
                    if (i19 <= 1) {
                        return;
                    }
                }
                int i20 = this.dest;
                int i21 = this.iterB;
                tArr[i20] = tArr[i21];
                this.dest = i20 + 1;
                int i22 = i21 + 1;
                this.iterB = i22;
                int i23 = this.lengthB - 1;
                this.lengthB = i23;
                if (i23 != 0) {
                    int gallopLeft = gallopLeft(tArr2[this.iterA], tArr, i22, i23, 0, comparator);
                    if (gallopLeft != 0) {
                        System.arraycopy(tArr, this.iterB, tArr, this.dest, gallopLeft);
                        this.dest += gallopLeft;
                        this.iterB += gallopLeft;
                        int i24 = this.lengthB - gallopLeft;
                        this.lengthB = i24;
                        if (i24 == 0) {
                            return;
                        }
                    }
                    int i25 = this.dest;
                    int i26 = this.iterA;
                    tArr[i25] = tArr2[i26];
                    this.dest = i25 + 1;
                    this.iterA = i26 + 1;
                    int i27 = this.lengthA - 1;
                    this.lengthA = i27;
                    if (i27 != 1) {
                        int i28 = this.minGallop - 1;
                        this.minGallop = i28;
                        if (gallopRight < 7 && gallopLeft < 7) {
                            break;
                        }
                    } else {
                        return;
                    }
                } else {
                    return;
                }
            }
            this.minGallop += 2;
        }
    }

    public void sort(T[] tArr, Comparator<T> comparator) {
        this.array = tArr;
        this.comparator = comparator;
        clean();
        int i10 = this.length;
        int i11 = 0;
        if (i10 < 128) {
            binaryInsertionSort(tArr, 0, i10, getRunLength(tArr, 0, i10, comparator), comparator);
            return;
        }
        int mergeComputeMinRun = mergeComputeMinRun(i10);
        int i12 = i10;
        while (i12 != 0) {
            int runLength = getRunLength(tArr, i11, i10, comparator);
            if (runLength < mergeComputeMinRun) {
                int i13 = i12 <= mergeComputeMinRun ? i12 : mergeComputeMinRun;
                binaryInsertionSort(tArr, i11, i11 + i13, i11 + runLength, comparator);
                runLength = i13;
            }
            int[] iArr = this.runsIndices;
            int i14 = this.nbRuns;
            iArr[i14] = i11;
            this.runsLength[i14] = runLength;
            this.nbRuns = i14 + 1;
            mergeCollapse();
            i11 += runLength;
            i12 -= runLength;
        }
        mergeForceCollapse();
        int i15 = this.length >>> 1;
        T[] tArr2 = this.tmpArray;
        if (tArr2.length <= i15) {
            i15 = tArr2.length;
        }
        Arrays.fill(tArr2, 0, i15, (Object) null);
    }
}
