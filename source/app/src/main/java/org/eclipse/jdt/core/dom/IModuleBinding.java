package org.eclipse.jdt.core.dom;

public interface IModuleBinding extends IBinding {
    IPackageBinding[] getExportedPackages();

    String[] getExportedTo(IPackageBinding iPackageBinding);

    ITypeBinding[] getImplementations(ITypeBinding iTypeBinding);

    @Override
    default int getKind() {
        return 7;
    }

    IPackageBinding[] getOpenedPackages();

    String[] getOpenedTo(IPackageBinding iPackageBinding);

    IModuleBinding[] getRequiredModules();

    ITypeBinding[] getServices();

    ITypeBinding[] getUses();

    boolean isOpen();
}
