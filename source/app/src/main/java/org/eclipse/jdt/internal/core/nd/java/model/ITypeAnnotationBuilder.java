package org.eclipse.jdt.internal.core.nd.java.model;

import org.eclipse.jdt.internal.compiler.env.IBinaryAnnotation;
import org.eclipse.jdt.internal.compiler.env.IBinaryTypeAnnotation;

public interface ITypeAnnotationBuilder {
    IBinaryTypeAnnotation build(IBinaryAnnotation iBinaryAnnotation);

    ITypeAnnotationBuilder toField();

    ITypeAnnotationBuilder toMethodParameter(short s10);

    ITypeAnnotationBuilder toMethodReturn();

    ITypeAnnotationBuilder toNextArrayDimension();

    ITypeAnnotationBuilder toNextNestedType();

    ITypeAnnotationBuilder toReceiver();

    ITypeAnnotationBuilder toSupertype(short s10);

    ITypeAnnotationBuilder toThrows(int i10);

    ITypeAnnotationBuilder toTypeArgument(int i10);

    ITypeAnnotationBuilder toTypeBound(short s10);

    ITypeAnnotationBuilder toTypeParameter(boolean z10, int i10);

    ITypeAnnotationBuilder toTypeParameterBounds(boolean z10, int i10);

    ITypeAnnotationBuilder toWildcardBound();
}
