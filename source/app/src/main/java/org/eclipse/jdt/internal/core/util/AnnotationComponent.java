package org.eclipse.jdt.internal.core.util;

import org.eclipse.jdt.core.util.ClassFormatException;
import org.eclipse.jdt.core.util.IAnnotationComponent;
import org.eclipse.jdt.core.util.IAnnotationComponentValue;
import org.eclipse.jdt.core.util.IConstantPool;
import org.eclipse.jdt.core.util.IConstantPoolEntry;

public class AnnotationComponent extends ClassFileStruct implements IAnnotationComponent {
    private char[] componentName;
    private int componentNameIndex;
    private IAnnotationComponentValue componentValue;
    private int readOffset;

    public AnnotationComponent(byte[] bArr, IConstantPool iConstantPool, int i10) throws ClassFormatException {
        int u2At = u2At(bArr, 0, i10);
        this.componentNameIndex = u2At;
        if (u2At != 0) {
            IConstantPoolEntry decodeEntry = iConstantPool.decodeEntry(u2At);
            if (decodeEntry.getKind() != 1) {
                throw new ClassFormatException(3);
            }
            this.componentName = decodeEntry.getUtf8Value();
        }
        this.readOffset = 2;
        AnnotationComponentValue annotationComponentValue = new AnnotationComponentValue(bArr, iConstantPool, i10 + this.readOffset);
        this.componentValue = annotationComponentValue;
        this.readOffset += annotationComponentValue.sizeInBytes();
    }

    @Override
    public char[] getComponentName() {
        return this.componentName;
    }

    @Override
    public int getComponentNameIndex() {
        return this.componentNameIndex;
    }

    @Override
    public IAnnotationComponentValue getComponentValue() {
        return this.componentValue;
    }

    public int sizeInBytes() {
        return this.readOffset;
    }
}
