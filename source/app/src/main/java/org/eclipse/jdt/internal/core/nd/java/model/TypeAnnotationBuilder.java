package org.eclipse.jdt.internal.core.nd.java.model;

import org.eclipse.jdt.internal.compiler.env.IBinaryAnnotation;
import org.eclipse.jdt.internal.compiler.env.IBinaryTypeAnnotation;

public class TypeAnnotationBuilder implements ITypeAnnotationBuilder {
    int index;
    int kind;
    int length;
    TypeAnnotationBuilder parent;
    int target;
    int targetParameter;
    int targetParameter2;

    private TypeAnnotationBuilder(TypeAnnotationBuilder typeAnnotationBuilder, int i10, int i11, int i12, int i13, int i14, int i15) {
        this.parent = typeAnnotationBuilder;
        this.kind = i10;
        this.index = i11;
        this.length = i12;
        this.target = i13;
        this.targetParameter = i14;
        this.targetParameter2 = i15;
    }

    public static TypeAnnotationBuilder create() {
        return new TypeAnnotationBuilder(null, 0, 0, 0, -1, -1, -1);
    }

    private int[] getTypePath() {
        int i10 = this.length;
        if (i10 == 0) {
            return IBinaryTypeAnnotation.NO_TYPE_PATH;
        }
        int[] iArr = new int[i10 * 2];
        for (TypeAnnotationBuilder typeAnnotationBuilder = this; typeAnnotationBuilder != null; typeAnnotationBuilder = typeAnnotationBuilder.parent) {
            int i11 = typeAnnotationBuilder.length;
            if (i11 <= 0) {
                break;
            }
            int i12 = (i11 - 1) * 2;
            iArr[i12] = typeAnnotationBuilder.kind;
            iArr[i12 + 1] = typeAnnotationBuilder.index;
        }
        return iArr;
    }

    private TypeAnnotationBuilder toTarget(int i10) {
        return new TypeAnnotationBuilder(this.parent, this.kind, this.index, this.length, i10, this.targetParameter, this.targetParameter2);
    }

    private TypeAnnotationBuilder toTarget2(int i10) {
        return new TypeAnnotationBuilder(this.parent, this.kind, this.index, this.length, this.target, this.targetParameter, i10);
    }

    private TypeAnnotationBuilder walk(int i10, int i11) {
        return new TypeAnnotationBuilder(this, i10, i11, this.length + 1, this.target, this.targetParameter, this.targetParameter2);
    }

    @Override
    public IBinaryTypeAnnotation build(IBinaryAnnotation iBinaryAnnotation) {
        return new IndexBinaryTypeAnnotation(this.target, this.targetParameter, this.targetParameter2, getTypePath(), iBinaryAnnotation);
    }

    @Override
    public ITypeAnnotationBuilder toField() {
        return toTarget(19);
    }

    @Override
    public ITypeAnnotationBuilder toMethodParameter(short s10) {
        return toTarget(22, s10);
    }

    @Override
    public ITypeAnnotationBuilder toMethodReturn() {
        return toTarget(20);
    }

    @Override
    public ITypeAnnotationBuilder toNextArrayDimension() {
        return walk(0, 0);
    }

    @Override
    public ITypeAnnotationBuilder toNextNestedType() {
        return walk(1, 0);
    }

    @Override
    public ITypeAnnotationBuilder toReceiver() {
        return toTarget(21);
    }

    @Override
    public ITypeAnnotationBuilder toSupertype(short s10) {
        return toTarget(16, s10);
    }

    @Override
    public ITypeAnnotationBuilder toThrows(int i10) {
        return toTarget(23, i10);
    }

    @Override
    public ITypeAnnotationBuilder toTypeArgument(int i10) {
        return walk(3, i10);
    }

    @Override
    public ITypeAnnotationBuilder toTypeBound(short s10) {
        return toTarget2(s10);
    }

    @Override
    public ITypeAnnotationBuilder toTypeParameter(boolean z10, int i10) {
        return toTarget(!z10 ? 1 : 0, i10);
    }

    @Override
    public ITypeAnnotationBuilder toTypeParameterBounds(boolean z10, int i10) {
        return toTarget(z10 ? 17 : 18, i10);
    }

    @Override
    public ITypeAnnotationBuilder toWildcardBound() {
        return walk(2, 0);
    }

    private TypeAnnotationBuilder toTarget(int i10, int i11) {
        return new TypeAnnotationBuilder(this.parent, this.kind, this.index, this.length, i10, i11, this.targetParameter2);
    }
}
