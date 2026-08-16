package org.eclipse.jdt.internal.core;

import org.eclipse.core.resources.IResource;
import org.eclipse.jdt.core.IJavaElement;
import org.eclipse.jdt.core.IProblemRequestor;
import org.eclipse.jdt.core.JavaModelException;

public class BecomeWorkingCopyOperation extends JavaModelOperation {
    IProblemRequestor problemRequestor;

    public BecomeWorkingCopyOperation(CompilationUnit compilationUnit, IProblemRequestor iProblemRequestor) {
        super(new IJavaElement[]{compilationUnit});
        this.problemRequestor = iProblemRequestor;
    }

    @Override
    public void executeOperation() throws JavaModelException {
        CompilationUnit workingCopy = getWorkingCopy();
        JavaModelManager.getJavaModelManager().getPerWorkingCopyInfo(workingCopy, true, true, this.problemRequestor);
        workingCopy.openWhenClosed(workingCopy.createElementInfo(), true, this.progressMonitor);
        if (workingCopy.isPrimary()) {
            IResource resource = workingCopy.getResource();
            if (resource != null) {
                if (resource.isAccessible()) {
                    JavaElementDelta javaElementDelta = new JavaElementDelta(getJavaModel());
                    javaElementDelta.changed(workingCopy, 65536);
                    addDelta(javaElementDelta);
                } else {
                    JavaElementDelta javaElementDelta2 = new JavaElementDelta(getJavaModel());
                    javaElementDelta2.added(workingCopy, 65536);
                    addDelta(javaElementDelta2);
                }
            }
        } else {
            JavaElementDelta javaElementDelta3 = new JavaElementDelta(getJavaModel());
            javaElementDelta3.added(workingCopy);
            addDelta(javaElementDelta3);
        }
        this.resultElements = new IJavaElement[]{workingCopy};
    }

    public CompilationUnit getWorkingCopy() {
        return (CompilationUnit) getElementToProcess();
    }

    @Override
    public boolean isReadOnly() {
        return true;
    }
}
