package org.eclipse.jdt.internal.core.util;

import java.lang.reflect.Array;
import org.eclipse.jdt.core.util.ClassFormatException;
import org.eclipse.jdt.core.util.IConstantPool;
import org.eclipse.jdt.core.util.ILineNumberAttribute;

public class LineNumberAttribute extends ClassFileAttribute implements ILineNumberAttribute {
    private static final int[][] NO_ENTRIES = (int[][]) Array.newInstance(Integer.TYPE, 0, 0);
    private int[][] lineNumberTable;
    private int lineNumberTableLength;

    public LineNumberAttribute(byte[] bArr, IConstantPool iConstantPool, int i10) throws ClassFormatException {
        super(bArr, iConstantPool, i10);
        int u2At = u2At(bArr, 6, i10);
        this.lineNumberTableLength = u2At;
        if (u2At == 0) {
            this.lineNumberTable = NO_ENTRIES;
            return;
        }
        this.lineNumberTable = (int[][]) Array.newInstance(Integer.TYPE, u2At, 2);
        int i11 = 8;
        for (int i12 = 0; i12 < u2At; i12++) {
            this.lineNumberTable[i12][0] = u2At(bArr, i11, i10);
            this.lineNumberTable[i12][1] = u2At(bArr, i11 + 2, i10);
            i11 += 4;
        }
    }

    @Override
    public int[][] getLineNumberTable() {
        return this.lineNumberTable;
    }

    @Override
    public int getLineNumberTableLength() {
        return this.lineNumberTableLength;
    }
}
