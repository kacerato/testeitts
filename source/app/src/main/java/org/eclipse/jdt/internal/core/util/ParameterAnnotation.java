package org.eclipse.jdt.internal.core.util;

import org.eclipse.jdt.core.util.ClassFormatException;
import org.eclipse.jdt.core.util.IAnnotation;
import org.eclipse.jdt.core.util.IConstantPool;
import org.eclipse.jdt.core.util.IParameterAnnotation;

public class ParameterAnnotation extends ClassFileStruct implements IParameterAnnotation {
    private static final IAnnotation[] NO_ENTRIES = new IAnnotation[0];
    private IAnnotation[] annotations;
    private int annotationsNumber;
    private int readOffset;

    public ParameterAnnotation(byte[] bArr, IConstantPool iConstantPool, int i10) throws ClassFormatException {
        int u2At = u2At(bArr, 0, i10);
        this.readOffset = 2;
        this.annotationsNumber = u2At;
        if (u2At == 0) {
            this.annotations = NO_ENTRIES;
            return;
        }
        this.annotations = new IAnnotation[u2At];
        for (int i11 = 0; i11 < u2At; i11++) {
            Annotation annotation = new Annotation(bArr, iConstantPool, this.readOffset + i10);
            this.annotations[i11] = annotation;
            this.readOffset += annotation.sizeInBytes();
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

    public int sizeInBytes() {
        return this.readOffset;
    }
}
