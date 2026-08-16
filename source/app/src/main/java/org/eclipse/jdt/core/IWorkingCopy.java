package org.eclipse.jdt.core;

import org.eclipse.core.resources.IMarker;
import org.eclipse.core.resources.IResource;
import org.eclipse.core.runtime.IProgressMonitor;

public interface IWorkingCopy {
    void commit(boolean z10, IProgressMonitor iProgressMonitor) throws JavaModelException;

    void destroy();

    IJavaElement[] findElements(IJavaElement iJavaElement);

    IType findPrimaryType();

    IJavaElement findSharedWorkingCopy(IBufferFactory iBufferFactory);

    IJavaElement getOriginal(IJavaElement iJavaElement);

    IJavaElement getOriginalElement();

    IJavaElement getSharedWorkingCopy(IProgressMonitor iProgressMonitor, IBufferFactory iBufferFactory, IProblemRequestor iProblemRequestor) throws JavaModelException;

    IJavaElement getWorkingCopy() throws JavaModelException;

    IJavaElement getWorkingCopy(IProgressMonitor iProgressMonitor, IBufferFactory iBufferFactory, IProblemRequestor iProblemRequestor) throws JavaModelException;

    boolean isBasedOn(IResource iResource);

    boolean isWorkingCopy();

    void reconcile(boolean z10, IProgressMonitor iProgressMonitor) throws JavaModelException;

    IMarker[] reconcile() throws JavaModelException;

    void restore() throws JavaModelException;
}
