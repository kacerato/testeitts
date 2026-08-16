package org.eclipse.jdt.internal.compiler.codegen;

import org.apache.commons.math3.geometry.VectorFormat;

public class FloatCache {
    private int elementSize;
    private float[] keyTable;
    private int[] valueTable;

    public FloatCache() {
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
                this.keyTable[length] = 0.0f;
                this.valueTable[length] = 0;
            }
        }
    }

    public boolean containsKey(float f10) {
        if (f10 == 0.0f) {
            int i10 = this.elementSize;
            for (int i11 = 0; i11 < i10; i11++) {
                if (this.keyTable[i11] == 0.0f) {
                    int floatToIntBits = Float.floatToIntBits(f10);
                    int floatToIntBits2 = Float.floatToIntBits(this.keyTable[i11]);
                    if (floatToIntBits == Integer.MIN_VALUE && floatToIntBits2 == Integer.MIN_VALUE) {
                        return true;
                    }
                    if (floatToIntBits == 0 && floatToIntBits2 == 0) {
                        return true;
                    }
                }
            }
        } else {
            int i12 = this.elementSize;
            for (int i13 = 0; i13 < i12; i13++) {
                if (this.keyTable[i13] == f10) {
                    return true;
                }
            }
        }
        return false;
    }

    public int put(float f10, int i10) {
        int i11 = this.elementSize;
        float[] fArr = this.keyTable;
        if (i11 == fArr.length) {
            float[] fArr2 = new float[i11 * 2];
            this.keyTable = fArr2;
            System.arraycopy(fArr, 0, fArr2, 0, i11);
            int[] iArr = this.valueTable;
            int i12 = this.elementSize;
            int[] iArr2 = new int[i12 * 2];
            this.valueTable = iArr2;
            System.arraycopy(iArr, 0, iArr2, 0, i12);
        }
        float[] fArr3 = this.keyTable;
        int i13 = this.elementSize;
        fArr3[i13] = f10;
        this.valueTable[i13] = i10;
        this.elementSize = i13 + 1;
        return i10;
    }

    public int putIfAbsent(float f10, int i10) {
        if (f10 == 0.0f) {
            int i11 = this.elementSize;
            for (int i12 = 0; i12 < i11; i12++) {
                if (this.keyTable[i12] == 0.0f) {
                    int floatToIntBits = Float.floatToIntBits(f10);
                    int floatToIntBits2 = Float.floatToIntBits(this.keyTable[i12]);
                    if (floatToIntBits == Integer.MIN_VALUE && floatToIntBits2 == Integer.MIN_VALUE) {
                        return this.valueTable[i12];
                    }
                    if (floatToIntBits == 0 && floatToIntBits2 == 0) {
                        return this.valueTable[i12];
                    }
                }
            }
        } else {
            int i13 = this.elementSize;
            for (int i14 = 0; i14 < i13; i14++) {
                if (this.keyTable[i14] == f10) {
                    return this.valueTable[i14];
                }
            }
        }
        int i15 = this.elementSize;
        float[] fArr = this.keyTable;
        if (i15 == fArr.length) {
            float[] fArr2 = new float[i15 * 2];
            this.keyTable = fArr2;
            System.arraycopy(fArr, 0, fArr2, 0, i15);
            int[] iArr = this.valueTable;
            int i16 = this.elementSize;
            int[] iArr2 = new int[i16 * 2];
            this.valueTable = iArr2;
            System.arraycopy(iArr, 0, iArr2, 0, i16);
        }
        float[] fArr3 = this.keyTable;
        int i17 = this.elementSize;
        fArr3[i17] = f10;
        this.valueTable[i17] = i10;
        this.elementSize = i17 + 1;
        return -i10;
    }

    public String toString() {
        int i10 = this.elementSize;
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append("{");
        for (int i11 = 0; i11 < i10; i11++) {
            float f10 = this.keyTable[i11];
            if (f10 != 0.0f || (f10 == 0.0f && this.valueTable[i11] != 0)) {
                stringBuffer.append(f10);
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

    public FloatCache(int i10) {
        this.elementSize = 0;
        this.keyTable = new float[i10];
        this.valueTable = new int[i10];
    }
}
