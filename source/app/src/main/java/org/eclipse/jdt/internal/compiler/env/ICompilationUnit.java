package org.eclipse.jdt.internal.compiler.env;

import org.eclipse.jdt.internal.compiler.lookup.LookupEnvironment;
import org.eclipse.jdt.internal.compiler.lookup.ModuleBinding;

public interface ICompilationUnit extends IDependent {
    char[] getContents();

    default String getDestinationPath() {
        return null;
    }

    char[] getMainTypeName();

    default char[] getModuleName() {
        return null;
    }

    char[][] getPackageName();

    default boolean ignoreOptionalProblems() {
        return false;
    }

    default ModuleBinding module(LookupEnvironment lookupEnvironment) {
        return lookupEnvironment.getModule(getModuleName());
    }
}
