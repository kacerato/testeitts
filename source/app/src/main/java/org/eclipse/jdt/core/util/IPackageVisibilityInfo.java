package org.eclipse.jdt.core.util;

public interface IPackageVisibilityInfo {
    int getFlags();

    int getIndex();

    char[] getPackageName();

    int[] getTargetModuleIndices();

    char[][] getTargetModuleNames();

    int getTargetsCount();
}
