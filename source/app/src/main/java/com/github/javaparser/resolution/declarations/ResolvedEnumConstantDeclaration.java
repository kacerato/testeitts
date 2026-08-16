package com.github.javaparser.resolution.declarations;

public interface ResolvedEnumConstantDeclaration extends ResolvedValueDeclaration {
    @Override
    default ResolvedEnumConstantDeclaration asEnumConstant() {
        return this;
    }

    @Override
    String getName();

    @Override
    default boolean isEnumConstant() {
        return true;
    }
}
