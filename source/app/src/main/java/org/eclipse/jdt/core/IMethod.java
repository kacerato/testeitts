package org.eclipse.jdt.core;

public interface IMethod extends IMember, IAnnotatable {
    IMemberValuePair getDefaultValue() throws JavaModelException;

    @Override
    String getElementName();

    String[] getExceptionTypes() throws JavaModelException;

    String getKey();

    int getNumberOfParameters();

    String[] getParameterNames() throws JavaModelException;

    String[] getParameterTypes();

    ILocalVariable[] getParameters() throws JavaModelException;

    String[] getRawParameterNames() throws JavaModelException;

    String getReturnType() throws JavaModelException;

    String getSignature() throws JavaModelException;

    ITypeParameter getTypeParameter(String str);

    String[] getTypeParameterSignatures() throws JavaModelException;

    ITypeParameter[] getTypeParameters() throws JavaModelException;

    boolean isConstructor() throws JavaModelException;

    boolean isLambdaMethod();

    boolean isMainMethod() throws JavaModelException;

    boolean isResolved();

    boolean isSimilar(IMethod iMethod);
}
