package org.eclipse.jdt.core;

public interface IField extends IMember, IAnnotatable {
    Object getConstant() throws JavaModelException;

    @Override
    String getElementName();

    String getKey();

    String getTypeSignature() throws JavaModelException;

    boolean isEnumConstant() throws JavaModelException;

    boolean isResolved();
}
