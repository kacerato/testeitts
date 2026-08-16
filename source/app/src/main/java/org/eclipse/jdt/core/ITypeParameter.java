package org.eclipse.jdt.core;

public interface ITypeParameter extends IJavaElement, ISourceReference {
    String[] getBounds() throws JavaModelException;

    String[] getBoundsSignatures() throws JavaModelException;

    IMember getDeclaringMember();

    ITypeRoot getTypeRoot();
}
