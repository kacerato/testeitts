package org.eclipse.jdt.internal.core.util;

import org.eclipse.jdt.core.util.ClassFormatException;
import org.eclipse.jdt.core.util.IConstantPool;
import org.eclipse.jdt.core.util.IConstantPoolEntry;
import org.eclipse.jdt.core.util.INestMemberAttributeEntry;

public class NestMembersAttributeEntry extends ClassFileStruct implements INestMemberAttributeEntry {
    private char[] memberClassName;
    private int memberClassNameIndex;

    public NestMembersAttributeEntry(byte[] bArr, IConstantPool iConstantPool, int i10) throws ClassFormatException {
        int u2At = u2At(bArr, 0, i10);
        this.memberClassNameIndex = u2At;
        if (u2At != 0) {
            IConstantPoolEntry decodeEntry = iConstantPool.decodeEntry(u2At);
            if (decodeEntry.getKind() != 7) {
                throw new ClassFormatException(3);
            }
            this.memberClassName = decodeEntry.getClassInfoName();
        }
    }

    @Override
    public int getNestMemberIndex() {
        return this.memberClassNameIndex;
    }

    @Override
    public char[] getNestMemberName() {
        return this.memberClassName;
    }

    public String toString() {
        return new String(this.memberClassName);
    }
}
