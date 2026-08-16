package org.eclipse.jdt.core.util;

public interface IFieldInfo {
    int getAccessFlags();

    int getAttributeCount();

    IClassFileAttribute[] getAttributes();

    IConstantValueAttribute getConstantValueAttribute();

    char[] getDescriptor();

    int getDescriptorIndex();

    char[] getName();

    int getNameIndex();

    boolean hasConstantValueAttribute();

    boolean isDeprecated();

    boolean isSynthetic();
}
