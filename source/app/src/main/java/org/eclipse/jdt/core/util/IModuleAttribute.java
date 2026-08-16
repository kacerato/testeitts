package org.eclipse.jdt.core.util;

public interface IModuleAttribute extends IClassFileAttribute {
    int getExportsCount();

    IPackageVisibilityInfo[] getExportsInfo();

    int getModuleFlags();

    char[] getModuleName();

    int getModuleNameIndex();

    int getModuleVersionIndex();

    char[] getModuleVersionValue();

    int getOpensCount();

    IPackageVisibilityInfo[] getOpensInfo();

    int getProvidesCount();

    IProvidesInfo[] getProvidesInfo();

    int getRequiresCount();

    IRequiresInfo[] getRequiresInfo();

    char[][] getUsesClassNames();

    int getUsesCount();

    int[] getUsesIndices();
}
