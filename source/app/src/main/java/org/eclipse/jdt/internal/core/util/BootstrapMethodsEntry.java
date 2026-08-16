package org.eclipse.jdt.internal.core.util;

import org.eclipse.jdt.core.util.ClassFormatException;
import org.eclipse.jdt.core.util.IBootstrapMethodsEntry;
import org.eclipse.jdt.core.util.IConstantPool;

public class BootstrapMethodsEntry extends ClassFileStruct implements IBootstrapMethodsEntry {
    private int[] bootstrapArguments;
    private int bootstrapMethodReference;

    public BootstrapMethodsEntry(byte[] bArr, IConstantPool iConstantPool, int i10) throws ClassFormatException {
        this.bootstrapMethodReference = u2At(bArr, 0, i10);
        int u2At = u2At(bArr, 2, i10);
        int[] iArr = new int[u2At];
        int i11 = 4;
        for (int i12 = 0; i12 < u2At; i12++) {
            iArr[i12] = u2At(bArr, i11, i10);
            i11 += 2;
        }
        this.bootstrapArguments = iArr;
    }

    @Override
    public int[] getBootstrapArguments() {
        return this.bootstrapArguments;
    }

    @Override
    public int getBootstrapMethodReference() {
        return this.bootstrapMethodReference;
    }
}
