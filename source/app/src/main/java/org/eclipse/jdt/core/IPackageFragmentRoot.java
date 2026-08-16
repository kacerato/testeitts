package org.eclipse.jdt.core;

import org.eclipse.core.runtime.IPath;
import org.eclipse.core.runtime.IProgressMonitor;

public interface IPackageFragmentRoot extends IParent, IJavaElement, IOpenable {
    public static final String DEFAULT_PACKAGEROOT_PATH = "";
    public static final int DESTINATION_PROJECT_CLASSPATH = 8;
    public static final int K_BINARY = 2;
    public static final int K_SOURCE = 1;
    public static final int NO_RESOURCE_MODIFICATION = 1;
    public static final int ORIGINATING_PROJECT_CLASSPATH = 2;
    public static final int OTHER_REFERRING_PROJECTS_CLASSPATH = 4;
    public static final int REPLACE = 16;

    void attachSource(IPath iPath, IPath iPath2, IProgressMonitor iProgressMonitor) throws JavaModelException;

    void copy(IPath iPath, int i10, int i11, IClasspathEntry iClasspathEntry, IProgressMonitor iProgressMonitor) throws JavaModelException;

    IPackageFragment createPackageFragment(String str, boolean z10, IProgressMonitor iProgressMonitor) throws JavaModelException;

    void delete(int i10, int i11, IProgressMonitor iProgressMonitor) throws JavaModelException;

    int getKind() throws JavaModelException;

    IModuleDescription getModuleDescription();

    Object[] getNonJavaResources() throws JavaModelException;

    IPackageFragment getPackageFragment(String str);

    IClasspathEntry getRawClasspathEntry() throws JavaModelException;

    IClasspathEntry getResolvedClasspathEntry() throws JavaModelException;

    IPath getSourceAttachmentPath() throws JavaModelException;

    IPath getSourceAttachmentRootPath() throws JavaModelException;

    boolean isArchive();

    boolean isExternal();

    void move(IPath iPath, int i10, int i11, IClasspathEntry iClasspathEntry, IProgressMonitor iProgressMonitor) throws JavaModelException;
}
