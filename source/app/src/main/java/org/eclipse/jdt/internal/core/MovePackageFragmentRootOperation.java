package org.eclipse.jdt.internal.core;

import org.eclipse.core.resources.IFolder;
import org.eclipse.core.resources.IResource;
import org.eclipse.core.resources.IResourceProxy;
import org.eclipse.core.resources.IResourceProxyVisitor;
import org.eclipse.core.resources.IWorkspaceRoot;
import org.eclipse.core.resources.ResourcesPlugin;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.IPath;
import org.eclipse.jdt.core.IClasspathEntry;
import org.eclipse.jdt.core.IJavaProject;
import org.eclipse.jdt.core.IPackageFragmentRoot;
import org.eclipse.jdt.core.JavaConventions;
import org.eclipse.jdt.core.JavaCore;
import org.eclipse.jdt.core.JavaModelException;

public class MovePackageFragmentRootOperation extends CopyPackageFragmentRootOperation {
    public MovePackageFragmentRootOperation(IPackageFragmentRoot iPackageFragmentRoot, IPath iPath, int i10, int i11, IClasspathEntry iClasspathEntry) {
        super(iPackageFragmentRoot, iPath, i10, i11, iClasspathEntry);
    }

    private IPath[] renamePatterns(IPath iPath, IPath[] iPathArr) {
        int length = iPathArr.length;
        IPath[] iPathArr2 = null;
        int i10 = -1;
        for (int i11 = 0; i11 < length; i11++) {
            IPath iPath2 = iPathArr[i11];
            if (iPath2.equals(iPath)) {
                if (iPathArr2 == null) {
                    iPathArr2 = new IPath[length];
                    System.arraycopy(iPathArr, 0, iPathArr2, 0, i11);
                    i10 = i11;
                }
                IPath removeFirstSegments = this.destination.removeFirstSegments(1);
                if (iPath2.hasTrailingSeparator()) {
                    removeFirstSegments = removeFirstSegments.addTrailingSeparator();
                }
                iPathArr2[i10] = removeFirstSegments;
                i10++;
            }
        }
        return iPathArr2;
    }

