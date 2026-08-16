package org.eclipse.jdt.internal.compiler.classfmt;

import org.eclipse.jdt.internal.compiler.codegen.Opcodes;

public abstract class ClassFileStruct {
    int[] constantPoolOffsets;
    byte[] reference;
    int structOffset;

    public ClassFileStruct(byte[] bArr, int[] iArr, int i10) {
        this.reference = bArr;
        this.constantPoolOffsets = iArr;
        this.structOffset = i10;
    }

    public double doubleAt(int i10) {
        return Double.longBitsToDouble(i8At(i10));
    }

    public float floatAt(int i10) {
        return Float.intBitsToFloat(i4At(i10));
    }

    public int i4At(int i10) {
        int i11 = i10 + this.structOffset;
        byte[] bArr = this.reference;
        return ((bArr[i11 + 1] & 255) << 16) | ((bArr[i11] & 255) << 24) | (((bArr[i11 + 2] & 255) << 8) + (bArr[i11 + 3] & 255));
    }

    public long i8At(int i10) {
        int i11 = i10 + this.structOffset;
        byte[] bArr = this.reference;
        int i12 = i11 + 6;
        return ((bArr[i11] & 255) << 56) | ((bArr[i11 + 1] & 255) << 48) | ((bArr[i11 + 2] & 255) << 40) | ((bArr[i11 + 3] & 255) << 32) | ((bArr[i11 + 4] & 255) << 24) | ((bArr[i11 + 5] & 255) << 16) | ((bArr[i12] & 255) << 8) | (bArr[i11 + 7] & 255);
    }

    public void reset() {
        this.reference = null;
        this.constantPoolOffsets = null;
    }

    public int u1At(int i10) {
        return this.reference[i10 + this.structOffset] & 255;
    }

    public int u2At(int i10) {
        int i11 = i10 + this.structOffset;
        byte[] bArr = this.reference;
        return ((bArr[i11] & 255) << 8) | (bArr[i11 + 1] & 255);
    }

    public long u4At(int i10) {
        int i11 = i10 + this.structOffset;
        byte[] bArr = this.reference;
        int i12 = i11 + 2;
        return ((bArr[i11] & 255) << 24) | ((bArr[i11 + 1] & 255) << 16) | ((bArr[i12] & 255) << 8) | (bArr[i11 + 3] & 255);
    }

    public char[] utf8At(int i10, int i11) {
        char[] cArr = new char[i11];
        int i12 = this.structOffset + i10;
        int i13 = 0;
        int i14 = i11;
        while (i14 != 0) {
            byte[] bArr = this.reference;
            int i15 = i12 + 1;
            byte b10 = bArr[i12];
            int i16 = b10 & 255;
            int i17 = i14 - 1;
            if ((b10 & 128) == 0) {
                i12 = i15;
                i14 = i17;
            } else if ((b10 & 32) != 0) {
                i14 -= 3;
                int i18 = i12 + 2;
                i12 += 3;
                i16 = ((bArr[i15] & Opcodes.OPC_lstore_0) << 6) | ((b10 & 15) << 12) | (bArr[i18] & Opcodes.OPC_lstore_0);
            } else {
                i14 -= 2;
                i12 += 2;
                i16 = ((b10 & 31) << 6) | (bArr[i15] & Opcodes.OPC_lstore_0);
            }
            cArr[i13] = (char) i16;
            i13++;
        }
        if (i13 == i11) {
            return cArr;
        }
        char[] cArr2 = new char[i13];
        System.arraycopy(cArr, 0, cArr2, 0, i13);
        return cArr2;
    }
}
