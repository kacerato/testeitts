package com.github.javaparser.resolution.types;

import com.github.javaparser.resolution.Context;
import com.github.javaparser.resolution.declarations.ResolvedTypeParameterDeclaration;
import java.util.Arrays;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.function.Predicate;

public interface ResolvedType {
    default boolean lambda$isNumericType$0(ResolvedPrimitiveType rpt) {
        return rpt.isAssignableBy(this);
    }

    default int arrayLevel() {
        if (isArray()) {
            return asArrayType().getComponentType().arrayLevel() + 1;
        }
        return 0;
    }

    default ResolvedArrayType asArrayType() {
        throw new UnsupportedOperationException(String.format("%s is not an Array", this));
    }

    default ResolvedLambdaConstraintType asConstraintType() {
        throw new UnsupportedOperationException(String.format("%s is not a constraint type", this));
    }

    default ResolvedPrimitiveType asPrimitive() {
        throw new UnsupportedOperationException(String.format("%s is not a Primitive type", this));
    }

    default ResolvedReferenceType asReferenceType() {
        throw new UnsupportedOperationException(String.format("%s is not a Reference Type", this));
    }

    default ResolvedTypeParameterDeclaration asTypeParameter() {
        throw new UnsupportedOperationException(String.format("%s is not a Type parameter", this));
    }

    default ResolvedTypeVariable asTypeVariable() {
        throw new UnsupportedOperationException(String.format("%s is not a Type variable", this));
    }

    default ResolvedUnionType asUnionType() {
        throw new UnsupportedOperationException(String.format("%s is not a union type", this));
    }

    default ResolvedWildcard asWildcard() {
        throw new UnsupportedOperationException(String.format("%s is not a Wildcard", this));
    }

    String describe();

    default ResolvedType erasure() {
        return this;
    }

    default boolean isArray() {
        return false;
    }

    boolean isAssignableBy(ResolvedType other);

    default boolean isConstraint() {
        return false;
    }

    default boolean isInferenceVariable() {
        return false;
    }

    default boolean isNull() {
        return false;
    }

    default boolean isNumericType() {
        return Arrays.stream(ResolvedPrimitiveType.getNumericPrimitiveTypes()).anyMatch(new Predicate() {
            @Override
            public final boolean test(Object obj) {
                boolean lambda$isNumericType$0;
                lambda$isNumericType$0 = ResolvedType.this.lambda$isNumericType$0((ResolvedPrimitiveType) obj);
                return lambda$isNumericType$0;
            }
        });
    }

    default boolean isPrimitive() {
        return false;
    }

    default boolean isReference() {
        return isReferenceType() || isArray() || isTypeVariable() || isNull() || isWildcard() || isUnionType();
    }

    default boolean isReferenceType() {
        return false;
    }

    default boolean isTypeVariable() {
        return false;
    }

    default boolean isUnionType() {
        return false;
    }

    default boolean isVoid() {
        return false;
    }

    default boolean isWildcard() {
        return false;
    }

    default boolean mention(List<ResolvedTypeParameterDeclaration> typeParameters) {
        throw new UnsupportedOperationException(getClass().getCanonicalName());
    }

    default ResolvedType replaceTypeVariables(ResolvedTypeParameterDeclaration tp, ResolvedType replaced, Map<ResolvedTypeParameterDeclaration, ResolvedType> inferredTypes) {
        return this;
    }

    default ResolvedType solveGenericTypes(Context context) {
        return this;
    }

    default String toDescriptor() {
        return "";
    }

    default ResolvedType replaceTypeVariables(ResolvedTypeParameterDeclaration tp, ResolvedType replaced) {
        return replaceTypeVariables(tp, replaced, new HashMap());
    }
}
