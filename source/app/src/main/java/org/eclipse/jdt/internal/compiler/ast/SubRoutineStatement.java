package org.eclipse.jdt.internal.compiler.ast;

import org.eclipse.jdt.internal.compiler.codegen.CodeStream;
import org.eclipse.jdt.internal.compiler.codegen.ExceptionLabel;
import org.eclipse.jdt.internal.compiler.lookup.BlockScope;
import org.eclipse.jdt.internal.compiler.lookup.LocalVariableBinding;

public abstract class SubRoutineStatement extends Statement {
    ExceptionLabel anyExceptionLabel;

    public static void reenterAllExceptionHandlers(SubRoutineStatement[] subRoutineStatementArr, int i10, CodeStream codeStream) {
        if (subRoutineStatementArr == null) {
            return;
        }
        if (i10 < 0) {
            i10 = subRoutineStatementArr.length;
        }
        for (int i11 = 0; i11 < i10; i11++) {
            SubRoutineStatement subRoutineStatement = subRoutineStatementArr[i11];
            subRoutineStatement.enterAnyExceptionHandler(codeStream);
            subRoutineStatement.enterDeclaredExceptionHandlers(codeStream);
        }
    }

    public ExceptionLabel enterAnyExceptionHandler(CodeStream codeStream) {
        if (this.anyExceptionLabel == null) {
            this.anyExceptionLabel = new ExceptionLabel(codeStream, null);
        }
        this.anyExceptionLabel.placeStart();
        return this.anyExceptionLabel;
    }

    public void enterDeclaredExceptionHandlers(CodeStream codeStream) {
    }

    public void exitAnyExceptionHandler() {
        ExceptionLabel exceptionLabel = this.anyExceptionLabel;
        if (exceptionLabel != null) {
            exceptionLabel.placeEnd();
        }
    }

    public void exitDeclaredExceptionHandlers(CodeStream codeStream) {
    }

    public abstract boolean generateSubRoutineInvocation(BlockScope blockScope, CodeStream codeStream, Object obj, int i10, LocalVariableBinding localVariableBinding);

    public abstract boolean isSubRoutineEscaping();

    public void placeAllAnyExceptionHandler() {
        this.anyExceptionLabel.place();
    }
}
