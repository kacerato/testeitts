package org.eclipse.jdt.core;

public interface IImportContainer extends IJavaElement, IParent, ISourceReference {
    IImportDeclaration getImport(String str);
}
