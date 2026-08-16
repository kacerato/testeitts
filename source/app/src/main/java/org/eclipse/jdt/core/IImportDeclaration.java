package org.eclipse.jdt.core;

public interface IImportDeclaration extends IJavaElement, ISourceReference, ISourceManipulation {
    @Override
    String getElementName();

    int getFlags() throws JavaModelException;

    boolean isOnDemand();
}
