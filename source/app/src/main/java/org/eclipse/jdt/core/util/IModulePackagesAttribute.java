package org.eclipse.jdt.core.util;

public interface IModulePackagesAttribute extends IClassFileAttribute {
    int[] getPackageIndices();

    char[][] getPackageNames();

    int getPackagesCount();
}
