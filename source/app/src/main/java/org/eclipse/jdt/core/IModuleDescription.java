package org.eclipse.jdt.core;

public interface IModuleDescription extends IMember, IAnnotatable {
    String[] getExportedPackageNames(IModuleDescription iModuleDescription) throws JavaModelException;

    String[] getOpenedPackageNames(IModuleDescription iModuleDescription) throws JavaModelException;

    String[] getProvidedServiceNames() throws JavaModelException;

    String[] getRequiredModuleNames() throws JavaModelException;

    String[] getUsedServiceNames() throws JavaModelException;

    default boolean isAutoModule() {
        return false;
    }
}
