package com.github.javaparser.resolution.declarations;

public interface ResolvedFieldDeclaration extends ResolvedValueDeclaration, HasAccessSpecifier {
    @Override
    default ResolvedFieldDeclaration asField() {
        return this;
    }

    ResolvedTypeDeclaration declaringType();

    @Override
    default boolean isField() {
        return true;
    }

    boolean isStatic();

    boolean isVolatile();
}
