package org.eclipse.jdt.core.dom;

public interface IVariableBinding extends IBinding {
    Object getConstantValue();

    ITypeBinding getDeclaringClass();

    IMethodBinding getDeclaringMethod();

    @Override
    String getName();

    ITypeBinding getType();

    IVariableBinding getVariableDeclaration();

    int getVariableId();

    boolean isEffectivelyFinal();

    boolean isEnumConstant();

    boolean isField();

    boolean isParameter();
}
