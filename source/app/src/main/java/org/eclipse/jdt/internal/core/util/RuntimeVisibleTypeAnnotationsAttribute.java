package org.eclipse.jdt.internal.core.util;

import org.eclipse.jdt.core.util.ClassFormatException;
import org.eclipse.jdt.core.util.IConstantPool;
import org.eclipse.jdt.core.util.IExtendedAnnotation;
import org.eclipse.jdt.core.util.IRuntimeVisibleTypeAnnotationsAttribute;

public class RuntimeVisibleTypeAnnotationsAttribute extends ClassFileAttribute implements IRuntimeVisibleTypeAnnotationsAttribute {
    private static final IExtendedAnnotation[] NO_ENTRIES = new IExtendedAnnotation[0];
    private IExtendedAnnotation[] extendedAnnotations;
    private int extendedAnnotationsNumber;

    public RuntimeVisibleTypeAnnotationsAttribute(byte[] bArr, IConstantPool iConstantPool, int i10) throws ClassFormatException {
        super(bArr, iConstantPool, i10);
        int u2At = u2At(bArr, 6, i10);
        this.extendedAnnotationsNumber = u2At;
        if (u2At == 0) {
            this.extendedAnnotations = NO_ENTRIES;
            return;
        }
        this.extendedAnnotations = new IExtendedAnnotation[u2At];
        int i11 = 8;
        for (int i12 = 0; i12 < u2At; i12++) {
            ExtendedAnnotation extendedAnnotation = new ExtendedAnnotation(bArr, iConstantPool, i10 + i11);
            this.extendedAnnotations[i12] = extendedAnnotation;
            i11 += extendedAnnotation.sizeInBytes();
        }
    }

    @Override
    public IExtendedAnnotation[] getExtendedAnnotations() {
        return this.extendedAnnotations;
    }

    @Override
    public int getExtendedAnnotationsNumber() {
        return this.extendedAnnotationsNumber;
    }
}
