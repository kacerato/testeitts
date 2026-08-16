package org.eclipse.jdt.internal.core;

import java.io.File;
import org.eclipse.core.resources.IFolder;
import org.eclipse.core.resources.IResource;
import org.eclipse.core.runtime.IPath;
import org.eclipse.jdt.core.JavaModelException;

public class ExternalPackageFragmentRoot extends PackageFragmentRoot {
    protected final IPath externalPath;

    public ExternalPackageFragmentRoot(IPath iPath, JavaProject javaProject) {
        super(null, javaProject);
        this.externalPath = iPath;
    }

    @Override
    public int determineKind(IResource iResource) {
        return 2;
    }

    @Override
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof ExternalPackageFragmentRoot) {
            return this.externalPath.equals(((ExternalPackageFragmentRoot) obj).externalPath);
        }
        return false;
    }

    @Override
    public String getElementName() {
        return this.externalPath.lastSegment();
    }

    @Override
    public int getKind() {
        return 2;
    }

    @Override
    public IPath getPath() {
        return this.externalPath;
    }

    @Override
    public IResource getUnderlyingResource() throws JavaModelException {
        return null;
    }

    @Override
    public int hashCode() {
        return this.externalPath.hashCode();
    }

    @Override
    public int internalKind() throws JavaModelException {
        return 2;
    }

    @Override
    public boolean isExternal() {
        return true;
    }

    @Override
    public IResource resource(PackageFragmentRoot packageFragmentRoot) {
        if (this.resource != null) {
            return super.resource(packageFragmentRoot);
        }
        IFolder folder = JavaModelManager.getExternalManager().getFolder(this.externalPath);
        this.resource = folder;
        return folder;
    }

    @Override
    public boolean resourceExists(IResource iResource) {
        IPath location;
        File file;
        if (iResource == null || (location = iResource.getLocation()) == null || (file = location.toFile()) == null) {
            return false;
        }
        return file.exists();
    }

    @Override
    public void toStringAncestors(StringBuffer stringBuffer) {
    }

    public ExternalPackageFragmentRoot(IResource iResource, IPath iPath, JavaProject javaProject) {
        super(iResource, javaProject);
        this.externalPath = iPath == null ? iResource.getLocation() : iPath;
    }
}
