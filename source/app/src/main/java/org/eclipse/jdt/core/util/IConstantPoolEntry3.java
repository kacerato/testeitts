package org.eclipse.jdt.core.util;

public interface IConstantPoolEntry3 extends IConstantPoolEntry2 {
    int getModuleIndex();

    char[] getModuleName();

    int getPackageIndex();

    char[] getPackageName();
}
