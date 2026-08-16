package org.eclipse.jdt.core.util;

public interface IMethodInfo {
    int getAccessFlags();

    int getAttributeCount();

    IClassFileAttribute[] getAttributes();

    ICodeAttribute getCodeAttribute();

    char[] getDescriptor();

    int getDescriptorIndex();

    IExceptionAttribute getExceptionAttribute();

    char[] getName();

    int getNameIndex();

    boolean isClinit();

    boolean isConstructor();

    boolean isDeprecated();

    boolean isSynthetic();
}
