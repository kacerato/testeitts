package org.eclipse.jdt.core.dom;

public interface IMemberValuePairBinding extends IBinding {
    IMethodBinding getMethodBinding();

    @Override
    String getName();

    Object getValue();

    boolean isDefault();
}
