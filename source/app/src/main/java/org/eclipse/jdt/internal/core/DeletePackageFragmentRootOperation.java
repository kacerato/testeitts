package org.eclipse.jdt.internal.core;

import java.util.HashMap;
import java.util.Map;
import org.eclipse.core.resources.IFolder;
import org.eclipse.core.resources.IResource;
import org.eclipse.core.resources.IResourceProxy;
import org.eclipse.core.resources.IResourceProxyVisitor;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.IPath;
import org.eclipse.jdt.core.IClasspathEntry;
import org.eclipse.jdt.core.IJavaElement;
import org.eclipse.jdt.core.IJavaModelStatus;
import org.eclipse.jdt.core.IJavaModelStatusConstants;
import org.eclipse.jdt.core.IJavaProject;
import org.eclipse.jdt.core.IPackageFragmentRoot;
import org.eclipse.jdt.core.JavaModelException;

public class DeletePackageFragmentRootOperation extends JavaModelOperation {
    int updateModelFlags;
    int updateResourceFlags;

    public DeletePackageFragmentRootOperation(IPackageFragmentRoot iPackageFragmentRoot, int i10, int i11) {
        super(iPackageFragmentRoot);
        this.updateResourceFlags = i10;
        this.updateModelFlags = i11;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void deleteResource(IPackageFragmentRoot iPackageFragmentRoot, IClasspathEntry iClasspathEntry) throws JavaModelException {
        char[][] fullExclusionPatternChars = ((ClasspathEntry) iClasspathEntry).fullExclusionPatternChars();
        IResource resource = ((JavaElement) iPackageFragmentRoot).resource();
        if (iClasspathEntry.getEntryKind() != 3 || fullExclusionPatternChars == null) {
            try {
                resource.delete(this.updateResourceFlags, this.progressMonitor);
            } catch (CoreException e10) {
                throw new JavaModelException(e10);
            }
        } else {
            final IPath[] nestedFolders = getNestedFolders(iPackageFragmentRoot);
            try {
                resource.accept(new IResourceProxyVisitor() {
                    public boolean visit(IResourceProxy iResourceProxy) throws CoreException {
                        if (iResourceProxy.getType() != 2) {
                            IResource requestResource = iResourceProxy.requestResource();
                            DeletePackageFragmentRootOperation deletePackageFragmentRootOperation = DeletePackageFragmentRootOperation.this;
                            requestResource.delete(deletePackageFragmentRootOperation.updateResourceFlags, deletePackageFragmentRootOperation.progressMonitor);
                            return false;
                        }
                        if (DeletePackageFragmentRootOperation.this.prefixesOneOf(iResourceProxy.requestFullPath(), nestedFolders)) {
                            return !DeletePackageFragmentRootOperation.this.equalsOneOf(r0, nestedFolders);
                        }
                        IResource requestResource2 = iResourceProxy.requestResource();
                        DeletePackageFragmentRootOperation deletePackageFragmentRootOperation2 = DeletePackageFragmentRootOperation.this;
                        requestResource2.delete(deletePackageFragmentRootOperation2.updateResourceFlags, deletePackageFragmentRootOperation2.progressMonitor);
                        return false;
                    }
                }, 0);
            } catch (CoreException e11) {
                throw new JavaModelException(e11);
            }
        }
        JavaModelOperation.setAttribute(JavaModelOperation.HAS_MODIFIED_RESOURCE_ATTR, "true");
    }

    @Override
    public void executeOperation() throws JavaModelException {
        IPackageFragmentRoot iPackageFragmentRoot = (IPackageFragmentRoot) getElementToProcess();
        IClasspathEntry rawClasspathEntry = iPackageFragmentRoot.getRawClasspathEntry();
        DeltaProcessor deltaProcessor = JavaModelManager.getJavaModelManager().getDeltaProcessor();
        if (deltaProcessor.oldRoots == null) {
            deltaProcessor.oldRoots = new HashMap();
        }
        if ((this.updateModelFlags & 2) != 0) {
            updateProjectClasspath(rawClasspathEntry.getPath(), iPackageFragmentRoot.getJavaProject(), deltaProcessor.oldRoots);
        }
        if ((this.updateModelFlags & 4) != 0) {
            updateReferringProjectClasspaths(rawClasspathEntry.getPath(), iPackageFragmentRoot.getJavaProject(), deltaProcessor.oldRoots);
        }
        if (iPackageFragmentRoot.isExternal() || (this.updateModelFlags & 1) != 0) {
            return;
        }
        deleteResource(iPackageFragmentRoot, rawClasspathEntry);
    }

    public void updateProjectClasspath(IPath iPath, IJavaProject iJavaProject, Map map) throws JavaModelException {
        map.put(iJavaProject, iJavaProject.getPackageFragmentRoots());
        IClasspathEntry[] rawClasspath = iJavaProject.getRawClasspath();
        int length = rawClasspath.length;
        IClasspathEntry[] iClasspathEntryArr = null;
        int i10 = -1;
        for (int i11 = 0; i11 < length; i11++) {
            IClasspathEntry iClasspathEntry = rawClasspath[i11];
            if (iPath.equals(iClasspathEntry.getPath())) {
                if (iClasspathEntryArr == null) {
                    iClasspathEntryArr = new IClasspathEntry[length - 1];
                    System.arraycopy(rawClasspath, 0, iClasspathEntryArr, 0, i11);
                    i10 = i11;
                }
            } else if (iClasspathEntryArr != null) {
                iClasspathEntryArr[i10] = iClasspathEntry;
                i10++;
            }
        }
        if (iClasspathEntryArr != null) {
            if (i10 < iClasspathEntryArr.length) {
                IClasspathEntry[] iClasspathEntryArr2 = new IClasspathEntry[i10];
                System.arraycopy(iClasspathEntryArr, 0, iClasspathEntryArr2, 0, i10);
                iClasspathEntryArr = iClasspathEntryArr2;
            }
            iJavaProject.setRawClasspath(iClasspathEntryArr, this.progressMonitor);
        }
    }

    public void updateReferringProjectClasspaths(IPath iPath, IJavaProject iJavaProject, Map map) throws JavaModelException {
        for (IJavaProject iJavaProject2 : getJavaModel().getJavaProjects()) {
            if (!iJavaProject2.equals(iJavaProject)) {
                updateProjectClasspath(iPath, iJavaProject2, map);
            }
        }
    }

    @Override
    public IJavaModelStatus verify() {
        IJavaModelStatus verify = super.verify();
        if (!verify.isOK()) {
            return verify;
        }
        IJavaElement elementToProcess = getElementToProcess();
        if (elementToProcess == null || !elementToProcess.exists()) {
            return new JavaModelStatus(969, elementToProcess);
        }
        IResource resource = ((JavaElement) elementToProcess).resource();
        return ((resource instanceof IFolder) && resource.isLinked()) ? new JavaModelStatus(IJavaModelStatusConstants.INVALID_RESOURCE, elementToProcess) : JavaModelStatus.VERIFIED_OK;
    }
}
