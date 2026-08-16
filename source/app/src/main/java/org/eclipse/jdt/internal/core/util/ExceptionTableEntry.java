package org.eclipse.jdt.internal.core.util;

import org.eclipse.jdt.core.util.ClassFormatException;
import org.eclipse.jdt.core.util.IConstantPool;
import org.eclipse.jdt.core.util.IConstantPoolEntry;
import org.eclipse.jdt.core.util.IExceptionTableEntry;

public class ExceptionTableEntry extends ClassFileStruct implements IExceptionTableEntry {
    private char[] catchType;
    private int catchTypeIndex;
    private int endPC;
    private int handlerPC;
    private int startPC;

    public ExceptionTableEntry(byte[] bArr, IConstantPool iConstantPool, int i10) throws ClassFormatException {
        this.startPC = u2At(bArr, 0, i10);
        this.endPC = u2At(bArr, 2, i10);
        this.handlerPC = u2At(bArr, 4, i10);
        int u2At = u2At(bArr, 6, i10);
        this.catchTypeIndex = u2At;
        if (u2At != 0) {
            IConstantPoolEntry decodeEntry = iConstantPool.decodeEntry(u2At);
            if (decodeEntry.getKind() != 7) {
                throw new ClassFormatException(3);
            }
            this.catchType = decodeEntry.getClassInfoName();
        }
    }

    @Override
    public char[] getCatchType() {
        return this.catchType;
    }

    @Override
    public int getCatchTypeIndex() {
        return this.catchTypeIndex;
    }

    @Override
    public int getEndPC() {
        return this.endPC;
    }

    @Override
    public int getHandlerPC() {
        return this.handlerPC;
    }

    @Override
    public int getStartPC() {
        return this.startPC;
    }
}
