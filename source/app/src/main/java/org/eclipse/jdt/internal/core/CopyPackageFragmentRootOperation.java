package org.eclipse.jdt.internal.core;

import org.eclipse.core.resources.IFolder;
import org.eclipse.core.resources.IProject;
import org.eclipse.core.resources.IResource;
import org.eclipse.core.resources.IResourceProxy;
import org.eclipse.core.resources.IResourceProxyVisitor;
import org.eclipse.core.resources.IWorkspaceRoot;
import org.eclipse.core.resources.ResourcesPlugin;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.IPath;
import org.eclipse.jdt.core.IClasspathEntry;
import org.eclipse.jdt.core.IJavaModelStatus;
import org.eclipse.jdt.core.IJavaModelStatusConstants;
import org.eclipse.jdt.core.IJavaProject;
import org.eclipse.jdt.core.IPackageFragmentRoot;
import org.eclipse.jdt.core.JavaCore;
import org.eclipse.jdt.core.JavaModelException;
import org.eclipse.jdt.internal.core.ClasspathEntry;
import org.eclipse.jdt.internal.core.util.Messages;

public class CopyPackageFragmentRootOperation extends JavaModelOperation {
    IPath destination;
    IClasspathEntry sibling;
    int updateModelFlags;
    int updateResourceFlags;

    public CopyPackageFragmentRootOperation(IPackageFragmentRoot iPackageFragmentRoot, IPath iPath, int i10, int i11, IClasspathEntry iClasspathEntry) {
        super(iPackageFragmentRoot);
        this.destination = iPath;
        this.updateResourceFlags = i10;
        this.updateModelFlags = i11;
        this.sibling = iClasspathEntry;
    }

    public void addEntryToClasspath(IClasspathEntry iClasspathEntry, IWorkspaceRoot iWorkspaceRoot) throws JavaModelException {
        int i10;
        IJavaProject create = JavaCore.create(iWorkspaceRoot.getProject(this.destination.segment(0)));
        IClasspathEntry[] rawClasspath = create.getRawClasspath();
        int length = rawClasspath.length;
        if ((this.updateModelFlags & 16) != 0) {
            for (int i11 = 0; i11 < length; i11++) {
                if (this.destination.equals(rawClasspath[i11].getPath())) {
                    IClasspathEntry[] iClasspathEntryArr = new IClasspathEntry[length];
                    System.arraycopy(rawClasspath, 0, iClasspathEntryArr, 0, length);
                    iClasspathEntryArr[i11] = copy(iClasspathEntry);
                    create.setRawClasspath(iClasspathEntryArr, this.progressMonitor);
                    return;
                }
            }
        }
        if (this.sibling == null) {
            i10 = length;
        } else {
            i10 = 0;
            while (true) {
                if (i10 >= length) {
                    i10 = -1;
                    break;
                } else if (this.sibling.equals(rawClasspath[i10])) {
                    break;
                } else {
                    i10++;
                }
            }
        }
        if (i10 == -1) {
            throw new JavaModelException((IJavaModelStatus) new JavaModelStatus(IJavaModelStatusConstants.INVALID_SIBLING, this.sibling.toString()));
        }
        IClasspathEntry[] iClasspathEntryArr2 = new IClasspathEntry[length + 1];
        if (i10 != 0) {
            System.arraycopy(rawClasspath, 0, iClasspathEntryArr2, 0, i10);
        }
        if (i10 != length) {
            System.arraycopy(rawClasspath, i10, iClasspathEntryArr2, i10 + 1, length - i10);
        }
        iClasspathEntryArr2[i10] = copy(iClasspathEntry);
        create.setRawClasspath(iClasspathEntryArr2, this.progressMonitor);
    }

