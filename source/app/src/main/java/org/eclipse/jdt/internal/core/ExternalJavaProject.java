package org.eclipse.jdt.internal.core;

import org.eclipse.core.resources.IResource;
import org.eclipse.core.resources.ResourcesPlugin;
import org.eclipse.core.runtime.IStatus;
import org.eclipse.jdt.core.IClasspathEntry;
import org.eclipse.jdt.core.IJavaElement;
import org.eclipse.jdt.core.JavaModelException;

public class ExternalJavaProject extends JavaProject {
    public static final String EXTERNAL_PROJECT_NAME = " ";

    public ExternalJavaProject(IClasspathEntry[] iClasspathEntryArr) {
        super(ResourcesPlugin.getWorkspace().getRoot().getProject(" "), JavaModelManager.getJavaModelManager().getJavaModel());
        try {
            getPerProjectInfo().setRawClasspath(iClasspathEntryArr, defaultOutputLocation(), JavaModelStatus.VERIFIED_OK);
        } catch (JavaModelException unused) {
        }
    }

    @Override
    public boolean equals(Object obj) {
        return this == obj;
    }

    @Override
    public boolean exists() {
        return false;
    }

    @Override
    public String getOption(String str, boolean z10) {
        return ("org.eclipse.jdt.core.compiler.problem.forbiddenReference".equals(str) || "org.eclipse.jdt.core.compiler.problem.discouragedReference".equals(str)) ? "ignore" : super.getOption(str, z10);
    }

    @Override
    public boolean isOnClasspath(IResource iResource) {
        return false;
    }

    @Override
    public IStatus validateExistence(IResource iResource) {
        return JavaModelStatus.VERIFIED_OK;
    }

    @Override
    public boolean isOnClasspath(IJavaElement iJavaElement) {
        return false;
    }
}
