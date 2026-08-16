package org.eclipse.jdt.internal.core.util;

import org.eclipse.jdt.core.util.ClassFormatException;
import org.eclipse.jdt.core.util.IConstantPool;
import org.eclipse.jdt.core.util.ILocalVariableReferenceInfo;

public class LocalVariableReferenceInfo extends ClassFileStruct implements ILocalVariableReferenceInfo {
    private int index;
    private int length;
    private int startPC;

    public LocalVariableReferenceInfo(byte[] bArr, IConstantPool iConstantPool, int i10) throws ClassFormatException {
        this.startPC = u2At(bArr, 0, i10);
        this.length = u2At(bArr, 2, i10);
        this.index = u2At(bArr, 4, i10);
    }

    @Override
    public int getIndex() {
        return this.index;
    }

    @Override
    public int getLength() {
        return this.length;
    }

    @Override
    public int getStartPC() {
        return this.startPC;
    }
}
