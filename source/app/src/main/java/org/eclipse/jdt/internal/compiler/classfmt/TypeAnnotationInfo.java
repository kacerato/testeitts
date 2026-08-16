package org.eclipse.jdt.internal.compiler.classfmt;

import java.util.Arrays;
import org.eclipse.jdt.internal.compiler.env.IBinaryAnnotation;
import org.eclipse.jdt.internal.compiler.env.IBinaryTypeAnnotation;

public class TypeAnnotationInfo extends ClassFileStruct implements IBinaryTypeAnnotation {
    private AnnotationInfo annotation;
    private int info;
    private int info2;
    int readOffset;
    private int targetType;
    private int[] typePath;

    public TypeAnnotationInfo(byte[] bArr, int[] iArr, int i10) {
        super(bArr, iArr, i10);
        this.targetType = 0;
        this.readOffset = 0;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        TypeAnnotationInfo typeAnnotationInfo = (TypeAnnotationInfo) obj;
        if (this.targetType == typeAnnotationInfo.targetType && this.info == typeAnnotationInfo.info && this.info2 == typeAnnotationInfo.info2 && Arrays.equals(this.typePath, typeAnnotationInfo.typePath)) {
            return this.annotation.equals(typeAnnotationInfo.annotation);
        }
        return false;
    }

    @Override
    public IBinaryAnnotation getAnnotation() {
        return this.annotation;
    }

    @Override
    public int getBoundIndex() {
        return this.info2;
    }

    @Override
    public int getMethodFormalParameterIndex() {
        return this.info;
    }

    @Override
    public int getSupertypeIndex() {
        return this.info;
    }

    @Override
    public int getTargetType() {
        return this.targetType;
    }

    @Override
    public int getThrowsTypeIndex() {
        return this.info;
    }

    @Override
    public int getTypeParameterIndex() {
        return this.info;
    }

    @Override
    public int[] getTypePath() {
        return this.typePath;
    }

    public int hashCode() {
        int i10 = ((((this.targetType + 31) * 31) + this.info) * 31) + this.info2;
        int[] iArr = this.typePath;
        if (iArr != null) {
            int length = iArr.length;
            for (int i11 = 0; i11 < length; i11++) {
                i10 = (i10 * 31) + this.typePath[i11];
            }
        }
        return i10;
    }

    public void initialize() {
        this.annotation.initialize();
    }

    @Override
    public void reset() {
        this.annotation.reset();
        super.reset();
    }

    public String toString() {
        return BinaryTypeFormatter.annotationToString(this);
    }

    public TypeAnnotationInfo(byte[] bArr, int[] iArr, int i10, boolean z10, boolean z11) {
        this(bArr, iArr, i10);
        this.readOffset = 0;
        int u1At = u1At(0);
        this.targetType = u1At;
        if (u1At != 0 && u1At != 1) {
            switch (u1At) {
                case 16:
                    this.info = u2At(1);
                    this.readOffset += 3;
                    break;
                case 17:
                case 18:
                    this.info = u1At(1);
                    this.info2 = u1At(2);
                    this.readOffset += 3;
                    break;
                case 19:
                case 20:
                case 21:
                    this.readOffset++;
                    break;
                case 22:
                    this.info = u1At(1);
                    this.readOffset += 2;
                    break;
                case 23:
                    this.info = u2At(1);
                    this.readOffset += 3;
                    break;
                default:
                    throw new IllegalStateException("Target type not handled " + this.targetType);
            }
        } else {
            this.info = u1At(1);
            this.readOffset += 2;
        }
        int u1At2 = u1At(this.readOffset);
        this.readOffset++;
        if (u1At2 == 0) {
            this.typePath = IBinaryTypeAnnotation.NO_TYPE_PATH;
        } else {
            this.typePath = new int[u1At2 * 2];
            int i11 = 0;
            for (int i12 = 0; i12 < u1At2; i12++) {
                int[] iArr2 = this.typePath;
                int i13 = i11 + 1;
                int i14 = this.readOffset;
                this.readOffset = i14 + 1;
                iArr2[i11] = u1At(i14);
                int[] iArr3 = this.typePath;
                i11 += 2;
                int i15 = this.readOffset;
                this.readOffset = i15 + 1;
                iArr3[i13] = u1At(i15);
            }
        }
        AnnotationInfo annotationInfo = new AnnotationInfo(bArr, this.constantPoolOffsets, this.structOffset + this.readOffset, z10, z11);
        this.annotation = annotationInfo;
        this.readOffset += annotationInfo.readOffset;
    }
}
