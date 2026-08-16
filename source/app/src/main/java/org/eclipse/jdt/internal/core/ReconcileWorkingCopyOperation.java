package org.eclipse.jdt.internal.core;

import java.util.HashMap;
import org.eclipse.core.runtime.ISafeRunnable;
import org.eclipse.core.runtime.SafeRunner;
import org.eclipse.core.runtime.SubMonitor;
import org.eclipse.jdt.core.IJavaElement;
import org.eclipse.jdt.core.IJavaModelStatus;
import org.eclipse.jdt.core.IProblemRequestor;
import org.eclipse.jdt.core.JavaModelException;
import org.eclipse.jdt.core.WorkingCopyOwner;
import org.eclipse.jdt.core.compiler.CategorizedProblem;
import org.eclipse.jdt.core.compiler.CompilationParticipant;
import org.eclipse.jdt.core.compiler.ReconcileContext;
import org.eclipse.jdt.core.dom.AST;
import org.eclipse.jdt.internal.compiler.ast.CompilationUnitDeclaration;
import org.eclipse.jdt.internal.core.JavaModelManager;
import org.eclipse.jdt.internal.core.util.Messages;
import org.eclipse.jdt.internal.core.util.Util;

public class ReconcileWorkingCopyOperation extends JavaModelOperation {
    public static boolean PERF = false;
    public org.eclipse.jdt.core.dom.CompilationUnit ast;
    public int astLevel;
    public JavaElementDeltaBuilder deltaBuilder;
    public HashMap problems;
    public int reconcileFlags;
    public boolean requestorIsActive;
    public boolean resolveBindings;
    WorkingCopyOwner workingCopyOwner;

    public ReconcileWorkingCopyOperation(IJavaElement iJavaElement, int i10, int i11, WorkingCopyOwner workingCopyOwner) {
        super(new IJavaElement[]{iJavaElement});
        this.astLevel = i10;
        this.reconcileFlags = i11;
        this.workingCopyOwner = workingCopyOwner;
    }

    private void notifyParticipants(CompilationUnit compilationUnit) {
        CompilationParticipant[] compilationParticipants = JavaModelManager.getJavaModelManager().compilationParticipants.getCompilationParticipants(getWorkingCopy().getJavaProject());
        if (compilationParticipants == null) {
            return;
        }
        final ReconcileContext reconcileContext = new ReconcileContext(this, compilationUnit);
        for (final CompilationParticipant compilationParticipant : compilationParticipants) {
            SafeRunner.run(new ISafeRunnable() {
                public void handleException(Throwable th2) {
                    if (th2 instanceof Error) {
                        throw ((Error) th2);
                    }
                    if (th2 instanceof UnsupportedOperationException) {
                        Util.log(th2, "Reconcile participant attempted to modify the buffer of the working copy being reconciled");
                    } else {
                        Util.log(th2, "Exception occurred in reconcile participant");
                    }
                }

                public void run() throws Exception {
                    compilationParticipant.reconcile(reconcileContext);
                }
            });
        }
    }

    private void reportProblems(CompilationUnit compilationUnit, IProblemRequestor iProblemRequestor) {
        try {
            iProblemRequestor.beginReporting();
            for (CategorizedProblem[] categorizedProblemArr : this.problems.values()) {
                if (categorizedProblemArr != null) {
                    for (CategorizedProblem categorizedProblem : categorizedProblemArr) {
                        if (JavaModelManager.VERBOSE) {
                            System.out.println("PROBLEM FOUND while reconciling : " + categorizedProblem.getMessage());
                        }
                        SubMonitor subMonitor = this.progressMonitor;
                        if (subMonitor == null || !subMonitor.isCanceled()) {
                            iProblemRequestor.acceptProblem(categorizedProblem);
                        }
                    }
                }
            }
            iProblemRequestor.endReporting();
        } catch (Throwable th2) {
            iProblemRequestor.endReporting();
            throw th2;
        }
    }

    @Override
    public void executeOperation() throws JavaModelException {
        checkCanceled();
        try {
            beginTask(Messages.element_reconciling, 2);
            CompilationUnit workingCopy = getWorkingCopy();
            boolean isConsistent = workingCopy.isConsistent();
            JavaModelManager.PerWorkingCopyInfo perWorkingCopyInfo = workingCopy.getPerWorkingCopyInfo();
            IProblemRequestor iProblemRequestor = perWorkingCopyInfo;
            if (perWorkingCopyInfo != null) {
                iProblemRequestor = perWorkingCopyInfo.getProblemRequestor();
            }
            boolean z10 = false;
            boolean z11 = iProblemRequestor != null && iProblemRequestor.isActive();
            IProblemRequestor problemRequestor = this.workingCopyOwner.getProblemRequestor(workingCopy);
            boolean z12 = (problemRequestor == null || problemRequestor == iProblemRequestor || !problemRequestor.isActive()) ? false : true;
            if (z11 || z12) {
                z10 = true;
            }
            this.requestorIsActive = z10;
            this.deltaBuilder = new JavaElementDeltaBuilder(workingCopy);
            makeConsistent(workingCopy);
            if (!isConsistent || (this.reconcileFlags & 1) != 0) {
                notifyParticipants(workingCopy);
                if (this.ast == null) {
                    makeConsistent(workingCopy);
                }
            }
            if (this.problems != null && ((this.reconcileFlags & 1) != 0 || !isConsistent)) {
                if (z11) {
                    reportProblems(workingCopy, iProblemRequestor);
                }
                if (z12) {
                    reportProblems(workingCopy, problemRequestor);
                }
            }
            JavaElementDelta javaElementDelta = this.deltaBuilder.delta;
            if (javaElementDelta != null) {
                addReconcileDelta(workingCopy, javaElementDelta);
            }
            done();
        } catch (Throwable th2) {
            done();
            throw th2;
        }
    }

