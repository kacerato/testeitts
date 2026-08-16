package org.eclipse.jdt.internal.core;

import org.eclipse.core.runtime.IProgressMonitor;
import org.eclipse.core.runtime.OperationCanceledException;
import org.eclipse.jdt.core.compiler.CategorizedProblem;
import org.eclipse.jdt.internal.compiler.problem.AbortCompilation;
import org.eclipse.jdt.internal.compiler.problem.DefaultProblemFactory;

public class CancelableProblemFactory extends DefaultProblemFactory {
    public IProgressMonitor monitor;

    public CancelableProblemFactory(IProgressMonitor iProgressMonitor) {
        this.monitor = iProgressMonitor;
    }

    @Override
    public CategorizedProblem createProblem(char[] cArr, int i10, String[] strArr, String[] strArr2, int i11, int i12, int i13, int i14, int i15) {
        IProgressMonitor iProgressMonitor = this.monitor;
        if (iProgressMonitor != null && iProgressMonitor.isCanceled()) {
            throw new AbortCompilation(true, (RuntimeException) new OperationCanceledException());
        }
        return super.createProblem(cArr, i10, strArr, strArr2, i11, i12, i13, i14, i15);
    }

    @Override
    public CategorizedProblem createProblem(char[] cArr, int i10, String[] strArr, int i11, String[] strArr2, int i12, int i13, int i14, int i15, int i16) {
        IProgressMonitor iProgressMonitor = this.monitor;
        if (iProgressMonitor != null && iProgressMonitor.isCanceled()) {
            throw new AbortCompilation(true, (RuntimeException) new OperationCanceledException());
        }
        return super.createProblem(cArr, i10, strArr, i11, strArr2, i12, i13, i14, i15, i16);
    }
}
