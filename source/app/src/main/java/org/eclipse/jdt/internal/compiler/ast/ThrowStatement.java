package org.eclipse.jdt.internal.compiler.ast;

import org.eclipse.jdt.internal.compiler.ASTVisitor;
import org.eclipse.jdt.internal.compiler.classfmt.ClassFileConstants;
import org.eclipse.jdt.internal.compiler.codegen.CodeStream;
import org.eclipse.jdt.internal.compiler.flow.FlowContext;
import org.eclipse.jdt.internal.compiler.flow.FlowInfo;
import org.eclipse.jdt.internal.compiler.lookup.BlockScope;
import org.eclipse.jdt.internal.compiler.lookup.TypeBinding;

public class ThrowStatement extends Statement {
    public Expression exception;
    public TypeBinding exceptionType;

    public ThrowStatement(Expression expression, int i10, int i11) {
        this.exception = expression;
        this.sourceStart = i10;
        this.sourceEnd = i11;
    }

    @Override
    public FlowInfo analyseCode(BlockScope blockScope, FlowContext flowContext, FlowInfo flowInfo) {
        this.exception.analyseCode(blockScope, flowContext, flowInfo);
        this.exception.checkNPE(blockScope, flowContext, flowInfo);
        flowContext.checkExceptionHandlers(this.exceptionType, this, flowInfo, blockScope);
        blockScope.checkUnclosedCloseables(flowInfo, flowContext, this, blockScope);
        flowContext.recordAbruptExit();
        return FlowInfo.DEAD_END;
    }

    @Override
    public boolean doesNotCompleteNormally() {
        return true;
    }

    @Override
    public void generateCode(BlockScope blockScope, CodeStream codeStream) {
        if ((this.bits & Integer.MIN_VALUE) == 0) {
            return;
        }
        int i10 = codeStream.position;
        this.exception.generateCode(blockScope, codeStream, true);
        codeStream.athrow();
        codeStream.recordPositionsFrom(i10, this.sourceStart);
    }

    @Override
    public StringBuffer printStatement(int i10, StringBuffer stringBuffer) {
        ASTNode.printIndent(i10, stringBuffer).append("throw ");
        this.exception.printExpression(0, stringBuffer);
        stringBuffer.append(';');
        return stringBuffer;
    }

    @Override
    public void resolve(BlockScope blockScope) {
        TypeBinding resolveType = this.exception.resolveType(blockScope);
        this.exceptionType = resolveType;
        if (resolveType == null || !resolveType.isValidBinding()) {
            return;
        }
        TypeBinding typeBinding = this.exceptionType;
        if (typeBinding == TypeBinding.NULL) {
            if (blockScope.compilerOptions().complianceLevel <= ClassFileConstants.JDK1_3) {
                blockScope.problemReporter().cannotThrowNull(this.exception);
            }
        } else if (typeBinding.findSuperTypeOriginatingFrom(21, true) == null) {
            blockScope.problemReporter().cannotThrowType(this.exception, this.exceptionType);
        }
        Expression expression = this.exception;
        TypeBinding typeBinding2 = this.exceptionType;
        expression.computeConversion(blockScope, typeBinding2, typeBinding2);
    }

    @Override
    public void traverse(ASTVisitor aSTVisitor, BlockScope blockScope) {
        if (aSTVisitor.visit(this, blockScope)) {
            this.exception.traverse(aSTVisitor, blockScope);
        }
        aSTVisitor.endVisit(this, blockScope);
    }
}
