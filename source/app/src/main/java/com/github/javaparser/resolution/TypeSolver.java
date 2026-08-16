package com.github.javaparser.resolution;

import com.github.javaparser.resolution.declarations.ResolvedReferenceTypeDeclaration;
import com.github.javaparser.resolution.model.SymbolReference;

public interface TypeSolver {
    public static final String JAVA_LANG_OBJECT = Object.class.getCanonicalName();
    public static final String JAVA_LANG_RECORD = "java.lang.Record";

    TypeSolver getParent();

    default TypeSolver getRoot() {
        return getParent() == null ? this : getParent().getRoot();
    }

    default ResolvedReferenceTypeDeclaration getSolvedJavaLangObject() throws UnsolvedSymbolException {
        return solveType(JAVA_LANG_OBJECT);
    }

    default ResolvedReferenceTypeDeclaration getSolvedJavaLangRecord() throws UnsolvedSymbolException {
        return solveType("java.lang.Record");
    }

    default boolean hasType(String name) {
        return tryToSolveType(name).isSolved();
    }

    void setParent(TypeSolver parent);

    default ResolvedReferenceTypeDeclaration solveType(String name) throws UnsolvedSymbolException {
        SymbolReference<ResolvedReferenceTypeDeclaration> tryToSolveType = tryToSolveType(name);
        if (tryToSolveType.isSolved()) {
            return tryToSolveType.getCorrespondingDeclaration();
        }
        throw new UnsolvedSymbolException(name, toString());
    }

    SymbolReference<ResolvedReferenceTypeDeclaration> tryToSolveType(String name);
}
