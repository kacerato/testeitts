package org.eclipse.jdt.core;

public interface IMember extends IJavaElement, ISourceReference, ISourceManipulation, IParent {
    String[] getCategories() throws JavaModelException;

    IClassFile getClassFile();

    ICompilationUnit getCompilationUnit();

    IType getDeclaringType();

    int getFlags() throws JavaModelException;

    ISourceRange getJavadocRange() throws JavaModelException;

    int getOccurrenceCount();

    IType getType(String str, int i10);

    ITypeRoot getTypeRoot();

    boolean isBinary();
}
