package org.eclipse.jdt.internal.compiler.ast;

import org.eclipse.jdt.internal.compiler.codegen.BranchLabel;
import org.eclipse.jdt.internal.compiler.codegen.CodeStream;
import org.eclipse.jdt.internal.compiler.lookup.BlockScope;

public abstract class BranchStatement extends Statement {
    public int initStateIndex = -1;
    public char[] label;
    public SubRoutineStatement[] subroutines;
    public BranchLabel targetLabel;

    public BranchStatement(char[] cArr, int i10, int i11) {
        this.label = cArr;
        this.sourceStart = i10;
        this.sourceEnd = i11;
    }

    public void adjustStackSize(BlockScope blockScope, CodeStream codeStream) {
    }

    @Override
    public void generateCode(BlockScope blockScope, CodeStream codeStream) {
        if ((this.bits & Integer.MIN_VALUE) == 0) {
            return;
        }
        generateExpressionResultCode(blockScope, codeStream);
        int i10 = codeStream.position;
        SubRoutineStatement[] subRoutineStatementArr = this.subroutines;
        if (subRoutineStatementArr != null) {
            int length = subRoutineStatementArr.length;
            for (int i11 = 0; i11 < length; i11++) {
                if (this.subroutines[i11].generateSubRoutineInvocation(blockScope, codeStream, this.targetLabel, this.initStateIndex, null)) {
                    codeStream.recordPositionsFrom(i10, this.sourceStart);
                    SubRoutineStatement.reenterAllExceptionHandlers(this.subroutines, i11, codeStream);
                    int i12 = this.initStateIndex;
                    if (i12 != -1) {
                        codeStream.removeNotDefinitelyAssignedVariables(blockScope, i12);
                        codeStream.addDefinitelyAssignedVariables(blockScope, this.initStateIndex);
                        return;
                    }
                    return;
                }
            }
        }
        codeStream.goto_(this.targetLabel);
        adjustStackSize(blockScope, codeStream);
        codeStream.recordPositionsFrom(i10, this.sourceStart);
        SubRoutineStatement.reenterAllExceptionHandlers(this.subroutines, -1, codeStream);
        int i13 = this.initStateIndex;
        if (i13 != -1) {
            codeStream.removeNotDefinitelyAssignedVariables(blockScope, i13);
            codeStream.addDefinitelyAssignedVariables(blockScope, this.initStateIndex);
        }
    }

    public void generateExpressionResultCode(BlockScope blockScope, CodeStream codeStream) {
    }

    @Override
    public void resolve(BlockScope blockScope) {
    }
}
