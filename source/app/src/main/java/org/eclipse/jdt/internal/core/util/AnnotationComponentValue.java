package org.eclipse.jdt.internal.core.util;

import org.eclipse.jdt.core.util.ClassFormatException;
import org.eclipse.jdt.core.util.IAnnotation;
import org.eclipse.jdt.core.util.IAnnotationComponentValue;
import org.eclipse.jdt.core.util.IConstantPool;
import org.eclipse.jdt.core.util.IConstantPoolEntry;

public class AnnotationComponentValue extends ClassFileStruct implements IAnnotationComponentValue {
    private static final IAnnotationComponentValue[] NO_VALUES = new AnnotationComponentValue[0];
    private IAnnotationComponentValue[] annotationComponentValues;
    private IAnnotation annotationValue;
    private int classFileInfoIndex;
    private IConstantPoolEntry classInfo;
    private IConstantPoolEntry constantValue;
    private int constantValueIndex;
    private char[] enumConstantName;
    private int enumConstantNameIndex;
    private char[] enumConstantTypeName;
    private int enumConstantTypeNameIndex;
    private int readOffset;
    private int tag;
    private int valuesNumber;

    public AnnotationComponentValue(byte[] bArr, IConstantPool iConstantPool, int i10) throws ClassFormatException {
        this.classFileInfoIndex = -1;
        this.constantValueIndex = -1;
        this.enumConstantTypeNameIndex = -1;
        this.enumConstantNameIndex = -1;
        int u1At = u1At(bArr, 0, i10);
        this.tag = u1At;
        this.readOffset = 1;
        if (u1At == 64) {
            Annotation annotation = new Annotation(bArr, iConstantPool, this.readOffset + i10);
            this.annotationValue = annotation;
            this.readOffset += annotation.sizeInBytes();
            return;
        }
        if (u1At != 70 && u1At != 83) {
            if (u1At == 99) {
                int u2At = u2At(bArr, 1, i10);
                this.classFileInfoIndex = u2At;
                if (u2At != 0) {
                    IConstantPoolEntry decodeEntry = iConstantPool.decodeEntry(u2At);
                    if (decodeEntry.getKind() != 1) {
                        throw new ClassFormatException(3);
                    }
                    this.classInfo = decodeEntry;
                }
                this.readOffset += 2;
                return;
            }
            if (u1At == 101) {
                int u2At2 = u2At(bArr, 1, i10);
                this.enumConstantTypeNameIndex = u2At2;
                if (u2At2 != 0) {
                    IConstantPoolEntry decodeEntry2 = iConstantPool.decodeEntry(u2At2);
                    if (decodeEntry2.getKind() != 1) {
                        throw new ClassFormatException(3);
                    }
                    this.enumConstantTypeName = decodeEntry2.getUtf8Value();
                }
                int i11 = this.readOffset + 2;
                this.readOffset = i11;
                int u2At3 = u2At(bArr, i11, i10);
                this.enumConstantNameIndex = u2At3;
                if (u2At3 != 0) {
                    IConstantPoolEntry decodeEntry3 = iConstantPool.decodeEntry(u2At3);
                    if (decodeEntry3.getKind() != 1) {
                        throw new ClassFormatException(3);
                    }
                    this.enumConstantName = decodeEntry3.getUtf8Value();
                }
                this.readOffset += 2;
                return;
            }
            if (u1At != 115 && u1At != 73 && u1At != 74 && u1At != 90) {
                if (u1At == 91) {
                    int u2At4 = u2At(bArr, 1, i10);
                    this.valuesNumber = u2At4;
                    this.readOffset += 2;
                    if (u2At4 == 0) {
                        this.annotationComponentValues = NO_VALUES;
                        return;
                    }
                    this.annotationComponentValues = new IAnnotationComponentValue[u2At4];
                    for (int i12 = 0; i12 < u2At4; i12++) {
                        AnnotationComponentValue annotationComponentValue = new AnnotationComponentValue(bArr, iConstantPool, this.readOffset + i10);
                        this.annotationComponentValues[i12] = annotationComponentValue;
                        this.readOffset += annotationComponentValue.sizeInBytes();
                    }
                    return;
                }
                switch (u1At) {
                    case 66:
                    case 67:
                    case 68:
                        break;
                    default:
                        return;
                }
            }
        }
        int u2At5 = u2At(bArr, 1, i10);
        this.constantValueIndex = u2At5;
        if (u2At5 != 0) {
            IConstantPoolEntry decodeEntry4 = iConstantPool.decodeEntry(u2At5);
            int kind = decodeEntry4.getKind();
            if (kind != 1 && kind != 3 && kind != 4 && kind != 5 && kind != 6) {
                throw new ClassFormatException(3);
            }
            this.constantValue = decodeEntry4;
        }
        this.readOffset += 2;
    }

    @Override
    public IAnnotationComponentValue[] getAnnotationComponentValues() {
        return this.annotationComponentValues;
    }

    @Override
    public IAnnotation getAnnotationValue() {
        return this.annotationValue;
    }

    @Override
    public IConstantPoolEntry getClassInfo() {
        return this.classInfo;
    }

    @Override
    public int getClassInfoIndex() {
        return this.classFileInfoIndex;
    }

    @Override
    public IConstantPoolEntry getConstantValue() {
        return this.constantValue;
    }

    @Override
    public int getConstantValueIndex() {
        return this.constantValueIndex;
    }

    @Override
    public char[] getEnumConstantName() {
        return this.enumConstantName;
    }

    @Override
    public int getEnumConstantNameIndex() {
        return this.enumConstantNameIndex;
    }

    @Override
    public char[] getEnumConstantTypeName() {
        return this.enumConstantTypeName;
    }

    @Override
    public int getEnumConstantTypeNameIndex() {
        return this.enumConstantTypeNameIndex;
    }

    @Override
    public int getTag() {
        return this.tag;
    }

    @Override
    public int getValuesNumber() {
        return this.valuesNumber;
    }

    public int sizeInBytes() {
        return this.readOffset;
    }
}
