package org.eclipse.jdt.core.util;

public interface IConstantPoolEntry {
    int getClassIndex();

    char[] getClassInfoName();

    int getClassInfoNameIndex();

    char[] getClassName();

    double getDoubleValue();

    char[] getFieldDescriptor();

    char[] getFieldName();

    float getFloatValue();

    int getIntegerValue();

    int getKind();

    long getLongValue();

    char[] getMethodDescriptor();

    char[] getMethodName();

    int getNameAndTypeIndex();

    int getNameAndTypeInfoDescriptorIndex();

    int getNameAndTypeInfoNameIndex();

    int getStringIndex();

    String getStringValue();

    int getUtf8Length();

    char[] getUtf8Value();
}
