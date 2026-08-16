package org.eclipse.jdt.core;

import org.eclipse.core.runtime.IProgressMonitor;

public interface ITypeRoot extends IJavaElement, IParent, IOpenable, ISourceReference, ICodeAssist {
    IType findPrimaryType();

    IJavaElement getElementAt(int i10) throws JavaModelException;

    default IModuleDescription getModule() throws JavaModelException {
        return null;
    }

    ICompilationUnit getWorkingCopy(WorkingCopyOwner workingCopyOwner, IProgressMonitor iProgressMonitor) throws JavaModelException;
}
