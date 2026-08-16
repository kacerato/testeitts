package org.eclipse.jdt.core.compiler;

import java.util.HashMap;
import org.eclipse.jdt.core.ICompilationUnit;
import org.eclipse.jdt.core.IJavaElementDelta;
import org.eclipse.jdt.core.IJavaModelMarker;
import org.eclipse.jdt.core.JavaModelException;
import org.eclipse.jdt.core.dom.ASTParser;
import org.eclipse.jdt.internal.core.CompilationUnit;
import org.eclipse.jdt.internal.core.JavaProject;
import org.eclipse.jdt.internal.core.ReconcileWorkingCopyOperation;

public class ReconcileContext {
    private ReconcileWorkingCopyOperation operation;
    private CompilationUnit workingCopy;

    public ReconcileContext(ReconcileWorkingCopyOperation reconcileWorkingCopyOperation, CompilationUnit compilationUnit) {
        this.operation = reconcileWorkingCopyOperation;
        this.workingCopy = compilationUnit;
    }

    public org.eclipse.jdt.core.dom.CompilationUnit getAST(int i10) throws JavaModelException {
        ReconcileWorkingCopyOperation reconcileWorkingCopyOperation = this.operation;
        if (reconcileWorkingCopyOperation.astLevel == i10 && reconcileWorkingCopyOperation.resolveBindings) {
            return reconcileWorkingCopyOperation.makeConsistent(this.workingCopy);
        }
        ASTParser newParser = ASTParser.newParser(i10);
        newParser.setCompilerOptions(this.workingCopy.getJavaProject().getOptions(true));
        if (JavaProject.hasJavaNature(this.workingCopy.getJavaProject().getProject())) {
            newParser.setResolveBindings(true);
        }
        newParser.setStatementsRecovery((this.operation.reconcileFlags & 2) != 0);
        newParser.setBindingsRecovery((this.operation.reconcileFlags & 4) != 0);
        newParser.setSource((ICompilationUnit) this.workingCopy);
        newParser.setIgnoreMethodBodies((this.operation.reconcileFlags & 8) != 0);
        return (org.eclipse.jdt.core.dom.CompilationUnit) newParser.createAST(this.operation.progressMonitor);
    }

    public org.eclipse.jdt.core.dom.CompilationUnit getAST3() throws JavaModelException {
        return getAST(3);
    }

    public org.eclipse.jdt.core.dom.CompilationUnit getAST4() throws JavaModelException {
        return getAST(4);
    }

    public org.eclipse.jdt.core.dom.CompilationUnit getAST8() throws JavaModelException {
        return getAST(8);
    }

    public int getASTLevel() {
        return this.operation.astLevel;
    }

    public IJavaElementDelta getDelta() {
        return this.operation.deltaBuilder.delta;
    }

    public CategorizedProblem[] getProblems(String str) {
        HashMap hashMap = this.operation.problems;
        if (hashMap == null) {
            return null;
        }
        return (CategorizedProblem[]) hashMap.get(str);
    }

    public int getReconcileFlags() {
        return this.operation.reconcileFlags;
    }

    public ICompilationUnit getWorkingCopy() {
        return this.workingCopy;
    }

    public boolean isResolvingBindings() {
        return this.operation.resolveBindings;
    }

    public void putProblems(String str, CategorizedProblem[] categorizedProblemArr) {
        ReconcileWorkingCopyOperation reconcileWorkingCopyOperation = this.operation;
        if (reconcileWorkingCopyOperation.problems == null) {
            reconcileWorkingCopyOperation.problems = new HashMap();
        }
        this.operation.problems.put(str, categorizedProblemArr);
    }

    public void resetAST() {
        this.operation.ast = null;
        putProblems(IJavaModelMarker.JAVA_MODEL_PROBLEM_MARKER, null);
        putProblems(IJavaModelMarker.TASK_MARKER, null);
    }
}
