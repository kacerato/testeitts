package org.eclipse.jdt.internal.compiler.ast;

import org.eclipse.jdt.internal.compiler.ASTVisitor;
import org.eclipse.jdt.internal.compiler.classfmt.ClassFileConstants;
import org.eclipse.jdt.internal.compiler.codegen.BranchLabel;
import org.eclipse.jdt.internal.compiler.codegen.CodeStream;
import org.eclipse.jdt.internal.compiler.codegen.Opcodes;
import org.eclipse.jdt.internal.compiler.flow.FlowContext;
import org.eclipse.jdt.internal.compiler.flow.FlowInfo;
import org.eclipse.jdt.internal.compiler.flow.UnconditionalFlowInfo;
import org.eclipse.jdt.internal.compiler.impl.Constant;
import org.eclipse.jdt.internal.compiler.lookup.BlockScope;
import org.eclipse.jdt.internal.compiler.lookup.FieldBinding;
import org.eclipse.jdt.internal.compiler.lookup.ReferenceBinding;
import org.eclipse.jdt.internal.compiler.lookup.SourceTypeBinding;
import org.eclipse.jdt.internal.compiler.lookup.TypeBinding;

public class AssertStatement extends Statement {
    public Expression assertExpression;
    private FieldBinding assertionSyntheticFieldBinding;
    public Expression exceptionArgument;
    int preAssertInitStateIndex = -1;

    public AssertStatement(Expression expression, Expression expression2, int i10) {
        this.assertExpression = expression2;
        this.exceptionArgument = expression;
        this.sourceStart = i10;
        this.sourceEnd = expression.sourceEnd;
    }

    @Override
    public FlowInfo analyseCode(BlockScope blockScope, FlowContext flowContext, FlowInfo flowInfo) {
        this.preAssertInitStateIndex = blockScope.methodScope().recordInitializationStates(flowInfo);
        Constant optimizedBooleanConstant = this.assertExpression.optimizedBooleanConstant();
        this.assertExpression.checkNPEbyUnboxing(blockScope, flowContext, flowInfo);
        Constant constant = Constant.NotAConstant;
        boolean z10 = false;
        boolean z11 = optimizedBooleanConstant != constant && optimizedBooleanConstant.booleanValue();
        if (optimizedBooleanConstant != constant && !optimizedBooleanConstant.booleanValue()) {
            z10 = true;
        }
        flowContext.tagBits |= 4096;
        FlowInfo analyseCode = this.assertExpression.analyseCode(blockScope, flowContext, flowInfo.copy());
        flowContext.extendTimeToLiveForNullCheckedField(1);
        flowContext.tagBits &= -4097;
        UnconditionalFlowInfo unconditionalInits = analyseCode.initsWhenTrue().unconditionalInits();
        FlowInfo initsWhenFalse = analyseCode.initsWhenFalse();
        if (z11) {
            initsWhenFalse.setReachMode(1);
        }
        Expression expression = this.exceptionArgument;
        if (expression != null) {
            FlowInfo analyseCode2 = expression.analyseCode(blockScope, flowContext, initsWhenFalse.copy());
            if (z11) {
                blockScope.problemReporter().fakeReachable(this.exceptionArgument);
            } else {
                flowContext.checkExceptionHandlers(blockScope.getJavaLangAssertionError(), this, analyseCode2, blockScope);
            }
        }
        if (!z11) {
            manageSyntheticAccessIfNecessary(blockScope, flowInfo);
        }
        flowContext.recordAbruptExit();
        return z10 ? flowInfo : !blockScope.compilerOptions().includeNullInfoFromAsserts ? flowInfo.nullInfoLessUnconditionalCopy().mergedWith(initsWhenFalse.nullInfoLessUnconditionalCopy()).addNullInfoFrom(flowInfo) : flowInfo.mergedWith(initsWhenFalse.nullInfoLessUnconditionalCopy()).addInitializationsFrom(unconditionalInits.discardInitializationInfo());
    }

