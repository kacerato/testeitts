package org.eclipse.jdt.internal.core.util;

import org.eclipse.jdt.core.util.ClassFormatException;
import org.eclipse.jdt.core.util.IConstantPool;
import org.eclipse.jdt.core.util.IConstantPoolEntry;
import org.eclipse.jdt.core.util.IVerificationTypeInfo;

public class VerificationInfo extends ClassFileStruct implements IVerificationTypeInfo {
    private char[] classTypeName;
    private int constantPoolIndex;
    private int offset;
    private int readOffset;
    private int tag;

    public VerificationInfo(byte[] bArr, IConstantPool iConstantPool, int i10) throws ClassFormatException {
        int u1At = u1At(bArr, 0, i10);
        this.tag = u1At;
        this.readOffset = 1;
        if (u1At != 7) {
            if (u1At != 8) {
                return;
            }
            this.offset = u2At(bArr, 1, i10);
            this.readOffset += 2;
            return;
        }
        int u2At = u2At(bArr, 1, i10);
        this.constantPoolIndex = u2At;
        if (u2At != 0) {
            IConstantPoolEntry decodeEntry = iConstantPool.decodeEntry(u2At);
            if (decodeEntry.getKind() != 7) {
                throw new ClassFormatException(3);
            }
            this.classTypeName = decodeEntry.getClassInfoName();
        }
        this.readOffset += 2;
    }

    @Override
    public char[] getClassTypeName() {
        return this.classTypeName;
    }

    @Override
    public int getConstantPoolIndex() {
        return this.constantPoolIndex;
    }

    @Override
    public int getOffset() {
        return this.offset;
    }

    @Override
    public int getTag() {
        return this.tag;
    }

    public int sizeInBytes() {
        return this.readOffset;
    }
}
