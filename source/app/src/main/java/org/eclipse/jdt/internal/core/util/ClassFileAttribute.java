package org.eclipse.jdt.internal.core.util;

import org.eclipse.jdt.core.util.ClassFormatException;
import org.eclipse.jdt.core.util.IClassFileAttribute;
import org.eclipse.jdt.core.util.IConstantPool;
import org.eclipse.jdt.core.util.IConstantPoolEntry;

public class ClassFileAttribute extends ClassFileStruct implements IClassFileAttribute {
    public static final IClassFileAttribute[] NO_ATTRIBUTES = new IClassFileAttribute[0];
    private long attributeLength;
    private char[] attributeName;
    private int attributeNameIndex;

    public ClassFileAttribute(byte[] bArr, IConstantPool iConstantPool, int i10) throws ClassFormatException {
        this.attributeNameIndex = u2At(bArr, 0, i10);
        this.attributeLength = u4At(bArr, 2, i10);
        IConstantPoolEntry decodeEntry = iConstantPool.decodeEntry(this.attributeNameIndex);
        if (decodeEntry.getKind() != 1) {
            throw new ClassFormatException(3);
        }
        this.attributeName = decodeEntry.getUtf8Value();
    }

    @Override
    public long getAttributeLength() {
        return this.attributeLength;
    }

    @Override
    public char[] getAttributeName() {
        return this.attributeName;
    }

    @Override
    public int getAttributeNameIndex() {
        return this.attributeNameIndex;
    }
}
