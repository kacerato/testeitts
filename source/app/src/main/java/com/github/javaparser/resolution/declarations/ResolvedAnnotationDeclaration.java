package com.github.javaparser.resolution.declarations;

import java.util.List;

public interface ResolvedAnnotationDeclaration extends ResolvedReferenceTypeDeclaration {
    @Override
    default ResolvedAnnotationDeclaration asAnnotation() {
        return this;
    }

    List<ResolvedAnnotationMemberDeclaration> getAnnotationMembers();

    @Override
    default boolean isAnnotation() {
        return true;
    }

    boolean isInheritable();
}
