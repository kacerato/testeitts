package org.eclipse.jdt.internal.compiler.env;

import org.eclipse.jdt.core.compiler.CharOperation;

public interface IModulePathEntry {
    default IModule getModule() {
        return null;
    }

    char[][] getModulesDeclaringPackage(String str, String str2);

    boolean hasCompilationUnit(String str, String str2);

    default boolean isAutomaticModule() {
        return false;
    }

    default boolean servesModule(char[] cArr) {
        return getModule(cArr) != null;
    }

    default IModule getModule(char[] cArr) {
        IModule module = getModule();
        if (module == null || !CharOperation.equals(cArr, module.name())) {
            return null;
        }
        return module;
    }
}
