package com.github.javaparser.resolution.declarations;

import com.github.javaparser.resolution.types.ResolvedReferenceType;
import java.util.List;
import java.util.Optional;

public interface ResolvedRecordDeclaration extends ResolvedReferenceTypeDeclaration, ResolvedTypeParametrizable, HasAccessSpecifier {
    @Override
    default ResolvedRecordDeclaration asRecord() {
        return this;
    }

    List<ResolvedReferenceType> getAllInterfaces();

    List<ResolvedReferenceType> getAllSuperClasses();

    @Override
    List<ResolvedConstructorDeclaration> getConstructors();

    List<ResolvedReferenceType> getInterfaces();

    Optional<ResolvedReferenceType> getSuperClass();

    @Override
    default boolean isRecord() {
        return true;
    }
}
