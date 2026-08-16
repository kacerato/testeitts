package org.openjdk.javax.lang.model.util;

import org.openjdk.javax.annotation.processing.SupportedSourceVersion;
import org.openjdk.javax.lang.model.SourceVersion;
import org.openjdk.javax.lang.model.type.ArrayType;
import org.openjdk.javax.lang.model.type.DeclaredType;
import org.openjdk.javax.lang.model.type.ErrorType;
import org.openjdk.javax.lang.model.type.ExecutableType;
import org.openjdk.javax.lang.model.type.NoType;
import org.openjdk.javax.lang.model.type.NullType;
import org.openjdk.javax.lang.model.type.PrimitiveType;
import org.openjdk.javax.lang.model.type.TypeMirror;
import org.openjdk.javax.lang.model.type.TypeVariable;
import org.openjdk.javax.lang.model.type.WildcardType;

@SupportedSourceVersion(SourceVersion.RELEASE_6)
public class SimpleTypeVisitor6<R, P> extends AbstractTypeVisitor6<R, P> {
    protected final R DEFAULT_VALUE;

    @Deprecated
    public SimpleTypeVisitor6() {
        this.DEFAULT_VALUE = null;
    }

    public R defaultAction(TypeMirror typeMirror, P p10) {
        return this.DEFAULT_VALUE;
    }

    @Override
    public R visitArray(ArrayType arrayType, P p10) {
        return defaultAction(arrayType, p10);
    }

    @Override
    public R visitDeclared(DeclaredType declaredType, P p10) {
        return defaultAction(declaredType, p10);
    }

    @Override
    public R visitError(ErrorType errorType, P p10) {
        return defaultAction(errorType, p10);
    }

    @Override
    public R visitExecutable(ExecutableType executableType, P p10) {
        return defaultAction(executableType, p10);
    }

    @Override
    public R visitNoType(NoType noType, P p10) {
        return defaultAction(noType, p10);
    }

    @Override
    public R visitNull(NullType nullType, P p10) {
        return defaultAction(nullType, p10);
    }

    @Override
    public R visitPrimitive(PrimitiveType primitiveType, P p10) {
        return defaultAction(primitiveType, p10);
    }

    @Override
    public R visitTypeVariable(TypeVariable typeVariable, P p10) {
        return defaultAction(typeVariable, p10);
    }

    @Override
    public R visitWildcard(WildcardType wildcardType, P p10) {
        return defaultAction(wildcardType, p10);
    }

    @Deprecated
    public SimpleTypeVisitor6(R r10) {
        this.DEFAULT_VALUE = r10;
    }
}
