package org.eclipse.jdt.core.search;

import org.eclipse.core.resources.IResource;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.IProgressMonitor;
import org.eclipse.jdt.core.IJavaElement;

public interface IJavaSearchResultCollector {
    public static final int EXACT_MATCH = 0;
    public static final int POTENTIAL_MATCH = 1;

    void aboutToStart();

    void accept(IResource iResource, int i10, int i11, IJavaElement iJavaElement, int i12) throws CoreException;

    void done();

    IProgressMonitor getProgressMonitor();
}
