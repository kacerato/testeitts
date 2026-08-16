package org.eclipse.jdt.core.dom;

public interface IMethodBinding extends IBinding {
    ITypeBinding getDeclaredReceiverType();

    ITypeBinding getDeclaringClass();

    IBinding getDeclaringMember();

    Object getDefaultValue();

    ITypeBinding[] getExceptionTypes();

    IMethodBinding getMethodDeclaration();

    @Override
    String getName();

    IAnnotationBinding[] getParameterAnnotations(int i10);

    ITypeBinding[] getParameterTypes();

    ITypeBinding getReturnType();

    IVariableBinding[] getSyntheticOuterLocals();

    ITypeBinding[] getTypeArguments();

    ITypeBinding[] getTypeParameters();

    boolean isAnnotationMember();

    boolean isConstructor();

    boolean isDefaultConstructor();

    boolean isGenericMethod();

    boolean isParameterizedMethod();

    boolean isRawMethod();

    boolean isSubsignature(IMethodBinding iMethodBinding);

    boolean isVarargs();

    boolean overrides(IMethodBinding iMethodBinding);
}
