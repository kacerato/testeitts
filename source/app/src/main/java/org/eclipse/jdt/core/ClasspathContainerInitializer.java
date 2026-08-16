package org.eclipse.jdt.core;

import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.IPath;
import org.eclipse.core.runtime.IStatus;
import org.eclipse.core.runtime.Status;
import org.eclipse.jdt.internal.core.JavaModelStatus;

public abstract class ClasspathContainerInitializer {
    public static final int ATTRIBUTE_NOT_SUPPORTED = 1;
    public static final int ATTRIBUTE_READ_ONLY = 2;

    public boolean canUpdateClasspathContainer(IPath iPath, IJavaProject iJavaProject) {
        return false;
    }

    public IStatus getAccessRulesStatus(IPath iPath, IJavaProject iJavaProject) {
        return canUpdateClasspathContainer(iPath, iJavaProject) ? Status.OK_STATUS : new JavaModelStatus(2);
    }

    public IStatus getAttributeStatus(IPath iPath, IJavaProject iJavaProject, String str) {
        return canUpdateClasspathContainer(iPath, iJavaProject) ? Status.OK_STATUS : new JavaModelStatus(2);
    }

    public Object getComparisonID(IPath iPath, IJavaProject iJavaProject) {
        if (iPath == null) {
            return null;
        }
        return iPath.segment(0);
    }

    public String getDescription(IPath iPath, IJavaProject iJavaProject) {
        return iPath.makeRelative().toString();
    }

    public IClasspathContainer getFailureContainer(final IPath iPath, IJavaProject iJavaProject) {
        final String description = getDescription(iPath, iJavaProject);
        return new IClasspathContainer() {
            @Override
            public IClasspathEntry[] getClasspathEntries() {
                return new IClasspathEntry[0];
            }

            @Override
            public String getDescription() {
                return description;
            }

            @Override
            public int getKind() {
                return 0;
            }

            @Override
            public IPath getPath() {
                return iPath;
            }

            public String toString() {
                return getDescription();
            }
        };
    }

    public IStatus getSourceAttachmentStatus(IPath iPath, IJavaProject iJavaProject) {
        return canUpdateClasspathContainer(iPath, iJavaProject) ? Status.OK_STATUS : new JavaModelStatus(2);
    }

    public abstract void initialize(IPath iPath, IJavaProject iJavaProject) throws CoreException;

    public void requestClasspathContainerUpdate(IPath iPath, IJavaProject iJavaProject, IClasspathContainer iClasspathContainer) throws CoreException {
    }
}
