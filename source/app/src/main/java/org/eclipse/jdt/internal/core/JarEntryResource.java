package org.eclipse.jdt.internal.core;

import java.util.zip.ZipFile;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.IPath;
import org.eclipse.core.runtime.Path;
import org.eclipse.core.runtime.PlatformObject;
import org.eclipse.jdt.core.IJarEntryResource;
import org.eclipse.jdt.core.IPackageFragment;
import org.eclipse.jdt.core.IPackageFragmentRoot;
import org.eclipse.jdt.internal.core.util.Util;

public abstract class JarEntryResource extends PlatformObject implements IJarEntryResource {
    protected Object parent;
    protected String simpleName;

    public JarEntryResource(String str) {
        this.simpleName = str;
    }

    public abstract JarEntryResource clone(Object obj);

    public boolean equals(Object obj) {
        if (!(obj instanceof JarEntryResource)) {
            return false;
        }
        JarEntryResource jarEntryResource = (JarEntryResource) obj;
        return this.parent.equals(jarEntryResource.parent) && this.simpleName.equals(jarEntryResource.simpleName);
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
            str = String.valueOf(((JarEntryDirectory) obj).getEntryName()) + '/';
        }
        return String.valueOf(str) + this.simpleName;
    }

    @Override
    public IPath getFullPath() {
        return new Path(getEntryName()).makeAbsolute();
    }

    public String getName() {
        return this.simpleName;
    }

    @Override
    public IPackageFragmentRoot getPackageFragmentRoot() {
        Object obj = this.parent;
        return obj instanceof IPackageFragment ? (IPackageFragmentRoot) ((IPackageFragment) obj).getParent() : obj instanceof IPackageFragmentRoot ? (IPackageFragmentRoot) obj : ((JarEntryDirectory) obj).getPackageFragmentRoot();
    }

    @Override
    public Object getParent() {
        return this.parent;
    }

    public ZipFile getZipFile() throws CoreException {
        Object obj = this.parent;
        return obj instanceof IPackageFragment ? ((JarPackageFragmentRoot) ((IPackageFragment) obj).getParent()).getJar() : obj instanceof JarPackageFragmentRoot ? ((JarPackageFragmentRoot) obj).getJar() : ((JarEntryDirectory) obj).getZipFile();
    }

    public int hashCode() {
        return Util.combineHashCodes(this.simpleName.hashCode(), this.parent.hashCode());
    }

    public boolean isReadOnly() {
        return true;
    }

    public void setParent(Object obj) {
        this.parent = obj;
    }
}
