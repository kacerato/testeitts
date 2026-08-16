package org.eclipse.jdt.internal.core.util;

import org.eclipse.jdt.core.util.ClassFormatException;
import org.eclipse.jdt.core.util.IAnnotationComponentValue;
import org.eclipse.jdt.core.util.IAnnotationDefaultAttribute;
import org.eclipse.jdt.core.util.IConstantPool;

public class AnnotationDefaultAttribute extends ClassFileAttribute implements IAnnotationDefaultAttribute {
    private IAnnotationComponentValue memberValue;

    public AnnotationDefaultAttribute(byte[] bArr, IConstantPool iConstantPool, int i10) throws ClassFormatException {
        super(bArr, iConstantPool, i10);
        this.memberValue = new AnnotationComponentValue(bArr, iConstantPool, i10 + 6);
    }

    @Override
    public IAnnotationComponentValue getMemberValue() {
        return this.memberValue;
    }
}
