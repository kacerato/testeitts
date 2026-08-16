package com.github.javaparser.resolution.declarations;

public interface ResolvedTypePatternDeclaration extends ResolvedValueDeclaration {
    @Override
    default ResolvedTypePatternDeclaration asTypePattern() {
        return this;
    }

    default String describeType() {
        return getType().describe();
    }

    @Override
    default boolean hasName() {
        return true;
    }

    @Override
    default boolean isTypePattern() {
        return true;
    }
}
