package org.eclipse.jdt.internal.core.util;

import org.eclipse.jdt.core.util.ClassFormatException;
import org.eclipse.jdt.core.util.IConstantPool;
import org.eclipse.jdt.core.util.IParameterAnnotation;
import org.eclipse.jdt.core.util.IRuntimeInvisibleParameterAnnotationsAttribute;

public class RuntimeInvisibleParameterAnnotationsAttribute extends ClassFileAttribute implements IRuntimeInvisibleParameterAnnotationsAttribute {
    private static final IParameterAnnotation[] NO_ENTRIES = new IParameterAnnotation[0];
    private IParameterAnnotation[] parameterAnnotations;
    private int parametersNumber;

    public RuntimeInvisibleParameterAnnotationsAttribute(byte[] bArr, IConstantPool iConstantPool, int i10) throws ClassFormatException {
        super(bArr, iConstantPool, i10);
        int u1At = u1At(bArr, 6, i10);
        this.parametersNumber = u1At;
        if (u1At == 0) {
            this.parameterAnnotations = NO_ENTRIES;
            return;
        }
        this.parameterAnnotations = new IParameterAnnotation[u1At];
        int i11 = 7;
        for (int i12 = 0; i12 < u1At; i12++) {
            ParameterAnnotation parameterAnnotation = new ParameterAnnotation(bArr, iConstantPool, i10 + i11);
            this.parameterAnnotations[i12] = parameterAnnotation;
            i11 += parameterAnnotation.sizeInBytes();
        }
    }

    @Override
    public IParameterAnnotation[] getParameterAnnotations() {
        return this.parameterAnnotations;
    }

    @Override
    public int getParametersNumber() {
        return this.parametersNumber;
    }
}
