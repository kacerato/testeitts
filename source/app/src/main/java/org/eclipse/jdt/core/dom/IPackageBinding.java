package org.eclipse.jdt.core.dom;

public interface IPackageBinding extends IBinding {
    default IModuleBinding getModule() {
        return null;
    }

    @Override
    String getName();

    String[] getNameComponents();

    boolean isUnnamed();
}
