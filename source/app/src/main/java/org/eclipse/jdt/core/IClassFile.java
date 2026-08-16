package org.eclipse.jdt.core;

import org.eclipse.core.runtime.IProgressMonitor;

public interface IClassFile extends ITypeRoot {
    ICompilationUnit becomeWorkingCopy(IProblemRequestor iProblemRequestor, WorkingCopyOwner workingCopyOwner, IProgressMonitor iProgressMonitor) throws JavaModelException;

    byte[] getBytes() throws JavaModelException;

    @Deprecated
    IType getType();

    IJavaElement getWorkingCopy(IProgressMonitor iProgressMonitor, IBufferFactory iBufferFactory) throws JavaModelException;

    boolean isClass() throws JavaModelException;

    boolean isInterface() throws JavaModelException;
}
