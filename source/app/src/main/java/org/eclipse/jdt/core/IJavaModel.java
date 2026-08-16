package org.eclipse.jdt.core;

import org.eclipse.core.resources.IResource;
import org.eclipse.core.resources.IWorkspace;
import org.eclipse.core.runtime.IProgressMonitor;

public interface IJavaModel extends IJavaElement, IOpenable, IParent {
    boolean contains(IResource iResource);

    void copy(IJavaElement[] iJavaElementArr, IJavaElement[] iJavaElementArr2, IJavaElement[] iJavaElementArr3, String[] strArr, boolean z10, IProgressMonitor iProgressMonitor) throws JavaModelException;

    void delete(IJavaElement[] iJavaElementArr, boolean z10, IProgressMonitor iProgressMonitor) throws JavaModelException;

    IJavaProject getJavaProject(String str);

    IJavaProject[] getJavaProjects() throws JavaModelException;

    Object[] getNonJavaResources() throws JavaModelException;

    IWorkspace getWorkspace();

    void move(IJavaElement[] iJavaElementArr, IJavaElement[] iJavaElementArr2, IJavaElement[] iJavaElementArr3, String[] strArr, boolean z10, IProgressMonitor iProgressMonitor) throws JavaModelException;

    void refreshExternalArchives(IJavaElement[] iJavaElementArr, IProgressMonitor iProgressMonitor) throws JavaModelException;

    void rename(IJavaElement[] iJavaElementArr, IJavaElement[] iJavaElementArr2, String[] strArr, boolean z10, IProgressMonitor iProgressMonitor) throws JavaModelException;
}
