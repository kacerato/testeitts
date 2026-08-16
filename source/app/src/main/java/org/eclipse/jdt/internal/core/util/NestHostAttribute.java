package org.eclipse.jdt.internal.core.util;

import org.eclipse.jdt.core.util.ClassFormatException;
import org.eclipse.jdt.core.util.IConstantPool;
import org.eclipse.jdt.core.util.IConstantPoolEntry;
import org.eclipse.jdt.core.util.INestHostAttribute;

public class NestHostAttribute extends ClassFileAttribute implements INestHostAttribute {
    private int hostIndex;
    private char[] hostName;

    public NestHostAttribute(byte[] bArr, IConstantPool iConstantPool, int i10) throws ClassFormatException {
        super(bArr, iConstantPool, i10);
        int u2At = u2At(bArr, 6, i10);
        this.hostIndex = u2At;
        IConstantPoolEntry decodeEntry = iConstantPool.decodeEntry(u2At);
        if (decodeEntry.getKind() != 7) {
            throw new ClassFormatException(3);
        }
        this.hostName = decodeEntry.getClassInfoName();
    }

    @Override
    public int getNestHostIndex() {
        return this.hostIndex;
    }

    @Override
    public char[] getNestHostName() {
        return this.hostName;
    }

    public String toString() {
        return new String(this.hostName);
    }
}
