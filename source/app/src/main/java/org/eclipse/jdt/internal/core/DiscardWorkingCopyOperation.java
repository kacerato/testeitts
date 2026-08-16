package org.eclipse.jdt.internal.core;

import org.eclipse.core.resources.IResource;
import org.eclipse.jdt.core.IJavaElement;
import org.eclipse.jdt.core.IJavaProject;
import org.eclipse.jdt.core.JavaModelException;

public class DiscardWorkingCopyOperation extends JavaModelOperation {
    public DiscardWorkingCopyOperation(IJavaElement iJavaElement) {
        super(new IJavaElement[]{iJavaElement});
    }

    @Override
    public void executeOperation() throws JavaModelException {
        CompilationUnit workingCopy = getWorkingCopy();
        JavaModelManager javaModelManager = JavaModelManager.getJavaModelManager();
        if (javaModelManager.discardPerWorkingCopyInfo(workingCopy) == 0) {
            IJavaProject javaProject = workingCopy.getJavaProject();
            if (" ".equals(javaProject.getElementName())) {
                javaModelManager.removePerProjectInfo((JavaProject) javaProject, true);
                javaModelManager.containerRemove(javaProject);
            }
            if (!workingCopy.isPrimary()) {
                JavaElementDelta javaElementDelta = new JavaElementDelta(getJavaModel());
                javaElementDelta.removed(workingCopy);
                addDelta(javaElementDelta);
                removeReconcileDelta(workingCopy);
                return;
            }
            IResource resource = workingCopy.getResource();
            if (resource != null) {
                if (resource.isAccessible()) {
                    JavaElementDelta javaElementDelta2 = new JavaElementDelta(getJavaModel());
                    javaElementDelta2.changed(workingCopy, 65536);
                    addDelta(javaElementDelta2);
                } else {
                    JavaElementDelta javaElementDelta3 = new JavaElementDelta(getJavaModel());
                    javaElementDelta3.removed(workingCopy, 65536);
                    addDelta(javaElementDelta3);
                }
            }
        }
    }

    public CompilationUnit getWorkingCopy() {
        return (CompilationUnit) getElementToProcess();
    }

    @Override
    public boolean isReadOnly() {
        return true;
    }
}
