package org.eclipse.jdt.core.util;

public interface IEnclosingMethodAttribute extends IClassFileAttribute {
    char[] getEnclosingClass();

    int getEnclosingClassIndex();

    char[] getMethodDescriptor();

    int getMethodDescriptorIndex();

    char[] getMethodName();

    int getMethodNameAndTypeIndex();

    int getMethodNameIndex();
}
