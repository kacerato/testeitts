package org.eclipse.jdt.internal.core.util;

import org.eclipse.jdt.core.util.ClassFormatException;
import org.eclipse.jdt.core.util.IAnnotation;
import org.eclipse.jdt.core.util.IAnnotationComponent;
import org.eclipse.jdt.core.util.IConstantPool;
import org.eclipse.jdt.core.util.IConstantPoolEntry;

public class Annotation extends ClassFileStruct implements IAnnotation {
    private static final IAnnotationComponent[] NO_ENTRIES = new IAnnotationComponent[0];
    private IAnnotationComponent[] components;
    private int componentsNumber;
    private int readOffset;
    private int typeIndex;
    private char[] typeName;

    public Annotation(byte[] bArr, IConstantPool iConstantPool, int i10) throws ClassFormatException {
        int u2At = u2At(bArr, 0, i10);
        this.typeIndex = u2At;
        if (u2At == 0) {
            throw new ClassFormatException(3);
        }
        IConstantPoolEntry decodeEntry = iConstantPool.decodeEntry(u2At);
        if (decodeEntry.getKind() != 1) {
            throw new ClassFormatException(3);
        }
        this.typeName = decodeEntry.getUtf8Value();
        int u2At2 = u2At(bArr, 2, i10);
        this.componentsNumber = u2At2;
        this.readOffset = 4;
        if (u2At2 == 0) {
            this.components = NO_ENTRIES;
            return;
        }
        this.components = new IAnnotationComponent[u2At2];
        for (int i11 = 0; i11 < u2At2; i11++) {
            AnnotationComponent annotationComponent = new AnnotationComponent(bArr, iConstantPool, this.readOffset + i10);
            this.components[i11] = annotationComponent;
            this.readOffset += annotationComponent.sizeInBytes();
        }
    }

    @Override
    public IAnnotationComponent[] getComponents() {
        return this.components;
    }

    @Override
    public int getComponentsNumber() {
        return this.componentsNumber;
    }

    @Override
    public int getTypeIndex() {
        return this.typeIndex;
    }

    @Override
    public char[] getTypeName() {
        return this.typeName;
    }

    public int sizeInBytes() {
        return this.readOffset;
    }
}
