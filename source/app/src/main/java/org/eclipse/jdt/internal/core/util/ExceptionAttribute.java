package org.eclipse.jdt.internal.core.util;

import org.eclipse.jdt.core.compiler.CharOperation;
import org.eclipse.jdt.core.util.ClassFormatException;
import org.eclipse.jdt.core.util.IConstantPool;
import org.eclipse.jdt.core.util.IConstantPoolEntry;
import org.eclipse.jdt.core.util.IExceptionAttribute;

public class ExceptionAttribute extends ClassFileAttribute implements IExceptionAttribute {
    private int[] exceptionIndexes;
    private char[][] exceptionNames;
    private int exceptionsNumber;

    public ExceptionAttribute(byte[] bArr, IConstantPool iConstantPool, int i10) throws ClassFormatException {
        super(bArr, iConstantPool, i10);
        int u2At = u2At(bArr, 6, i10);
        this.exceptionsNumber = u2At;
        this.exceptionNames = CharOperation.NO_CHAR_CHAR;
        this.exceptionIndexes = org.eclipse.jdt.internal.compiler.util.Util.EMPTY_INT_ARRAY;
        if (u2At != 0) {
            this.exceptionNames = new char[u2At];
            this.exceptionIndexes = new int[u2At];
        }
        int i11 = 8;
        for (int i12 = 0; i12 < u2At; i12++) {
            this.exceptionIndexes[i12] = u2At(bArr, i11, i10);
            IConstantPoolEntry decodeEntry = iConstantPool.decodeEntry(this.exceptionIndexes[i12]);
            if (decodeEntry.getKind() != 7) {
                throw new ClassFormatException(3);
            }
            this.exceptionNames[i12] = decodeEntry.getClassInfoName();
            i11 += 2;
        }
    }

    @Override
    public int[] getExceptionIndexes() {
        return this.exceptionIndexes;
    }

    @Override
    public char[][] getExceptionNames() {
        return this.exceptionNames;
    }

    @Override
    public int getExceptionsNumber() {
        return this.exceptionsNumber;
    }
}
