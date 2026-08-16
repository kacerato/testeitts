package org.eclipse.jdt.internal.core.util;

import org.eclipse.jdt.core.util.ClassFormatException;
import org.eclipse.jdt.core.util.IConstantPool;
import org.eclipse.jdt.core.util.IConstantPoolEntry;
import org.eclipse.jdt.core.util.IEnclosingMethodAttribute;

public class EnclosingMethodAttribute extends ClassFileAttribute implements IEnclosingMethodAttribute {
    private int enclosingClassIndex;
    private char[] enclosingClassName;
    private char[] methodDescriptor;
    private int methodDescriptorIndex;
    private char[] methodName;
    private int methodNameAndTypeIndex;
    private int methodNameIndex;

    public EnclosingMethodAttribute(byte[] bArr, IConstantPool iConstantPool, int i10) throws ClassFormatException {
        super(bArr, iConstantPool, i10);
        int u2At = u2At(bArr, 6, i10);
        this.enclosingClassIndex = u2At;
        IConstantPoolEntry decodeEntry = iConstantPool.decodeEntry(u2At);
        if (decodeEntry.getKind() != 7) {
            throw new ClassFormatException(3);
        }
        this.enclosingClassName = decodeEntry.getClassInfoName();
        int u2At2 = u2At(bArr, 8, i10);
        this.methodNameAndTypeIndex = u2At2;
        if (u2At2 != 0) {
            IConstantPoolEntry decodeEntry2 = iConstantPool.decodeEntry(u2At2);
            if (decodeEntry2.getKind() != 12) {
                throw new ClassFormatException(3);
            }
            this.methodDescriptorIndex = decodeEntry2.getNameAndTypeInfoDescriptorIndex();
            this.methodNameIndex = decodeEntry2.getNameAndTypeInfoNameIndex();
            IConstantPoolEntry decodeEntry3 = iConstantPool.decodeEntry(this.methodDescriptorIndex);
            if (decodeEntry3.getKind() != 1) {
                throw new ClassFormatException(3);
            }
            this.methodDescriptor = decodeEntry3.getUtf8Value();
            IConstantPoolEntry decodeEntry4 = iConstantPool.decodeEntry(this.methodNameIndex);
            if (decodeEntry4.getKind() != 1) {
                throw new ClassFormatException(3);
            }
            this.methodName = decodeEntry4.getUtf8Value();
        }
    }

    @Override
    public char[] getEnclosingClass() {
        return this.enclosingClassName;
    }

    @Override
    public int getEnclosingClassIndex() {
        return this.enclosingClassIndex;
    }

    @Override
    public char[] getMethodDescriptor() {
        return this.methodDescriptor;
    }

    @Override
    public int getMethodDescriptorIndex() {
        return this.methodDescriptorIndex;
    }

    @Override
    public char[] getMethodName() {
        return this.methodName;
    }

    @Override
    public int getMethodNameAndTypeIndex() {
        return this.methodNameAndTypeIndex;
    }

    @Override
    public int getMethodNameIndex() {
        return this.methodNameIndex;
    }
}
