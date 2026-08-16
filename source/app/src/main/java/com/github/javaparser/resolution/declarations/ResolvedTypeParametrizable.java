package com.github.javaparser.resolution.declarations;

import java.util.List;
import java.util.Optional;

public interface ResolvedTypeParametrizable {
    Optional<ResolvedTypeParameterDeclaration> findTypeParameter(String name);

    List<ResolvedTypeParameterDeclaration> getTypeParameters();

    default boolean isGeneric() {
        return !getTypeParameters().isEmpty();
    }
}
