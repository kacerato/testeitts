package org.eclipse.jdt.core;

import org.eclipse.core.runtime.IProgressMonitor;

public interface IOpenable {
    void close() throws JavaModelException;

    String findRecommendedLineSeparator() throws JavaModelException;

    IBuffer getBuffer() throws JavaModelException;

    boolean hasUnsavedChanges() throws JavaModelException;

    boolean isConsistent() throws JavaModelException;

    boolean isOpen();

    void makeConsistent(IProgressMonitor iProgressMonitor) throws JavaModelException;

    void open(IProgressMonitor iProgressMonitor) throws JavaModelException;

    void save(IProgressMonitor iProgressMonitor, boolean z10) throws JavaModelException;
}
