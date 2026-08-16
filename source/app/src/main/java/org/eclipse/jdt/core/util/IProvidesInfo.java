package org.eclipse.jdt.core.util;

public interface IProvidesInfo {
    int[] getImplementationIndices();

    char[][] getImplementationNames();

    int getImplementationsCount();

    int getIndex();

    char[] getServiceName();
}
