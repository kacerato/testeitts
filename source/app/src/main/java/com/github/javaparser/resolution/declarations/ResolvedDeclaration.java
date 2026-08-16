package com.github.javaparser.resolution.declarations;

public interface ResolvedDeclaration extends AssociableToAST {
    default ResolvedEnumConstantDeclaration asEnumConstant() {
        throw new UnsupportedOperationException(String.format("%s is not an EnumConstantDeclaration", this));
    }

    default ResolvedFieldDeclaration asField() {
        throw new UnsupportedOperationException(String.format("%s is not a FieldDeclaration", this));
    }

    default ResolvedMethodDeclaration asMethod() {
        throw new UnsupportedOperationException(String.format("%s is not a MethodDeclaration", this));
    }

    default ResolvedParameterDeclaration asParameter() {
        throw new UnsupportedOperationException(String.format("%s is not a ParameterDeclaration", this));
    }

    default ResolvedTypeDeclaration asType() {
        throw new UnsupportedOperationException(String.format("%s is not a TypeDeclaration", this));
    }

    default ResolvedTypePatternDeclaration asTypePattern() {
        throw new UnsupportedOperationException(String.format("%s is not a Pattern", this));
    }

    String getName();

    default boolean hasName() {
        return true;
    }

    default boolean isEnumConstant() {
        return false;
    }

    default boolean isField() {
        return false;
    }

    default boolean isMethod() {
        return false;
    }

    default boolean isParameter() {
        return false;
    }

    default boolean isType() {
        return false;
    }

    default boolean isTypePattern() {
        return false;
    }

    default boolean isVariable() {
        return false;
    }
}
