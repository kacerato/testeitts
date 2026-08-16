package org.eclipse.jdt.internal.core;

import org.eclipse.core.resources.ResourcesPlugin;
import org.eclipse.core.runtime.jobs.ISchedulingRule;
import org.eclipse.jdt.core.IJavaElement;
import org.eclipse.jdt.core.JavaModelException;

public abstract class ChangeClasspathOperation extends JavaModelOperation {
    protected boolean canChangeResources;

    public ChangeClasspathOperation(IJavaElement[] iJavaElementArr, boolean z10) {
        super(iJavaElementArr);
        this.canChangeResources = z10;
    }

    @Override
    public boolean canModifyRoots() {
        return true;
    }

    public void classpathChanged(ClasspathChange classpathChange, boolean z10) throws JavaModelException {
        JavaProject javaProject = classpathChange.project;
        javaProject.resetCaches();
        if (this.canChangeResources) {
            if (isTopLevelOperation() && !ResourcesPlugin.getWorkspace().isTreeLocked()) {
                new ClasspathValidation(javaProject).validate();
            }
            javaProject.getProject().clearCachedDynamicReferences();
            new ExternalFolderChange(javaProject, classpathChange.oldResolvedClasspath).updateExternalFoldersIfNecessary(z10, null);
            return;
        }
        DeltaProcessingState deltaState = JavaModelManager.getDeltaState();
        JavaElementDelta javaElementDelta = new JavaElementDelta(getJavaModel());
        int generateDelta = classpathChange.generateDelta(javaElementDelta, true);
        if ((generateDelta & 1) != 0) {
            addDelta(javaElementDelta);
            deltaState.rootsAreStale = true;
            classpathChange.requestIndexing();
            deltaState.addClasspathValidation(javaProject);
        }
        if ((generateDelta & 2) != 0) {
            javaProject.getProject().clearCachedDynamicReferences();
            deltaState.addProjectReferenceChange(javaProject);
        }
        if ((generateDelta & 4) != 0) {
            deltaState.addExternalFolderChange(javaProject, classpathChange.oldResolvedClasspath);
        }
    }

    @Override
    public ISchedulingRule getSchedulingRule() {
        return null;
    }

    @Override
    public boolean isReadOnly() {
        return !this.canChangeResources;
    }
}
