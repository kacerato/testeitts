package org.eclipse.jdt.internal.core.util;

import org.eclipse.jdt.core.util.ClassFormatException;
import org.eclipse.jdt.core.util.IBootstrapMethodsAttribute;
import org.eclipse.jdt.core.util.IBootstrapMethodsEntry;
import org.eclipse.jdt.core.util.IConstantPool;

public class BootstrapMethodsAttribute extends ClassFileAttribute implements IBootstrapMethodsAttribute {
    private static final IBootstrapMethodsEntry[] NO_ENTRIES = new IBootstrapMethodsEntry[0];
    private IBootstrapMethodsEntry[] entries;
    private int numberOfBootstrapMethods;

    public BootstrapMethodsAttribute(byte[] bArr, IConstantPool iConstantPool, int i10) throws ClassFormatException {
        super(bArr, iConstantPool, i10);
        int u2At = u2At(bArr, 6, i10);
        this.numberOfBootstrapMethods = u2At;
        if (u2At == 0) {
            this.entries = NO_ENTRIES;
            return;
        }
        this.entries = new IBootstrapMethodsEntry[u2At];
        int i11 = 8;
        for (int i12 = 0; i12 < u2At; i12++) {
            IBootstrapMethodsEntry[] iBootstrapMethodsEntryArr = this.entries;
            BootstrapMethodsEntry bootstrapMethodsEntry = new BootstrapMethodsEntry(bArr, iConstantPool, i10 + i11);
            iBootstrapMethodsEntryArr[i12] = bootstrapMethodsEntry;
            i11 += (bootstrapMethodsEntry.getBootstrapArguments().length * 2) + 4;
        }
    }

    @Override
    public IBootstrapMethodsEntry[] getBootstrapMethods() {
        return this.entries;
    }

    @Override
    public int getBootstrapMethodsLength() {
        return this.numberOfBootstrapMethods;
    }
}
