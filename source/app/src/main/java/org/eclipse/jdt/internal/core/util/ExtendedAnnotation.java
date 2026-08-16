package org.eclipse.jdt.internal.core.util;

import java.lang.reflect.Array;
import org.eclipse.jdt.core.util.ClassFormatException;
import org.eclipse.jdt.core.util.IAnnotationComponent;
import org.eclipse.jdt.core.util.IConstantPool;
import org.eclipse.jdt.core.util.IConstantPoolEntry;
import org.eclipse.jdt.core.util.IExtendedAnnotation;
import org.eclipse.jdt.core.util.ILocalVariableReferenceInfo;

public class ExtendedAnnotation extends ClassFileStruct implements IExtendedAnnotation {
    private int annotationTypeIndex;
    private IAnnotationComponent[] components;
    private int componentsNumber;
    private int exceptionTableIndex;
    private ILocalVariableReferenceInfo[] localVariableTable = NO_LOCAL_VARIABLE_TABLE_ENTRIES;
    private int offset;
    private int parameterIndex;
    private int readOffset;
    private int targetType;
    private int typeIndex;
    private char[] typeName;
    private int typeParameterBoundIndex;
    private int typeParameterIndex;
    private int[][] typePath;
    private static final IAnnotationComponent[] NO_ENTRIES = new IAnnotationComponent[0];
    private static final int[][] NO_TYPEPATH = (int[][]) Array.newInstance(Integer.TYPE, 0, 0);
    private static final ILocalVariableReferenceInfo[] NO_LOCAL_VARIABLE_TABLE_ENTRIES = new ILocalVariableReferenceInfo[0];

    public ExtendedAnnotation(byte[] bArr, IConstantPool iConstantPool, int i10) throws ClassFormatException {
        int u1At = u1At(bArr, 0, i10);
        this.targetType = u1At;
        this.readOffset = 1;
        readTargetInfo(u1At, bArr, iConstantPool, i10);
        int u1At2 = u1At(bArr, this.readOffset, i10);
        this.readOffset++;
        if (u1At2 == 0) {
            this.typePath = NO_TYPEPATH;
        } else {
            this.typePath = new int[u1At2];
            for (int i11 = 0; i11 < u1At2; i11++) {
                int[] iArr = new int[2];
                this.typePath[i11] = iArr;
                int i12 = this.readOffset;
                this.readOffset = i12 + 1;
                iArr[0] = u1At(bArr, i12, i10);
                int i13 = this.readOffset;
                this.readOffset = i13 + 1;
                iArr[1] = u1At(bArr, i13, i10);
            }
        }
        int u2At = u2At(bArr, this.readOffset, i10);
        this.typeIndex = u2At;
        this.readOffset += 2;
        if (u2At == 0) {
            throw new ClassFormatException(3);
        }
        IConstantPoolEntry decodeEntry = iConstantPool.decodeEntry(u2At);
        if (decodeEntry.getKind() != 1) {
            throw new ClassFormatException(3);
        }
        this.typeName = decodeEntry.getUtf8Value();
        int u2At2 = u2At(bArr, this.readOffset, i10);
        this.componentsNumber = u2At2;
        this.readOffset += 2;
        if (u2At2 != 0) {
            this.components = new IAnnotationComponent[u2At2];
            for (int i14 = 0; i14 < u2At2; i14++) {
                AnnotationComponent annotationComponent = new AnnotationComponent(bArr, iConstantPool, this.readOffset + i10);
                this.components[i14] = annotationComponent;
                this.readOffset += annotationComponent.sizeInBytes();
            }
        } else {
            this.components = NO_ENTRIES;
        }
        if (this.annotationTypeIndex == 65535) {
            this.annotationTypeIndex = -1;
        }
    }

    private void readTargetInfo(int i10, byte[] bArr, IConstantPool iConstantPool, int i11) throws ClassFormatException {
        if (i10 == 0 || i10 == 1) {
            this.typeParameterIndex = u1At(bArr, this.readOffset, i11);
            this.readOffset++;
            return;
        }
        if (i10 == 22) {
            this.parameterIndex = u1At(bArr, this.readOffset, i11);
            this.readOffset++;
            return;
        }
        if (i10 == 23) {
            this.annotationTypeIndex = u2At(bArr, this.readOffset, i11);
            this.readOffset += 2;
            return;
        }
        switch (i10) {
            case 16:
                this.annotationTypeIndex = u2At(bArr, this.readOffset, i11);
                this.readOffset += 2;
                return;
            case 17:
            case 18:
                this.typeParameterIndex = u1At(bArr, this.readOffset, i11);
                int i12 = this.readOffset + 1;
                this.readOffset = i12;
                this.typeParameterBoundIndex = u1At(bArr, i12, i11);
                this.readOffset++;
                return;
            default:
                switch (i10) {
                    case 64:
                    case 65:
                        int u2At = u2At(bArr, this.readOffset, i11);
                        this.readOffset += 2;
                        this.localVariableTable = new LocalVariableReferenceInfo[u2At];
                        for (int i13 = 0; i13 < u2At; i13++) {
                            this.localVariableTable[i13] = new LocalVariableReferenceInfo(bArr, iConstantPool, this.readOffset + i11);
                            this.readOffset += 6;
                        }
                        return;
                    case 66:
                        this.exceptionTableIndex = u2At(bArr, this.readOffset, i11);
                        this.readOffset += 2;
                        return;
                    case 67:
                    case 68:
                    case 69:
                    case 70:
                        this.offset = u2At(bArr, this.readOffset, i11);
                        this.readOffset += 2;
                        return;
                    case 71:
                        this.offset = u2At(bArr, this.readOffset, i11);
                        int i14 = this.readOffset + 2;
                        this.readOffset = i14;
                        this.annotationTypeIndex = u1At(bArr, i14, i11);
                        this.readOffset++;
                        return;
                    case 72:
                    case 73:
                    case 74:
                    case 75:
                        this.offset = u2At(bArr, this.readOffset, i11);
                        int i15 = this.readOffset + 2;
                        this.readOffset = i15;
                        this.annotationTypeIndex = u1At(bArr, i15, i11);
                        this.readOffset++;
                        return;
                    default:
                        return;
                }
        }
    }

    @Override
    public int getAnnotationTypeIndex() {
        return this.annotationTypeIndex;
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
    public int getExceptionTableIndex() {
        return this.exceptionTableIndex;
    }

    @Override
    public int getLocalVariableRefenceInfoLength() {
        return this.localVariableTable.length;
    }

    @Override
    public ILocalVariableReferenceInfo[] getLocalVariableTable() {
        return this.localVariableTable;
    }

    @Override
    public int getOffset() {
        return this.offset;
    }

    @Override
    public int getParameterIndex() {
        return this.parameterIndex;
    }

    @Override
    public int getTargetType() {
        return this.targetType;
    }

    @Override
    public int getTypeIndex() {
        return this.typeIndex;
    }

    @Override
    public char[] getTypeName() {
        return this.typeName;
    }

    @Override
    public int getTypeParameterBoundIndex() {
        return this.typeParameterBoundIndex;
    }

    @Override
    public int getTypeParameterIndex() {
        return this.typeParameterIndex;
    }

    @Override
    public int[][] getTypePath() {
        return this.typePath;
    }

    public int sizeInBytes() {
        return this.readOffset;
    }
}
