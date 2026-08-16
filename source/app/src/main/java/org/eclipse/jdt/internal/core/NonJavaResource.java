package org.eclipse.jdt.internal.core;

import java.io.InputStream;
import org.eclipse.core.resources.IContainer;
import org.eclipse.core.resources.IFile;
import org.eclipse.core.resources.IResource;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.IPath;
import org.eclipse.core.runtime.Path;
import org.eclipse.core.runtime.PlatformObject;
import org.eclipse.jdt.core.IJarEntryResource;
import org.eclipse.jdt.core.IPackageFragment;
import org.eclipse.jdt.core.IPackageFragmentRoot;
import org.eclipse.jdt.internal.core.util.Util;

public class NonJavaResource extends PlatformObject implements IJarEntryResource {
    private static final IJarEntryResource[] NO_CHILDREN = new IJarEntryResource[0];
    protected Object parent;
    protected IResource resource;

    public NonJavaResource(Object obj, IResource iResource) {
        this.parent = obj;
        this.resource = iResource;
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof NonJavaResource)) {
            return false;
        }
        NonJavaResource nonJavaResource = (NonJavaResource) obj;
        return this.parent.equals(nonJavaResource.parent) && this.resource.equals(nonJavaResource.resource);
    }

    @Override
    public IJarEntryResource[] getChildren() {
        IContainer iContainer = this.resource;
        if (!(iContainer instanceof IContainer)) {
            return NO_CHILDREN;
        }
        try {
            IResource[] members = iContainer.members();
            int length = members.length;
            if (length == 0) {
                return NO_CHILDREN;
            }
            IJarEntryResource[] iJarEntryResourceArr = new IJarEntryResource[length];
            for (int i10 = 0; i10 < length; i10++) {
                iJarEntryResourceArr[i10] = new NonJavaResource(this, members[i10]);
            }
            return iJarEntryResourceArr;
        } catch (CoreException e10) {
            Util.log((Throwable) e10, "Could not retrieve children of " + ((Object) this.resource.getFullPath()));
            return NO_CHILDREN;
        }
    }

    public InputStream getContents() throws CoreException {
        IFile iFile = this.resource;
        if (iFile instanceof IFile) {
            return iFile.getContents();
        }
        return null;
    }

    public String getEntryName() {
        Object obj = this.parent;
        String str = "";
        if (obj instanceof IPackageFragment) {
            String elementName = ((IPackageFragment) obj).getElementName();
            if (elementName.length() != 0) {
                str = String.valueOf(elementName.replace('.', '/')) + '/';
            }
        } else if (!(obj instanceof IPackageFragmentRoot)) {
            str = String.valueOf(((NonJavaResource) obj).getEntryName()) + '/';
        }
        return String.valueOf(str) + getName();
    }

    @Override
    public IPath getFullPath() {
        return new Path(getEntryName()).makeAbsolute();
    }

    public String getName() {
        return this.resource.getName();
    }

    @Override
    public IPackageFragmentRoot getPackageFragmentRoot() {
        Object obj = this.parent;
        return obj instanceof IPackageFragment ? (IPackageFragmentRoot) ((IPackageFragment) obj).getParent() : obj instanceof IPackageFragmentRoot ? (IPackageFragmentRoot) obj : ((NonJavaResource) obj).getPackageFragmentRoot();
    }

    @Override
    public Object getParent() {
        return this.parent;
    }

    public int hashCode() {
        return Util.combineHashCodes(this.resource.hashCode(), this.parent.hashCode());
    }

    @Override
    public boolean isFile() {
        return this.resource instanceof IFile;
    }

    public boolean isReadOnly() {
        return true;
    }

    public String toString() {
        return "NonJavaResource[" + getEntryName() + "]";
    }
}
