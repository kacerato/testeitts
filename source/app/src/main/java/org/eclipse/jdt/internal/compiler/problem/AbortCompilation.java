package org.eclipse.jdt.internal.compiler.problem;

import org.eclipse.jdt.core.compiler.CategorizedProblem;
import org.eclipse.jdt.internal.compiler.CompilationResult;
import org.eclipse.jdt.internal.compiler.ast.ASTNode;
import org.eclipse.jdt.internal.compiler.lookup.InvocationSite;
import org.eclipse.jdt.internal.compiler.util.Util;

public class AbortCompilation extends RuntimeException {
    private static final long serialVersionUID = -2047226595083244852L;
    public CompilationResult compilationResult;
    public Throwable exception;
    public boolean isSilent;
    public CategorizedProblem problem;
    public RuntimeException silentException;

    public AbortCompilation() {
    }

    public String getKey() {
        StringBuffer stringBuffer = new StringBuffer();
        CategorizedProblem categorizedProblem = this.problem;
        if (categorizedProblem != null) {
            stringBuffer.append((Object) categorizedProblem);
        }
        return String.valueOf(stringBuffer);
    }

    @Override
    public String getMessage() {
        String message = super.getMessage();
        if (message == null) {
            message = Util.EMPTY_STRING;
        }
        StringBuffer stringBuffer = new StringBuffer(message);
        CategorizedProblem categorizedProblem = this.problem;
        if (categorizedProblem != null) {
            stringBuffer.append((Object) categorizedProblem);
        } else {
            Throwable th2 = this.exception;
            if (th2 != null) {
                String message2 = th2.getMessage();
                if (message2 == null) {
                    message2 = Util.EMPTY_STRING;
                }
                stringBuffer.append(message2);
            } else {
                RuntimeException runtimeException = this.silentException;
                if (runtimeException != null) {
                    String message3 = runtimeException.getMessage();
                    if (message3 == null) {
                        message3 = Util.EMPTY_STRING;
                    }
                    stringBuffer.append(message3);
                }
            }
        }
        return String.valueOf(stringBuffer);
    }

    public void updateContext(InvocationSite invocationSite, CompilationResult compilationResult) {
        CategorizedProblem categorizedProblem = this.problem;
        if (categorizedProblem != null && categorizedProblem.getSourceStart() == 0 && this.problem.getSourceEnd() == 0) {
            this.problem.setSourceStart(invocationSite.sourceStart());
            this.problem.setSourceEnd(invocationSite.sourceEnd());
            this.problem.setSourceLineNumber(Util.getLineNumber(invocationSite.sourceStart(), compilationResult.getLineSeparatorPositions(), 0, r0.length - 1));
            this.compilationResult = compilationResult;
        }
    }

    public AbortCompilation(CompilationResult compilationResult, CategorizedProblem categorizedProblem) {
        this();
        this.compilationResult = compilationResult;
        this.problem = categorizedProblem;
    }

    public AbortCompilation(CompilationResult compilationResult, Throwable th2) {
        this();
        this.compilationResult = compilationResult;
        this.exception = th2;
    }

    public AbortCompilation(boolean z10, RuntimeException runtimeException) {
        this();
        this.isSilent = z10;
        this.silentException = runtimeException;
    }

    public void updateContext(ASTNode aSTNode, CompilationResult compilationResult) {
        CategorizedProblem categorizedProblem = this.problem;
        if (categorizedProblem != null && categorizedProblem.getSourceStart() == 0 && this.problem.getSourceEnd() == 0) {
            this.problem.setSourceStart(aSTNode.sourceStart());
            this.problem.setSourceEnd(aSTNode.sourceEnd());
            this.problem.setSourceLineNumber(Util.getLineNumber(aSTNode.sourceStart(), compilationResult.getLineSeparatorPositions(), 0, r0.length - 1));
            this.compilationResult = compilationResult;
        }
    }
}
