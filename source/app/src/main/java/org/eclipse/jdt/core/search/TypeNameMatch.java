package org.eclipse.jdt.core.search;

import org.eclipse.jdt.core.IPackageFragmentRoot;
import org.eclipse.jdt.core.IType;

public abstract class TypeNameMatch {
    public abstract int getAccessibility();

    public String getFullyQualifiedName() {
        return getType().getFullyQualifiedName('.');
    }

    public abstract int getModifiers();

    public IPackageFragmentRoot getPackageFragmentRoot() {
        return (IPackageFragmentRoot) getType().getAncestor(3);
    }

    public String getPackageName() {
        return getType().getPackageFragment().getElementName();
    }

    public String getSimpleTypeName() {
        return getType().getElementName();
    }

    public abstract IType getType();

    public String getTypeContainerName() {
        IType declaringType = getType().getDeclaringType();
        return declaringType != null ? declaringType.getFullyQualifiedName('.') : getType().getPackageFragment().getElementName();
    }

    public String getTypeQualifiedName() {
        return getType().getTypeQualifiedName('.');
    }
}
