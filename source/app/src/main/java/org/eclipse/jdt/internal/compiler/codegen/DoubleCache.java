package org.eclipse.jdt.internal.compiler.codegen;

import org.apache.commons.math3.geometry.VectorFormat;

public class DoubleCache {
    private int elementSize;
    private double[] keyTable;
    private int[] valueTable;

    public DoubleCache() {
        this(13);
    }

    public void clear() {
        int length = this.keyTable.length;
        while (true) {
            length--;
            if (length < 0) {
                this.elementSize = 0;
                return;
            } else {
                this.keyTable[length] = 0.0d;
                this.valueTable[length] = 0;
            }
        }
    }

    public boolean containsKey(double d10) {
        if (d10 == 0.0d) {
            int i10 = this.elementSize;
            for (int i11 = 0; i11 < i10; i11++) {
                if (this.keyTable[i11] == 0.0d) {
                    long doubleToLongBits = Double.doubleToLongBits(d10);
                    long doubleToLongBits2 = Double.doubleToLongBits(this.keyTable[i11]);
                    if (doubleToLongBits == Long.MIN_VALUE && doubleToLongBits2 == Long.MIN_VALUE) {
                        return true;
                    }
                    if (doubleToLongBits == 0 && doubleToLongBits2 == 0) {
                        return true;
                    }
                }
            }
        } else {
            int i12 = this.elementSize;
            for (int i13 = 0; i13 < i12; i13++) {
                if (this.keyTable[i13] == d10) {
                    return true;
                }
            }
        }
        return false;
    }

    public int put(double d10, int i10) {
        int i11 = this.elementSize;
        double[] dArr = this.keyTable;
        if (i11 == dArr.length) {
            double[] dArr2 = new double[i11 * 2];
            this.keyTable = dArr2;
            System.arraycopy(dArr, 0, dArr2, 0, i11);
            int[] iArr = this.valueTable;
            int i12 = this.elementSize;
            int[] iArr2 = new int[i12 * 2];
            this.valueTable = iArr2;
            System.arraycopy(iArr, 0, iArr2, 0, i12);
        }
        double[] dArr3 = this.keyTable;
        int i13 = this.elementSize;
        dArr3[i13] = d10;
        this.valueTable[i13] = i10;
        this.elementSize = i13 + 1;
        return i10;
    }

    public int putIfAbsent(double d10, int i10) {
        if (d10 == 0.0d) {
            int i11 = this.elementSize;
            for (int i12 = 0; i12 < i11; i12++) {
                if (this.keyTable[i12] == 0.0d) {
                    long doubleToLongBits = Double.doubleToLongBits(d10);
                    long doubleToLongBits2 = Double.doubleToLongBits(this.keyTable[i12]);
                    if (doubleToLongBits == Long.MIN_VALUE && doubleToLongBits2 == Long.MIN_VALUE) {
                        return this.valueTable[i12];
                    }
                    if (doubleToLongBits == 0 && doubleToLongBits2 == 0) {
                        return this.valueTable[i12];
                    }
                }
            }
        } else {
            int i13 = this.elementSize;
            for (int i14 = 0; i14 < i13; i14++) {
                if (this.keyTable[i14] == d10) {
                    return this.valueTable[i14];
                }
            }
        }
        int i15 = this.elementSize;
        double[] dArr = this.keyTable;
        if (i15 == dArr.length) {
            double[] dArr2 = new double[i15 * 2];
            this.keyTable = dArr2;
            System.arraycopy(dArr, 0, dArr2, 0, i15);
            int[] iArr = this.valueTable;
            int i16 = this.elementSize;
            int[] iArr2 = new int[i16 * 2];
            this.valueTable = iArr2;
            System.arraycopy(iArr, 0, iArr2, 0, i16);
        }
        double[] dArr3 = this.keyTable;
        int i17 = this.elementSize;
        dArr3[i17] = d10;
        this.valueTable[i17] = i10;
        this.elementSize = i17 + 1;
        return -i10;
    }

    public String toString() {
        int i10 = this.elementSize;
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append("{");
        for (int i11 = 0; i11 < i10; i11++) {
            double d10 = this.keyTable[i11];
            if (d10 != 0.0d || (d10 == 0.0d && this.valueTable[i11] != 0)) {
                stringBuffer.append(d10);
                stringBuffer.append("->");
                stringBuffer.append(this.valueTable[i11]);
            }
            if (i11 < i10) {
                stringBuffer.append(", ");
            }
        }
        stringBuffer.append(VectorFormat.DEFAULT_SUFFIX);
        return stringBuffer.toString();
    }

    public DoubleCache(int i10) {
        this.elementSize = 0;
        this.keyTable = new double[i10];
        this.valueTable = new int[i10];
    }
}
