package org.eclipse.jdt.internal.core;

import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.IPath;
import org.eclipse.jdt.core.ClasspathContainerInitializer;
import org.eclipse.jdt.core.IClasspathContainer;
import org.eclipse.jdt.core.IJavaProject;
import org.eclipse.jdt.core.JavaCore;
import org.eclipse.jdt.internal.core.util.Util;

public class UserLibraryClasspathContainerInitializer extends ClasspathContainerInitializer {
    private boolean isUserLibraryContainer(IPath iPath) {
        return iPath != null && iPath.segmentCount() == 2 && JavaCore.USER_LIBRARY_CONTAINER_ID.equals(iPath.segment(0));
    }

    private void verbose_no_user_library_found(IJavaProject iJavaProject, String str) {
        Util.verbose("UserLibrary INIT - FAILED (no user library found)\n\tproject: " + iJavaProject.getElementName() + "\n\tuserLibraryName: " + str);
    }

    private void verbose_not_a_user_library(IJavaProject iJavaProject, IPath iPath) {
        Util.verbose("UserLibrary INIT - FAILED (not a user library)\n\tproject: " + iJavaProject.getElementName() + "\n\tcontainer path: " + ((Object) iPath));
    }

    @Override
    public boolean canUpdateClasspathContainer(IPath iPath, IJavaProject iJavaProject) {
        return isUserLibraryContainer(iPath);
    }

    @Override
    public Object getComparisonID(IPath iPath, IJavaProject iJavaProject) {
        return iPath;
    }

    @Override
    public String getDescription(IPath iPath, IJavaProject iJavaProject) {
        return isUserLibraryContainer(iPath) ? iPath.segment(1) : super.getDescription(iPath, iJavaProject);
    }

    @Override
    public void initialize(IPath iPath, IJavaProject iJavaProject) throws CoreException {
        if (!isUserLibraryContainer(iPath)) {
            if (JavaModelManager.CP_RESOLVE_VERBOSE || JavaModelManager.CP_RESOLVE_VERBOSE_FAILURE) {
                verbose_not_a_user_library(iJavaProject, iPath);
                return;
            }
            return;
        }
        String segment = iPath.segment(1);
        if (JavaModelManager.getUserLibraryManager().getUserLibrary(segment) != null) {
            JavaCore.setClasspathContainer(iPath, new IJavaProject[]{iJavaProject}, new IClasspathContainer[]{new UserLibraryClasspathContainer(segment)}, null);
        } else if (JavaModelManager.CP_RESOLVE_VERBOSE || JavaModelManager.CP_RESOLVE_VERBOSE_FAILURE) {
            verbose_no_user_library_found(iJavaProject, segment);
        }
    }

    @Override
    public void requestClasspathContainerUpdate(IPath iPath, IJavaProject iJavaProject, IClasspathContainer iClasspathContainer) throws CoreException {
        if (isUserLibraryContainer(iPath)) {
            String segment = iPath.segment(1);
            if (iClasspathContainer != null) {
                JavaModelManager.getUserLibraryManager().setUserLibrary(segment, iClasspathContainer.getClasspathEntries(), iClasspathContainer.getKind() == 2);
            } else {
                JavaModelManager.getUserLibraryManager().removeUserLibrary(segment);
            }
        }
    }
}
