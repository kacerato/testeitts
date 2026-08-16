package org.eclipse.jdt.internal.core;

import org.eclipse.jdt.core.IBuffer;
import org.eclipse.jdt.core.ICompilationUnit;
import org.eclipse.jdt.core.WorkingCopyOwner;

public class DefaultWorkingCopyOwner extends WorkingCopyOwner {
    public static final DefaultWorkingCopyOwner PRIMARY = new DefaultWorkingCopyOwner();
    public WorkingCopyOwner primaryBufferProvider;

    private DefaultWorkingCopyOwner() {
    }

    @Override
    public IBuffer createBuffer(ICompilationUnit iCompilationUnit) {
        WorkingCopyOwner workingCopyOwner = this.primaryBufferProvider;
        return workingCopyOwner != null ? workingCopyOwner.createBuffer(iCompilationUnit) : super.createBuffer(iCompilationUnit);
    }

    public String toString() {
        return "Primary owner";
    }
}
