package org.eclipse.jdt.internal.core.util;

import org.eclipse.jdt.core.util.ClassFormatException;
import org.eclipse.jdt.core.util.IConstantPool;
import org.eclipse.jdt.core.util.IConstantPoolEntry;
import org.eclipse.jdt.core.util.IMethodParametersAttribute;

public class MethodParametersAttribute extends ClassFileAttribute implements IMethodParametersAttribute {
    private final short[] accessFlags;
    private final char[][] names;
    private final int numberOfEntries;
    private static final char[][] NO_NAMES = new char[0];
    private static final short[] NO_ACCES_FLAGS = new short[0];

    public MethodParametersAttribute(byte[] bArr, IConstantPool iConstantPool, int i10) throws ClassFormatException {
        super(bArr, iConstantPool, i10);
        int u1At = u1At(bArr, 6, i10);
        this.numberOfEntries = u1At;
        if (u1At == 0) {
            this.names = NO_NAMES;
            this.accessFlags = NO_ACCES_FLAGS;
            return;
        }
        int i11 = i10 + 7;
        this.names = new char[u1At];
        this.accessFlags = new short[u1At];
        for (int i12 = 0; i12 < u1At; i12++) {
            int u2At = u2At(bArr, 0, i11);
            int u2At2 = u2At(bArr, 2, i11);
            i11 += 4;
            if (u2At != 0) {
                IConstantPoolEntry decodeEntry = iConstantPool.decodeEntry(u2At);
                if (decodeEntry.getKind() != 1) {
                    throw new ClassFormatException(3);
                }
                this.names[i12] = decodeEntry.getUtf8Value();
            } else {
                this.names[i12] = null;
            }
            this.accessFlags[i12] = (short) (u2At2 & 65535);
        }
    }

    @Override
    public short getAccessFlags(int i10) {
        return this.accessFlags[i10];
    }

    @Override
    public int getMethodParameterLength() {
        return this.numberOfEntries;
    }

    @Override
    public char[] getParameterName(int i10) {
        return this.names[i10];
    }
}
