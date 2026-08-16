package org.eclipse.jdt.core;

public interface IPackageDeclaration extends IJavaElement, ISourceReference, IAnnotatable {
    @Override
    String getElementName();
}
