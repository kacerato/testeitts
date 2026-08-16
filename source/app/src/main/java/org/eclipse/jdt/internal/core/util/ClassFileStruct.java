package org.eclipse.jdt.internal.core.util;

import org.eclipse.jdt.internal.compiler.codegen.Opcodes;

public abstract class ClassFileStruct {
    public double doubleAt(byte[] bArr, int i10, int i11) {
        return Double.longBitsToDouble(i8At(bArr, i10, i11));
    }

    public final boolean equals(char[] cArr, char[] cArr2) {
        if (cArr == cArr2) {
            return true;
        }
        if (cArr == null || cArr2 == null || cArr.length != cArr2.length) {
            return false;
        }
        int length = cArr.length;
        do {
            length--;
            if (length < 0) {
                return true;
            }
        } while (cArr[length] == cArr2[length]);
        return false;
    }

    public float floatAt(byte[] bArr, int i10, int i11) {
        return Float.intBitsToFloat(i4At(bArr, i10, i11));
    }

    public int i1At(byte[] bArr, int i10, int i11) {
        return bArr[i10 + i11];
    }

    public int i2At(byte[] bArr, int i10, int i11) {
        int i12 = i10 + i11;
        return (bArr[i12] << 8) + (bArr[i12 + 1] & 255);
    }

    public int i4At(byte[] bArr, int i10, int i11) {
        int i12 = i10 + i11;
        int i13 = i12 + 2;
        return ((bArr[i12] & 255) << 24) + ((bArr[i12 + 1] & 255) << 16) + ((bArr[i13] & 255) << 8) + (bArr[i12 + 3] & 255);
    }

    public long i8At(byte[] bArr, int i10, int i11) {
        int i12 = i10 + i11 + 6;
        return ((bArr[r7] & 255) << 56) + ((bArr[r7 + 1] & 255) << 48) + ((bArr[r7 + 2] & 255) << 40) + ((bArr[r7 + 3] & 255) << 32) + ((bArr[r7 + 4] & 255) << 24) + ((bArr[r7 + 5] & 255) << 16) + ((bArr[i12] & 255) << 8) + (bArr[r7 + 7] & 255);
    }

    public int u1At(byte[] bArr, int i10, int i11) {
        return bArr[i10 + i11] & 255;
    }

    public int u2At(byte[] bArr, int i10, int i11) {
        int i12 = i10 + i11;
        return ((bArr[i12] & 255) << 8) + (bArr[i12 + 1] & 255);
    }

    public long u4At(byte[] bArr, int i10, int i11) {
        int i12 = i10 + i11 + 2;
        return ((bArr[r7] & 255) << 24) + ((bArr[r7 + 1] & 255) << 16) + ((bArr[i12] & 255) << 8) + (bArr[r7 + 3] & 255);
    }

    public char[] utf8At(byte[] bArr, int i10, int i11, int i12) {
        int i13;
        byte b10;
        char[] cArr = new char[i12];
        int i14 = i11 + i10;
        int i15 = 0;
        int i16 = i12;
        while (i16 != 0) {
            int i17 = i14 + 1;
            byte b11 = bArr[i14];
            int i18 = b11 & 255;
            int i19 = i16 - 1;
            if ((b11 & 128) != 0) {
                if ((b11 & 32) != 0) {
                    i16 -= 3;
                    int i20 = i14 + 2;
                    i13 = ((b11 & 15) << 12) + ((bArr[i17] & Opcodes.OPC_lstore_0) << 6);
                    i14 += 3;
                    b10 = bArr[i20];
                } else {
                    i16 -= 2;
                    i13 = (b11 & 31) << 6;
                    i14 += 2;
                    b10 = bArr[i17];
                }
                i18 = i13 + (b10 & Opcodes.OPC_lstore_0);
            } else {
                i14 = i17;
                i16 = i19;
            }
            cArr[i15] = (char) i18;
            i15++;
        }
        if (i15 == i12) {
            return cArr;
        }
        char[] cArr2 = new char[i15];
        System.arraycopy(cArr, 0, cArr2, 0, i15);
        return cArr2;
    }
}
