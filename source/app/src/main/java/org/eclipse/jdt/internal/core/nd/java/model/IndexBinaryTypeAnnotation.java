package org.eclipse.jdt.internal.core.nd.java.model;

import org.eclipse.jdt.internal.compiler.classfmt.BinaryTypeFormatter;
import org.eclipse.jdt.internal.compiler.env.IBinaryAnnotation;
import org.eclipse.jdt.internal.compiler.env.IBinaryTypeAnnotation;

public class IndexBinaryTypeAnnotation implements IBinaryTypeAnnotation {
    private IBinaryAnnotation annotation;
    private int info;
    private int info2;
    private int targetType;
    private int[] typePath;

    public IndexBinaryTypeAnnotation(int i10, int i11, int i12, int[] iArr, IBinaryAnnotation iBinaryAnnotation) {
        this.targetType = i10;
        this.info = i11;
        this.info2 = i12;
        this.typePath = iArr;
        this.annotation = iBinaryAnnotation;
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

    public String toString() {
        return BinaryTypeFormatter.annotationToString(this);
    }
}
