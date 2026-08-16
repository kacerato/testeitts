package org.eclipse.jdt.core;

import org.eclipse.core.runtime.IProgressMonitor;

public interface ISourceManipulation {
    void copy(IJavaElement iJavaElement, IJavaElement iJavaElement2, String str, boolean z10, IProgressMonitor iProgressMonitor) throws JavaModelException;

    void delete(boolean z10, IProgressMonitor iProgressMonitor) throws JavaModelException;

    void move(IJavaElement iJavaElement, IJavaElement iJavaElement2, String str, boolean z10, IProgressMonitor iProgressMonitor) throws JavaModelException;

    void rename(String str, boolean z10, IProgressMonitor iProgressMonitor) throws JavaModelException;
}