    public CompilationUnit getWorkingCopy() {
        return (CompilationUnit) getElementToProcess();
    }

    @Override
    public boolean isReadOnly() {
        return true;
    }

    /* JADX WARN: Code restructure failed: missing block: B:48:0x00e3, code lost:
    
        if (r2 != null) goto L56;
     */
    /* JADX WARN: Code restructure failed: missing block: B:49:0x00e5, code lost:
    
        r2.cleanUp();
     */
    /* JADX WARN: Code restructure failed: missing block: B:51:0x0105, code lost:
    
        return r11.ast;
     */
    /* JADX WARN: Code restructure failed: missing block: B:57:0x0100, code lost:
    
        if (r2 != null) goto L56;
     */
    /* JADX WARN: Removed duplicated region for block: B:66:0x0112  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public org.eclipse.jdt.core.dom.CompilationUnit makeConsistent(CompilationUnit compilationUnit) throws JavaModelException {
        CompilationUnitDeclaration compilationUnitDeclaration;
        JavaElementDelta javaElementDelta;
        if (!compilationUnit.isConsistent()) {
            if (this.problems == null) {
                this.problems = new HashMap();
            }
            boolean z10 = this.requestorIsActive;
            this.resolveBindings = z10;
            this.ast = compilationUnit.makeConsistent(this.astLevel, z10, this.reconcileFlags, this.problems, this.progressMonitor);
            this.deltaBuilder.buildDeltas();
            org.eclipse.jdt.core.dom.CompilationUnit compilationUnit2 = this.ast;
            if (compilationUnit2 != null && (javaElementDelta = this.deltaBuilder.delta) != null) {
                javaElementDelta.changedAST(compilationUnit2);
            }
            return this.ast;
        }
        org.eclipse.jdt.core.dom.CompilationUnit compilationUnit3 = this.ast;
        if (compilationUnit3 != null) {
            return compilationUnit3;
        }
        CompilationUnitDeclaration compilationUnitDeclaration2 = null;
        try {
            try {
                JavaModelManager.getJavaModelManager().abortOnMissingSource.set(Boolean.TRUE);
                CompilationUnit cloneCachingContents = compilationUnit.cloneCachingContents();
                if (!JavaProject.hasJavaNature(compilationUnit.getJavaProject().getProject()) || (this.reconcileFlags & 1) == 0) {
                    compilationUnitDeclaration = null;
                } else {
                    this.resolveBindings = this.requestorIsActive;
                    if (this.problems == null) {
                        this.problems = new HashMap();
                    }
                    compilationUnitDeclaration = CompilationUnitProblemFinder.process(cloneCachingContents, this.workingCopyOwner, this.problems, this.astLevel != 0, this.reconcileFlags, this.progressMonitor);
                    try {
                        SubMonitor subMonitor = this.progressMonitor;
                        if (subMonitor != null) {
                            subMonitor.worked(1);
                        }
                    } catch (JavaModelException e10) {
                        e = e10;
                        if (JavaProject.hasJavaNature(compilationUnit.getJavaProject().getProject())) {
                            throw e;
                        }
                        JavaModelManager.getJavaModelManager().abortOnMissingSource.set(null);
                    }
                }
                if (this.astLevel != 0 && compilationUnitDeclaration != null) {
                    org.eclipse.jdt.core.dom.CompilationUnit convertCompilationUnit = AST.convertCompilationUnit(this.astLevel, compilationUnitDeclaration, compilationUnit.getJavaProject().getOptions(true), this.resolveBindings, cloneCachingContents, this.reconcileFlags, this.progressMonitor);
                    this.ast = convertCompilationUnit;
                    if (convertCompilationUnit != null) {
                        JavaElementDeltaBuilder javaElementDeltaBuilder = this.deltaBuilder;
                        if (javaElementDeltaBuilder.delta == null) {
                            javaElementDeltaBuilder.delta = new JavaElementDelta(compilationUnit);
                        }
                        this.deltaBuilder.delta.changedAST(this.ast);
                    }
                    SubMonitor subMonitor2 = this.progressMonitor;
                    if (subMonitor2 != null) {
                        subMonitor2.worked(1);
                    }
                }
                JavaModelManager.getJavaModelManager().abortOnMissingSource.set(null);
            } catch (Throwable th2) {
                th = th2;
                JavaModelManager.getJavaModelManager().abortOnMissingSource.set(null);
                if (0 != 0) {
                    compilationUnitDeclaration2.cleanUp();
                }
                throw th;
            }
        } catch (JavaModelException e11) {
            e = e11;
            compilationUnitDeclaration = null;
        } catch (Throwable th3) {
            th = th3;
            JavaModelManager.getJavaModelManager().abortOnMissingSource.set(null);
            if (0 != 0) {
            }
            throw th;
        }
    }

    @Override
    public IJavaModelStatus verify() {
        IJavaModelStatus verify = super.verify();
        if (!verify.isOK()) {
            return verify;
        }
        CompilationUnit workingCopy = getWorkingCopy();
        return !workingCopy.isWorkingCopy() ? new JavaModelStatus(969, workingCopy) : verify;
    }
}
