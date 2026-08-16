package org.eclipse.jdt.internal.compiler.env;

public interface IGenericMethod {
    char[][] getArgumentNames();

    int getModifiers();

    boolean isConstructor();
}
