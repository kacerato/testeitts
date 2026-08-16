package org.eclipse.jdt.internal.core;

import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.IPath;
import org.eclipse.jdt.core.ClasspathContainerInitializer;
import org.eclipse.jdt.core.IClasspathContainer;
import org.eclipse.jdt.core.IJavaProject;
import org.eclipse.jdt.core.JavaCore;
import org.eclipse.jdt.internal.core.util.Util;

public class ModulePathContainerInitializer extends ClasspathContainerInitializer {
    private boolean isModulePathContainer(IPath iPath) {
        return iPath != null && JavaCore.MODULE_PATH_CONTAINER_ID.equals(iPath.segment(0));
    }

    private void verbose_not_a_module_project(IJavaProject iJavaProject, IPath iPath) {
        Util.verbose("Module path INIT - FAILED (not a module project)\n\tproject: " + iJavaProject.getElementName() + "\n\tcontainer path: " + ((Object) iPath));
    }

    @Override
    public void initialize(IPath iPath, IJavaProject iJavaProject) throws CoreException {
        if (isModulePathContainer(iPath)) {
            if (iJavaProject instanceof JavaProject) {
                JavaCore.setClasspathContainer(iPath, new IJavaProject[]{iJavaProject}, new IClasspathContainer[]{new ModulePathContainer(iJavaProject)}, null);
            }
        } else if (JavaModelManager.CP_RESOLVE_VERBOSE || JavaModelManager.CP_RESOLVE_VERBOSE_FAILURE) {
            verbose_not_a_module_project(iJavaProject, iPath);
        }
    }
}
