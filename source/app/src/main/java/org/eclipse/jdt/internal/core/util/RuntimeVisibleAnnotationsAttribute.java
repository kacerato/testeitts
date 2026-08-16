package org.eclipse.jdt.internal.core.util;

import org.eclipse.jdt.core.util.ClassFormatException;
import org.eclipse.jdt.core.util.IAnnotation;
import org.eclipse.jdt.core.util.IConstantPool;
import org.eclipse.jdt.core.util.IRuntimeVisibleAnnotationsAttribute;

public class RuntimeVisibleAnnotationsAttribute extends ClassFileAttribute implements IRuntimeVisibleAnnotationsAttribute {
    private static final IAnnotation[] NO_ENTRIES = new IAnnotation[0];
    private IAnnotation[] annotations;
    private int annotationsNumber;

    public RuntimeVisibleAnnotationsAttribute(byte[] bArr, IConstantPool iConstantPool, int i10) throws ClassFormatException {
        super(bArr, iConstantPool, i10);
        int u2At = u2At(bArr, 6, i10);
        this.annotationsNumber = u2At;
        if (u2At == 0) {
            this.annotations = NO_ENTRIES;
            return;
        }
        this.annotations = new IAnnotation[u2At];
        int i11 = 8;
        for (int i12 = 0; i12 < u2At; i12++) {
            Annotation annotation = new Annotation(bArr, iConstantPool, i10 + i11);
            this.annotations[i12] = annotation;
            i11 += annotation.sizeInBytes();
        }
    }

    @Override
    public IAnnotation[] getAnnotations() {
        return this.annotations;
    }

    @Override
    public int getAnnotationsNumber() {
        return this.annotationsNumber;
    }
}