    public IClasspathEntry copy(IClasspathEntry iClasspathEntry) throws JavaModelException {
        int entryKind = iClasspathEntry.getEntryKind();
        if (entryKind == 1) {
            try {
                return JavaCore.newLibraryEntry(this.destination, iClasspathEntry.getSourceAttachmentPath(), iClasspathEntry.getSourceAttachmentRootPath(), iClasspathEntry.getAccessRules(), iClasspathEntry.getExtraAttributes(), iClasspathEntry.isExported());
            } catch (ClasspathEntry.AssertionFailedException e10) {
                throw new JavaModelException((IJavaModelStatus) new JavaModelStatus(IJavaModelStatusConstants.INVALID_PATH, e10.getMessage()));
            }
        }
        if (entryKind == 2) {
            return JavaCore.newProjectEntry(iClasspathEntry.getPath(), iClasspathEntry.getAccessRules(), iClasspathEntry.combineAccessRules(), iClasspathEntry.getExtraAttributes(), iClasspathEntry.isExported());
        }
        if (entryKind == 3) {
            return JavaCore.newSourceEntry(this.destination, iClasspathEntry.getInclusionPatterns(), iClasspathEntry.getExclusionPatterns(), iClasspathEntry.getOutputLocation(), iClasspathEntry.getExtraAttributes());
        }
        if (entryKind != 4) {
            if (entryKind == 5) {
                return JavaCore.newContainerEntry(iClasspathEntry.getPath(), iClasspathEntry.getAccessRules(), iClasspathEntry.getExtraAttributes(), iClasspathEntry.isExported());
            }
            throw new JavaModelException((IJavaModelStatus) new JavaModelStatus(969, getElementToProcess()));
        }
        try {
            return JavaCore.newVariableEntry(iClasspathEntry.getPath(), iClasspathEntry.getSourceAttachmentPath(), iClasspathEntry.getSourceAttachmentRootPath(), iClasspathEntry.getAccessRules(), iClasspathEntry.getExtraAttributes(), iClasspathEntry.isExported());
        } catch (ClasspathEntry.AssertionFailedException e11) {
            throw new JavaModelException((IJavaModelStatus) new JavaModelStatus(IJavaModelStatusConstants.INVALID_PATH, e11.getMessage()));
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void copyResource(IPackageFragmentRoot iPackageFragmentRoot, IClasspathEntry iClasspathEntry, final IWorkspaceRoot iWorkspaceRoot) throws JavaModelException {
        char[][] fullExclusionPatternChars = ((ClasspathEntry) iClasspathEntry).fullExclusionPatternChars();
        IResource resource = ((JavaElement) iPackageFragmentRoot).resource();
        if (iPackageFragmentRoot.getKind() == 2 || fullExclusionPatternChars == null) {
            try {
                if ((this.updateModelFlags & 16) != 0) {
                    if (iClasspathEntry.getPath().equals(this.destination)) {
                        return;
                    }
                    IResource findMember = iWorkspaceRoot.findMember(this.destination);
                    if (findMember != null) {
                        findMember.delete(this.updateResourceFlags, this.progressMonitor);
                    }
                }
                resource.copy(this.destination, this.updateResourceFlags, this.progressMonitor);
            } catch (CoreException e10) {
                throw new JavaModelException(e10);
            }
        } else {
            final int segmentCount = iClasspathEntry.getPath().segmentCount();
            final IFolder folder = iWorkspaceRoot.getFolder(this.destination);
            final IPath[] nestedFolders = getNestedFolders(iPackageFragmentRoot);
            try {
                resource.accept(new IResourceProxyVisitor() {
                    public boolean visit(IResourceProxy iResourceProxy) throws CoreException {
                        IResource findMember2;
                        IResource findMember3;
                        if (iResourceProxy.getType() != 2) {
                            IPath append = CopyPackageFragmentRootOperation.this.destination.append(iResourceProxy.requestFullPath().removeFirstSegments(segmentCount));
                            if ((CopyPackageFragmentRootOperation.this.updateModelFlags & 16) != 0 && (findMember2 = iWorkspaceRoot.findMember(append)) != null) {
                                CopyPackageFragmentRootOperation copyPackageFragmentRootOperation = CopyPackageFragmentRootOperation.this;
                                findMember2.delete(copyPackageFragmentRootOperation.updateResourceFlags, copyPackageFragmentRootOperation.progressMonitor);
                            }
                            IResource requestResource = iResourceProxy.requestResource();
                            CopyPackageFragmentRootOperation copyPackageFragmentRootOperation2 = CopyPackageFragmentRootOperation.this;
                            requestResource.copy(append, copyPackageFragmentRootOperation2.updateResourceFlags, copyPackageFragmentRootOperation2.progressMonitor);
                            return false;
                        }
                        IPath requestFullPath = iResourceProxy.requestFullPath();
                        if (CopyPackageFragmentRootOperation.this.prefixesOneOf(requestFullPath, nestedFolders)) {
                            if (CopyPackageFragmentRootOperation.this.equalsOneOf(requestFullPath, nestedFolders)) {
                                return false;
                            }
                            IFolder folder2 = folder.getFolder(requestFullPath.removeFirstSegments(segmentCount));
                            if ((CopyPackageFragmentRootOperation.this.updateModelFlags & 16) != 0 && folder2.exists()) {
                                return true;
                            }
                            CopyPackageFragmentRootOperation copyPackageFragmentRootOperation3 = CopyPackageFragmentRootOperation.this;
                            folder2.create(copyPackageFragmentRootOperation3.updateResourceFlags, true, copyPackageFragmentRootOperation3.progressMonitor);
                            return true;
                        }
                        IPath append2 = CopyPackageFragmentRootOperation.this.destination.append(requestFullPath.removeFirstSegments(segmentCount));
                        if ((CopyPackageFragmentRootOperation.this.updateModelFlags & 16) != 0 && (findMember3 = iWorkspaceRoot.findMember(append2)) != null) {
                            CopyPackageFragmentRootOperation copyPackageFragmentRootOperation4 = CopyPackageFragmentRootOperation.this;
                            findMember3.delete(copyPackageFragmentRootOperation4.updateResourceFlags, copyPackageFragmentRootOperation4.progressMonitor);
                        }
                        IResource requestResource2 = iResourceProxy.requestResource();
                        CopyPackageFragmentRootOperation copyPackageFragmentRootOperation5 = CopyPackageFragmentRootOperation.this;
                        requestResource2.copy(append2, copyPackageFragmentRootOperation5.updateResourceFlags, copyPackageFragmentRootOperation5.progressMonitor);
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
        IWorkspaceRoot root = ResourcesPlugin.getWorkspace().getRoot();
        if (!iPackageFragmentRoot.isExternal() && (this.updateModelFlags & 1) == 0) {
            copyResource(iPackageFragmentRoot, rawClasspathEntry, root);
        }
        if ((this.updateModelFlags & 8) != 0) {
            addEntryToClasspath(rawClasspathEntry, root);
        }
    }

    @Override
    public IJavaModelStatus verify() {
        IJavaModelStatus verify = super.verify();
        if (!verify.isOK()) {
            return verify;
        }
        PackageFragmentRoot packageFragmentRoot = (PackageFragmentRoot) getElementToProcess();
        if (packageFragmentRoot == null || !packageFragmentRoot.exists()) {
            return new JavaModelStatus(969, packageFragmentRoot);
        }
        IResource resource = packageFragmentRoot.resource();
        if ((resource instanceof IFolder) && resource.isLinked()) {
            return new JavaModelStatus(IJavaModelStatusConstants.INVALID_RESOURCE, packageFragmentRoot);
        }
        if ((this.updateModelFlags & 8) != 0) {
            boolean z10 = false;
            IProject project = ResourcesPlugin.getWorkspace().getRoot().getProject(this.destination.segment(0));
            if (JavaProject.hasJavaNature(project)) {
                try {
                    IClasspathEntry[] rawClasspath = JavaCore.create(project).getRawClasspath();
                    int length = rawClasspath.length;
                    int i10 = 0;
                    boolean z11 = false;
                    while (true) {
                        if (i10 >= length) {
                            break;
                        }
                        IClasspathEntry iClasspathEntry = rawClasspath[i10];
                        if (iClasspathEntry.equals(this.sibling)) {
                            z10 = true;
                            break;
                        }
                        if (iClasspathEntry.getPath().equals(this.destination)) {
                            z11 = true;
                        }
                        i10++;
                    }
                    if (this.sibling != null && !z10) {
                        return new JavaModelStatus(IJavaModelStatusConstants.INVALID_SIBLING, this.sibling.toString());
                    }
                    if (z11 && (this.updateModelFlags & 16) == 0) {
                        return new JavaModelStatus(977, Messages.bind(Messages.status_nameCollision, (Object[]) new String[]{this.destination.toString()}));
                    }
                } catch (JavaModelException e10) {
                    return e10.getJavaModelStatus();
                }
            }
        }
        return JavaModelStatus.VERIFIED_OK;
    }
}
