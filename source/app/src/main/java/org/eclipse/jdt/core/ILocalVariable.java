package org.eclipse.jdt.core;

public interface ILocalVariable extends IJavaElement, ISourceReference, IAnnotatable {
    IMember getDeclaringMember();

    @Override
    String getElementName();

    int getFlags();

    @Override
    ISourceRange getNameRange();

    ITypeRoot getTypeRoot();

    String getTypeSignature();

    boolean isParameter();
}