    @Override
    public void generateCode(BlockScope blockScope, CodeStream codeStream) {
        if ((this.bits & Integer.MIN_VALUE) == 0) {
            return;
        }
        int i10 = codeStream.position;
        if (this.assertionSyntheticFieldBinding != null) {
            BranchLabel branchLabel = new BranchLabel(codeStream);
            codeStream.fieldAccess(Opcodes.OPC_getstatic, this.assertionSyntheticFieldBinding, null);
            codeStream.ifne(branchLabel);
            Expression expression = this.assertExpression;
            BranchLabel branchLabel2 = new BranchLabel(codeStream);
            expression.generateOptimizedBoolean(blockScope, codeStream, branchLabel2, null, true);
            codeStream.newJavaLangAssertionError();
            codeStream.dup();
            Expression expression2 = this.exceptionArgument;
            if (expression2 != null) {
                expression2.generateCode(blockScope, codeStream, true);
                codeStream.invokeJavaLangAssertionErrorConstructor(this.exceptionArgument.implicitConversion & 15);
            } else {
                codeStream.invokeJavaLangAssertionErrorDefaultConstructor();
            }
            codeStream.athrow();
            int i11 = this.preAssertInitStateIndex;
            if (i11 != -1) {
                codeStream.removeNotDefinitelyAssignedVariables(blockScope, i11);
            }
            branchLabel2.place();
            branchLabel.place();
        } else {
            int i12 = this.preAssertInitStateIndex;
            if (i12 != -1) {
                codeStream.removeNotDefinitelyAssignedVariables(blockScope, i12);
            }
        }
        codeStream.recordPositionsFrom(i10, this.sourceStart);
    }

    public void manageSyntheticAccessIfNecessary(BlockScope blockScope, FlowInfo flowInfo) {
        ReferenceBinding enclosingType;
        if ((flowInfo.tagBits & 1) == 0) {
            SourceTypeBinding enclosingSourceType = blockScope.enclosingSourceType();
            while (enclosingSourceType.isLocalType() && (enclosingType = enclosingSourceType.enclosingType()) != null && !enclosingType.isInterface()) {
                enclosingSourceType = (SourceTypeBinding) enclosingType;
            }
            this.assertionSyntheticFieldBinding = enclosingSourceType.addSyntheticFieldForAssert(blockScope);
            for (AbstractMethodDeclaration abstractMethodDeclaration : enclosingSourceType.scope.referenceType().methods) {
                if (abstractMethodDeclaration.isClinit()) {
                    ((Clinit) abstractMethodDeclaration).setAssertionSupport(this.assertionSyntheticFieldBinding, blockScope.compilerOptions().sourceLevel < ClassFileConstants.JDK1_5);
                    return;
                }
            }
        }
    }

    @Override
    public StringBuffer printStatement(int i10, StringBuffer stringBuffer) {
        ASTNode.printIndent(i10, stringBuffer);
        stringBuffer.append("assert ");
        this.assertExpression.printExpression(0, stringBuffer);
        if (this.exceptionArgument != null) {
            stringBuffer.append(": ");
            this.exceptionArgument.printExpression(0, stringBuffer);
        }
        stringBuffer.append(';');
        return stringBuffer;
    }

    @Override
    public void resolve(BlockScope blockScope) {
        TypeBinding resolveType;
        this.assertExpression.resolveTypeExpecting(blockScope, TypeBinding.BOOLEAN);
        Expression expression = this.exceptionArgument;
        if (expression == null || (resolveType = expression.resolveType(blockScope)) == null) {
            return;
        }
        int i10 = resolveType.f102482id;
        switch (i10) {
            case 2:
            case 3:
            case 4:
            case 5:
            case 7:
            case 8:
            case 9:
            case 10:
            case 11:
                break;
            case 6:
                blockScope.problemReporter().illegalVoidExpression(this.exceptionArgument);
            default:
                i10 = 1;
                break;
        }
        this.exceptionArgument.implicitConversion = (i10 << 4) + i10;
    }

    @Override
    public void traverse(ASTVisitor aSTVisitor, BlockScope blockScope) {
        if (aSTVisitor.visit(this, blockScope)) {
            this.assertExpression.traverse(aSTVisitor, blockScope);
            Expression expression = this.exceptionArgument;
            if (expression != null) {
                expression.traverse(aSTVisitor, blockScope);
            }
        }
        aSTVisitor.endVisit(this, blockScope);
    }

    public AssertStatement(Expression expression, int i10) {
        this.assertExpression = expression;
        this.sourceStart = i10;
        this.sourceEnd = expression.sourceEnd;
    }
}
