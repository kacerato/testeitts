package org.eclipse.jdt.internal.core;

import org.eclipse.core.runtime.IProgressMonitor;
import org.eclipse.core.runtime.OperationCanceledException;
import org.eclipse.jdt.core.JavaModelException;
import org.eclipse.jdt.core.WorkingCopyOwner;
import org.eclipse.jdt.internal.codeassist.ISearchRequestor;
import org.eclipse.jdt.internal.compiler.env.NameEnvironmentAnswer;
import org.eclipse.jdt.internal.compiler.problem.AbortCompilation;

public class CancelableNameEnvironment extends SearchableEnvironment implements INameEnvironmentWithProgress {
    private IProgressMonitor monitor;

    public CancelableNameEnvironment(JavaProject javaProject, WorkingCopyOwner workingCopyOwner, IProgressMonitor iProgressMonitor) throws JavaModelException {
        this(javaProject, workingCopyOwner, iProgressMonitor, false);
    }

    private void checkCanceled() {
        IProgressMonitor iProgressMonitor = this.monitor;
        if (iProgressMonitor == null || !iProgressMonitor.isCanceled()) {
            return;
        }
        if (NameLookup.VERBOSE) {
            System.out.println(((Object) Thread.currentThread()) + " CANCELLING LOOKUP ");
        }
        throw new AbortCompilation(true, (RuntimeException) new OperationCanceledException());
    }

    @Override
    public void findPackages(char[] cArr, ISearchRequestor iSearchRequestor) {
        checkCanceled();
        super.findPackages(cArr, iSearchRequestor);
    }

    @Override
    public NameEnvironmentAnswer findType(char[] cArr, char[][] cArr2) {
        checkCanceled();
        return super.findType(cArr, cArr2);
    }

    @Override
    public void findTypes(char[] cArr, boolean z10, boolean z11, int i10, ISearchRequestor iSearchRequestor, IProgressMonitor iProgressMonitor) {
        checkCanceled();
        super.findTypes(cArr, z10, z11, i10, iSearchRequestor, iProgressMonitor);
    }

    @Override
    public void setMonitor(IProgressMonitor iProgressMonitor) {
        this.monitor = iProgressMonitor;
    }

    public CancelableNameEnvironment(JavaProject javaProject, WorkingCopyOwner workingCopyOwner, IProgressMonitor iProgressMonitor, boolean z10) throws JavaModelException {
        super(javaProject, workingCopyOwner, z10);
        setMonitor(iProgressMonitor);
    }

    @Override
    public NameEnvironmentAnswer findType(char[][] cArr) {
        checkCanceled();
        return super.findType(cArr);
    }

    @Override
    public NameEnvironmentAnswer findType(char[] cArr, char[][] cArr2, boolean z10, char[] cArr3) {
        return findType(cArr, cArr2, cArr3);
    }
}
