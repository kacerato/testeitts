package com.github.javaparser.resolution.declarations;

public interface ResolvedParameterDeclaration extends ResolvedValueDeclaration {
    @Override
    default ResolvedParameterDeclaration asParameter() {
        return this;
    }

    default String describeType() {
        if (!isVariadic()) {
            return getType().describe();
        }
        return getType().asArrayType().getComponentType().describe() + "...";
    }

    @Override
    default boolean hasName() {
        return true;
    }

    @Override
    default boolean isParameter() {
        return true;
    }

    boolean isVariadic();
}
