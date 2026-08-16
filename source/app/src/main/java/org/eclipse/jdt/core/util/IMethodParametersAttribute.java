package org.eclipse.jdt.core.util;

public interface IMethodParametersAttribute extends IClassFileAttribute {
    short getAccessFlags(int i10);

    int getMethodParameterLength();

    char[] getParameterName(int i10);
}
