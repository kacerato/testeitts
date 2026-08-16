package org.eclipse.jdt.internal.core;

import org.eclipse.core.resources.IProject;
import org.eclipse.core.runtime.IPath;
import org.eclipse.jdt.core.IClasspathEntry;
import org.eclipse.jdt.core.IJavaModelStatus;
import org.eclipse.jdt.core.JavaModelException;
import org.eclipse.jdt.internal.core.JavaModelManager;
import org.eclipse.jdt.internal.core.builder.JavaBuilder;

public class ClasspathValidation {
    private JavaProject project;

    public ClasspathValidation(JavaProject javaProject) {
        this.project = javaProject;
    }

    public void validate() {
        IClasspathEntry[] iClasspathEntryArr;
        IPath iPath;
        IJavaModelStatus iJavaModelStatus;
        try {
            JavaModelManager.PerProjectInfo perProjectInfo = this.project.getPerProjectInfo();
            synchronized (perProjectInfo) {
                iClasspathEntryArr = perProjectInfo.rawClasspath;
                iPath = perProjectInfo.outputLocation;
                iJavaModelStatus = perProjectInfo.rawClasspathStatus;
            }
            this.project.flushClasspathProblemMarkers(false, true, false);
            if (!iJavaModelStatus.isOK()) {
                this.project.createClasspathProblemMarker(iJavaModelStatus);
            }
            this.project.flushClasspathProblemMarkers(false, false, true);
            this.project.flushClasspathProblemMarkers(false, false, false);
            if (iClasspathEntryArr == JavaProject.INVALID_CLASSPATH || iPath == null) {
                return;
            }
            for (IClasspathEntry iClasspathEntry : iClasspathEntryArr) {
                IJavaModelStatus validateClasspathEntry = ClasspathEntry.validateClasspathEntry(this.project, iClasspathEntry, false, false);
                if (!validateClasspathEntry.isOK()) {
                    this.project.createClasspathProblemMarker(validateClasspathEntry);
                }
            }
            IJavaModelStatus validateClasspath = ClasspathEntry.validateClasspath(this.project, iClasspathEntryArr, iPath);
            if (validateClasspath.getCode() != 0) {
                this.project.createClasspathProblemMarker(validateClasspath);
            }
        } catch (JavaModelException unused) {
            IProject project = this.project.getProject();
            if (project.isAccessible()) {
                this.project.flushClasspathProblemMarkers(true, true, true);
                JavaBuilder.removeProblemsAndTasksFor(project);
            }
        }
    }
}
