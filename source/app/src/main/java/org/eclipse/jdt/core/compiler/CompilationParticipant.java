package org.eclipse.jdt.core.compiler;

import org.eclipse.jdt.core.IJavaProject;

public abstract class CompilationParticipant {
    public static final int NEEDS_FULL_BUILD = 2;
    public static final int READY_FOR_BUILD = 1;

    public int aboutToBuild(IJavaProject iJavaProject) {
        return 1;
    }

    public void buildFinished(IJavaProject iJavaProject) {
    }

    public void buildStarting(BuildContext[] buildContextArr, boolean z10) {
    }

    public void cleanStarting(IJavaProject iJavaProject) {
    }

    public boolean isActive(IJavaProject iJavaProject) {
        return false;
    }

    public boolean isAnnotationProcessor() {
        return false;
    }

    public void processAnnotations(BuildContext[] buildContextArr) {
    }

    public void reconcile(ReconcileContext reconcileContext) {
    }
}
