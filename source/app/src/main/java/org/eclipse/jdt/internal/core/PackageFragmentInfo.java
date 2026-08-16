package org.eclipse.jdt.internal.core;

import org.eclipse.core.resources.IContainer;
import org.eclipse.core.resources.IResource;
import org.eclipse.jdt.core.JavaModelException;

class PackageFragmentInfo extends OpenableElementInfo {
    public PackageFragmentInfo() {
        this.nonJavaResources = null;
    }

    public boolean containsJavaResources() {
        return this.children.length != 0;
    }

    public Object[] getNonJavaResources(IResource iResource, PackageFragmentRoot packageFragmentRoot) {
        Object[] objArr;
        Object[] objArr2 = this.nonJavaResources;
        if (objArr2 == null) {
            try {
                objArr = PackageFragmentRootInfo.computeFolderNonJavaResources(packageFragmentRoot, (IContainer) iResource, packageFragmentRoot.fullInclusionPatternChars(), packageFragmentRoot.fullExclusionPatternChars());
            } catch (JavaModelException unused) {
                objArr = JavaElementInfo.NO_NON_JAVA_RESOURCES;
            }
            objArr2 = objArr;
            this.nonJavaResources = objArr2;
        }
        return objArr2;
    }
}