    @Override
    public void executeOperation() throws JavaModelException {
        IPackageFragmentRoot iPackageFragmentRoot = (IPackageFragmentRoot) getElementToProcess();
        IClasspathEntry rawClasspathEntry = iPackageFragmentRoot.getRawClasspathEntry();
        IWorkspaceRoot root = ResourcesPlugin.getWorkspace().getRoot();
        if (!iPackageFragmentRoot.isExternal() && (this.updateModelFlags & 1) == 0) {
            moveResource(iPackageFragmentRoot, rawClasspathEntry, root);
        }
        IJavaProject javaProject = iPackageFragmentRoot.getJavaProject();
        if ((this.updateModelFlags & 4) != 0) {
            updateReferringProjectClasspaths(rawClasspathEntry.getPath(), javaProject);
        }
        boolean equals = this.destination.segment(0).equals(javaProject.getElementName());
        int i10 = this.updateModelFlags;
        boolean z10 = (i10 & 2) != 0;
        boolean z11 = (i10 & 8) != 0;
        if (z10) {
            if (equals && z11) {
                renameEntryInClasspath(rawClasspathEntry.getPath(), javaProject);
            } else {
                removeEntryFromClasspath(rawClasspathEntry.getPath(), javaProject);
            }
        }
        if (z11) {
            if (equals && z10) {
                return;
            }
            addEntryToClasspath(rawClasspathEntry, root);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void moveResource(IPackageFragmentRoot iPackageFragmentRoot, IClasspathEntry iClasspathEntry, final IWorkspaceRoot iWorkspaceRoot) throws JavaModelException {
        IResource findMember;
        char[][] fullExclusionPatternChars = ((ClasspathEntry) iClasspathEntry).fullExclusionPatternChars();
        IResource resource = ((JavaElement) iPackageFragmentRoot).resource();
        if (iClasspathEntry.getEntryKind() != 3 || fullExclusionPatternChars == null) {
            try {
                if ((this.updateModelFlags & 16) != 0 && (findMember = iWorkspaceRoot.findMember(this.destination)) != null) {
                    findMember.delete(this.updateResourceFlags, this.progressMonitor);
                }
                resource.move(this.destination, this.updateResourceFlags, this.progressMonitor);
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
                            IPath append = MovePackageFragmentRootOperation.this.destination.append(iResourceProxy.requestFullPath().removeFirstSegments(segmentCount));
                            if ((MovePackageFragmentRootOperation.this.updateModelFlags & 16) != 0 && (findMember2 = iWorkspaceRoot.findMember(append)) != null) {
                                MovePackageFragmentRootOperation movePackageFragmentRootOperation = MovePackageFragmentRootOperation.this;
                                findMember2.delete(movePackageFragmentRootOperation.updateResourceFlags, movePackageFragmentRootOperation.progressMonitor);
                            }
                            IResource requestResource = iResourceProxy.requestResource();
                            MovePackageFragmentRootOperation movePackageFragmentRootOperation2 = MovePackageFragmentRootOperation.this;
                            requestResource.move(append, movePackageFragmentRootOperation2.updateResourceFlags, movePackageFragmentRootOperation2.progressMonitor);
                            return false;
                        }
                        IPath requestFullPath = iResourceProxy.requestFullPath();
                        if (MovePackageFragmentRootOperation.this.prefixesOneOf(requestFullPath, nestedFolders)) {
                            if (MovePackageFragmentRootOperation.this.equalsOneOf(requestFullPath, nestedFolders)) {
                                return false;
                            }
                            IFolder folder2 = folder.getFolder(requestFullPath.removeFirstSegments(segmentCount));
                            if ((MovePackageFragmentRootOperation.this.updateModelFlags & 16) != 0 && folder2.exists()) {
                                return true;
                            }
                            MovePackageFragmentRootOperation movePackageFragmentRootOperation3 = MovePackageFragmentRootOperation.this;
                            folder2.create(movePackageFragmentRootOperation3.updateResourceFlags, true, movePackageFragmentRootOperation3.progressMonitor);
                            return true;
                        }
                        IPath append2 = MovePackageFragmentRootOperation.this.destination.append(requestFullPath.removeFirstSegments(segmentCount));
                        if ((MovePackageFragmentRootOperation.this.updateModelFlags & 16) != 0 && (findMember3 = iWorkspaceRoot.findMember(append2)) != null) {
                            MovePackageFragmentRootOperation movePackageFragmentRootOperation4 = MovePackageFragmentRootOperation.this;
                            findMember3.delete(movePackageFragmentRootOperation4.updateResourceFlags, movePackageFragmentRootOperation4.progressMonitor);
                        }
                        IResource requestResource2 = iResourceProxy.requestResource();
                        MovePackageFragmentRootOperation movePackageFragmentRootOperation5 = MovePackageFragmentRootOperation.this;
                        requestResource2.move(append2, movePackageFragmentRootOperation5.updateResourceFlags, movePackageFragmentRootOperation5.progressMonitor);
                        return false;
                    }
                }, 0);
            } catch (CoreException e11) {
                throw new JavaModelException(e11);
            }
        }
        JavaModelOperation.setAttribute(JavaModelOperation.HAS_MODIFIED_RESOURCE_ATTR, "true");
    }

    public void removeEntryFromClasspath(IPath iPath, IJavaProject iJavaProject) throws JavaModelException {
        IClasspathEntry[] rawClasspath = iJavaProject.getRawClasspath();
        int length = rawClasspath.length;
        IClasspathEntry[] iClasspathEntryArr = null;
        int i10 = -1;
        for (int i11 = 0; i11 < length; i11++) {
            IClasspathEntry iClasspathEntry = rawClasspath[i11];
            if (iPath.equals(iClasspathEntry.getPath())) {
                if (iClasspathEntryArr == null) {
                    iClasspathEntryArr = new IClasspathEntry[length];
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

    public void renameEntryInClasspath(IPath iPath, IJavaProject iJavaProject) throws JavaModelException {
        int i10;
        IClasspathEntry[] rawClasspath = iJavaProject.getRawClasspath();
        int length = rawClasspath.length;
        IClasspathEntry[] iClasspathEntryArr = null;
        int i11 = -1;
        for (int i12 = 0; i12 < length; i12++) {
            IClasspathEntry iClasspathEntry = rawClasspath[i12];
            IPath path = iClasspathEntry.getPath();
            if (iPath.equals(path)) {
                if (iClasspathEntryArr == null) {
                    iClasspathEntryArr = new IClasspathEntry[length];
                    System.arraycopy(rawClasspath, 0, iClasspathEntryArr, 0, i12);
                    i11 = i12;
                }
                i10 = i11 + 1;
                iClasspathEntryArr[i11] = copy(iClasspathEntry);
            } else {
                if (this.destination.equals(path)) {
                    if (iClasspathEntryArr == null) {
                        iClasspathEntryArr = new IClasspathEntry[length];
                        System.arraycopy(rawClasspath, 0, iClasspathEntryArr, 0, i12);
                        i11 = i12;
                    }
                } else if (iClasspathEntry.getEntryKind() == 3) {
                    IPath removeFirstSegments = iPath.removeFirstSegments(1);
                    IPath[] renamePatterns = renamePatterns(removeFirstSegments, iClasspathEntry.getExclusionPatterns());
                    IPath[] renamePatterns2 = renamePatterns(removeFirstSegments, iClasspathEntry.getInclusionPatterns());
                    if (renamePatterns != null || renamePatterns2 != null) {
                        if (iClasspathEntryArr == null) {
                            iClasspathEntryArr = new IClasspathEntry[length];
                            System.arraycopy(rawClasspath, 0, iClasspathEntryArr, 0, i12);
                            i11 = i12;
                        }
                        int i13 = i11 + 1;
                        IPath path2 = iClasspathEntry.getPath();
                        if (renamePatterns2 == null) {
                            renamePatterns2 = iClasspathEntry.getInclusionPatterns();
                        }
                        if (renamePatterns == null) {
                            renamePatterns = iClasspathEntry.getExclusionPatterns();
                        }
                        iClasspathEntryArr[i11] = JavaCore.newSourceEntry(path2, renamePatterns2, renamePatterns, iClasspathEntry.getOutputLocation(), iClasspathEntry.getExtraAttributes());
                        i11 = i13;
                    } else if (iClasspathEntryArr != null) {
                        i10 = i11 + 1;
                        iClasspathEntryArr[i11] = iClasspathEntry;
                    }
                } else if (iClasspathEntryArr != null) {
                    i10 = i11 + 1;
                    iClasspathEntryArr[i11] = iClasspathEntry;
                }
            }
            i11 = i10;
        }
        if (iClasspathEntryArr != null) {
            if (i11 < iClasspathEntryArr.length) {
                IClasspathEntry[] iClasspathEntryArr2 = new IClasspathEntry[i11];
                System.arraycopy(iClasspathEntryArr, 0, iClasspathEntryArr2, 0, i11);
                iClasspathEntryArr = iClasspathEntryArr2;
            }
            if (JavaConventions.validateClasspath(iJavaProject, iClasspathEntryArr, iJavaProject.getOutputLocation()).isOK()) {
                iJavaProject.setRawClasspath(iClasspathEntryArr, this.progressMonitor);
            }
        }
    }

    public void updateReferringProjectClasspaths(IPath iPath, IJavaProject iJavaProject) throws JavaModelException {
        for (IJavaProject iJavaProject2 : getJavaModel().getJavaProjects()) {
            if (!iJavaProject2.equals(iJavaProject)) {
                renameEntryInClasspath(iPath, iJavaProject2);
            }
        }
    }
}
