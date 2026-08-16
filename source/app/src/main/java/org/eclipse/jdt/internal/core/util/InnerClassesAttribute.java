package org.eclipse.jdt.internal.core.util;

import org.eclipse.jdt.core.util.ClassFormatException;
import org.eclipse.jdt.core.util.IConstantPool;
import org.eclipse.jdt.core.util.IInnerClassesAttribute;
import org.eclipse.jdt.core.util.IInnerClassesAttributeEntry;

public class InnerClassesAttribute extends ClassFileAttribute implements IInnerClassesAttribute {
    private static final IInnerClassesAttributeEntry[] NO_ENTRIES = new IInnerClassesAttributeEntry[0];
    private IInnerClassesAttributeEntry[] entries;
    private int numberOfClasses;

    public InnerClassesAttribute(byte[] bArr, IConstantPool iConstantPool, int i10) throws ClassFormatException {
        super(bArr, iConstantPool, i10);
        int u2At = u2At(bArr, 6, i10);
        this.numberOfClasses = u2At;
        if (u2At == 0) {
            this.entries = NO_ENTRIES;
            return;
        }
        this.entries = new IInnerClassesAttributeEntry[u2At];
        int i11 = 8;
        for (int i12 = 0; i12 < u2At; i12++) {
            this.entries[i12] = new InnerClassesAttributeEntry(bArr, iConstantPool, i10 + i11);
            i11 += 8;
        }
    }

    @Override
    public IInnerClassesAttributeEntry[] getInnerClassAttributesEntries() {
        return this.entries;
    }

    @Override
    public int getNumberOfClasses() {
        return this.numberOfClasses;
    }
}
