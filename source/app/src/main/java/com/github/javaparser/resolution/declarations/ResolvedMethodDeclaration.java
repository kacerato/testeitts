package com.github.javaparser.resolution.declarations;

import com.github.javaparser.resolution.types.ResolvedType;

public interface ResolvedMethodDeclaration extends ResolvedMethodLikeDeclaration {
    ResolvedType getReturnType();

    boolean isAbstract();

    boolean isDefaultMethod();

    default boolean isReturnTypeSubstituable(ResolvedType otherResolvedType) {
        ResolvedType returnType = getReturnType();
        if (returnType.isVoid()) {
            return otherResolvedType.isVoid();
        }
        if (returnType.isPrimitive()) {
            return otherResolvedType.isPrimitive() && returnType.asPrimitive().equals(otherResolvedType.asPrimitive());
        }
        if (otherResolvedType.isTypeVariable() || returnType.describe().equals(otherResolvedType.erasure().describe())) {
            return true;
        }
        throw new UnsupportedOperationException("Return-Type-Substituable must be implemented on reference type.");
    }

    boolean isStatic();

    String toDescriptor();
}
