package org.eclipse.jdt.internal.core.util;

import org.eclipse.jdt.core.util.ClassFormatException;
import org.eclipse.jdt.core.util.IConstantPool;
import org.eclipse.jdt.core.util.IConstantPoolEntry;
import org.eclipse.jdt.core.util.IConstantValueAttribute;

public class ConstantValueAttribute extends ClassFileAttribute implements IConstantValueAttribute {
    private IConstantPoolEntry constantPoolEntry;
    private int constantValueIndex;

    public ConstantValueAttribute(byte[] bArr, IConstantPool iConstantPool, int i10) throws ClassFormatException {
        super(bArr, iConstantPool, i10);
        int u2At = u2At(bArr, 6, i10);
        this.constantValueIndex = u2At;
        this.constantPoolEntry = iConstantPool.decodeEntry(u2At);
    }

    @Override
    public IConstantPoolEntry getConstantValue() {
        return this.constantPoolEntry;
    }

    @Override
    public int getConstantValueIndex() {
        return this.constantValueIndex;
    }
}
