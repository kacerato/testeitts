package com.github.javaparser.resolution.declarations;

public interface ResolvedConstructorDeclaration extends ResolvedMethodLikeDeclaration {
    @Override
    ResolvedReferenceTypeDeclaration declaringType();
}
