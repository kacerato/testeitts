package org.eclipse.jdt.internal.core;

import org.eclipse.core.resources.IWorkspaceRunnable;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.jdt.core.IJavaModelStatus;
import org.eclipse.jdt.core.JavaModelException;

public class BatchOperation extends JavaModelOperation {
    protected IWorkspaceRunnable runnable;

    public BatchOperation(IWorkspaceRunnable iWorkspaceRunnable) {
        this.runnable = iWorkspaceRunnable;
    }

    @Override
    public boolean canModifyRoots() {
        return true;
    }

    @Override
    public void executeOperation() throws JavaModelException {
        try {
            this.runnable.run(this.progressMonitor);
        } catch (CoreException e10) {
            if (e10 instanceof JavaModelException) {
                throw ((JavaModelException) e10);
            }
            if (e10.getStatus().getCode() == 76) {
                e10.getStatus().getException();
            }
            throw new JavaModelException(e10);
        }
    }

    @Override
    public IJavaModelStatus verify() {
        return JavaModelStatus.VERIFIED_OK;
    }
}
