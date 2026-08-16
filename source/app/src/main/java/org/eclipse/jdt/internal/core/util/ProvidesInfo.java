package org.eclipse.jdt.internal.core.util;

import org.eclipse.jdt.core.util.ClassFormatException;
import org.eclipse.jdt.core.util.IConstantPool;
import org.eclipse.jdt.core.util.IConstantPoolEntry;
import org.eclipse.jdt.core.util.IProvidesInfo;

public class ProvidesInfo extends ClassFileStruct implements IProvidesInfo {
    private int[] implementationIndices;
    private char[][] implementationNames;
    private int implementationsCount;
    private int index;
    private char[] serviceName;

    public ProvidesInfo(byte[] bArr, IConstantPool iConstantPool, int i10) throws ClassFormatException {
        int u2At = u2At(bArr, 0, i10);
        this.index = u2At;
        IConstantPoolEntry decodeEntry = iConstantPool.decodeEntry(u2At);
        if (decodeEntry.getKind() != 7) {
            throw new ClassFormatException(3);
        }
        this.serviceName = decodeEntry.getClassInfoName();
        int u2At2 = u2At(bArr, 2, i10);
        this.implementationsCount = u2At2;
        if (u2At2 != 0) {
            this.implementationIndices = new int[u2At2];
            this.implementationNames = new char[u2At2];
            int i11 = 4;
            for (int i12 = 0; i12 < this.implementationsCount; i12++) {
                this.implementationIndices[i12] = u2At(bArr, i11, i10);
                i11 += 2;
                IConstantPoolEntry decodeEntry2 = iConstantPool.decodeEntry(this.implementationIndices[i12]);
                if (decodeEntry2.getKind() != 7) {
                    throw new ClassFormatException(3);
                }
                this.implementationNames[i12] = decodeEntry2.getClassInfoName();
            }
        }
    }

    @Override
    public int[] getImplementationIndices() {
        return this.implementationIndices;
    }

    @Override
    public char[][] getImplementationNames() {
        return this.implementationNames;
    }

    @Override
    public int getImplementationsCount() {
        return this.implementationsCount;
    }

    @Override
    public int getIndex() {
        return this.index;
    }

    @Override
    public char[] getServiceName() {
        return this.serviceName;
    }
}
