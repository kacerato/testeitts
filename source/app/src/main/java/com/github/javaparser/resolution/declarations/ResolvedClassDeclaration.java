package com.github.javaparser.resolution.declarations;

import com.github.javaparser.resolution.types.ResolvedReferenceType;
import java.util.List;
import java.util.Optional;

public interface ResolvedClassDeclaration extends ResolvedReferenceTypeDeclaration, ResolvedTypeParametrizable, HasAccessSpecifier {
    List<ResolvedReferenceType> getAllInterfaces();

    List<ResolvedReferenceType> getAllSuperClasses();

    @Override
    List<ResolvedConstructorDeclaration> getConstructors();

    List<ResolvedReferenceType> getInterfaces();

    Optional<ResolvedReferenceType> getSuperClass();

    @Override
    default boolean isClass() {
        return true;
    }
}
