package org.eclipse.jdt.internal.compiler.ast;

import org.eclipse.jdt.internal.compiler.ASTVisitor;
import org.eclipse.jdt.internal.compiler.codegen.CodeStream;
import org.eclipse.jdt.internal.compiler.flow.FlowContext;
import org.eclipse.jdt.internal.compiler.flow.FlowInfo;
import org.eclipse.jdt.internal.compiler.impl.Constant;
import org.eclipse.jdt.internal.compiler.lookup.ArrayBinding;
import org.eclipse.jdt.internal.compiler.lookup.BaseTypeBinding;
import org.eclipse.jdt.internal.compiler.lookup.BlockScope;
import org.eclipse.jdt.internal.compiler.lookup.TagBits;
import org.eclipse.jdt.internal.compiler.lookup.TypeBinding;
import org.eclipse.jdt.internal.core.JavaElement;

public class ArrayReference extends Reference {
    public Expression position;
    public Expression receiver;

    public ArrayReference(Expression expression, Expression expression2) {
        this.receiver = expression;
        this.position = expression2;
        this.sourceStart = expression.sourceStart;
    }

    @Override
    public FlowInfo analyseAssignment(BlockScope blockScope, FlowContext flowContext, FlowInfo flowInfo, Assignment assignment, boolean z10) {
        flowContext.recordAbruptExit();
        Expression expression = assignment.expression;
        if (expression == null) {
            return analyseCode(blockScope, flowContext, flowInfo);
        }
        FlowInfo analyseCode = expression.analyseCode(blockScope, flowContext, analyseCode(blockScope, flowContext, flowInfo).unconditionalInits());
        if (blockScope.environment().usesNullTypeAnnotations()) {
            checkAgainstNullTypeAnnotation(blockScope, this.resolvedType, assignment.expression, flowContext, analyseCode);
        }
        return analyseCode;
    }

    @Override
    public FlowInfo analyseCode(BlockScope blockScope, FlowContext flowContext, FlowInfo flowInfo) {
        FlowInfo analyseCode = this.receiver.analyseCode(blockScope, flowContext, flowInfo);
        this.receiver.checkNPE(blockScope, flowContext, analyseCode, 1);
        FlowInfo analyseCode2 = this.position.analyseCode(blockScope, flowContext, analyseCode);
        this.position.checkNPEbyUnboxing(blockScope, flowContext, analyseCode2);
        flowContext.recordAbruptExit();
        return analyseCode2;
    }

    @Override
    public boolean checkNPE(BlockScope blockScope, FlowContext flowContext, FlowInfo flowInfo, int i10) {
        if ((this.resolvedType.tagBits & 36028797018963968L) == 0) {
            return super.checkNPE(blockScope, flowContext, flowInfo, i10);
        }
        blockScope.problemReporter().arrayReferencePotentialNullReference(this);
        return true;
    }

    @Override
    public void generateAssignment(BlockScope blockScope, CodeStream codeStream, Assignment assignment, boolean z10) {
        int i10 = codeStream.position;
        this.receiver.generateCode(blockScope, codeStream, true);
        Expression expression = this.receiver;
        if ((expression instanceof CastExpression) && ((CastExpression) expression).innermostCastedExpression().resolvedType == TypeBinding.NULL) {
            codeStream.checkcast(this.receiver.resolvedType);
        }
        codeStream.recordPositionsFrom(i10, this.sourceStart);
        this.position.generateCode(blockScope, codeStream, true);
        assignment.expression.generateCode(blockScope, codeStream, true);
        codeStream.arrayAtPut(this.resolvedType.f102482id, z10);
        if (z10) {
            codeStream.generateImplicitConversion(assignment.implicitConversion);
        }
    }

    @Override
    public void generateCode(BlockScope blockScope, CodeStream codeStream, boolean z10) {
        int i10 = codeStream.position;
        this.receiver.generateCode(blockScope, codeStream, true);
        Expression expression = this.receiver;
        if ((expression instanceof CastExpression) && ((CastExpression) expression).innermostCastedExpression().resolvedType == TypeBinding.NULL) {
            codeStream.checkcast(this.receiver.resolvedType);
        }
        this.position.generateCode(blockScope, codeStream, true);
        codeStream.arrayAt(this.resolvedType.f102482id);
        if (z10) {
            codeStream.generateImplicitConversion(this.implicitConversion);
        } else {
            int i11 = this.implicitConversion;
            boolean z11 = (i11 & 1024) != 0;
            if (z11) {
                codeStream.generateImplicitConversion(i11);
            }
            int i12 = (z11 ? postConversionType(blockScope) : this.resolvedType).f102482id;
            if (i12 == 7 || i12 == 8) {
                codeStream.pop2();
            } else {
                codeStream.pop();
            }
        }
        codeStream.recordPositionsFrom(i10, this.sourceStart);
    }

    @Override
    public void generateCompoundAssignment(BlockScope blockScope, CodeStream codeStream, Expression expression, int i10, int i11, boolean z10) {
        this.receiver.generateCode(blockScope, codeStream, true);
        Expression expression2 = this.receiver;
        if ((expression2 instanceof CastExpression) && ((CastExpression) expression2).innermostCastedExpression().resolvedType == TypeBinding.NULL) {
            codeStream.checkcast(this.receiver.resolvedType);
        }
        this.position.generateCode(blockScope, codeStream, true);
        codeStream.dup2();
        codeStream.arrayAt(this.resolvedType.f102482id);
        int i12 = this.implicitConversion;
        int i13 = (i12 & 255) >> 4;
        if (i13 == 0 || i13 == 1 || i13 == 11) {
            codeStream.generateStringConcatenationAppend(blockScope, null, expression);
        } else {
            codeStream.generateImplicitConversion(i12);
            if (expression == IntLiteral.One) {
                codeStream.generateConstant(expression.constant, this.implicitConversion);
            } else {
                expression.generateCode(blockScope, codeStream, true);
            }
            codeStream.sendOperator(i10, i13);
            codeStream.generateImplicitConversion(i11);
        }
        codeStream.arrayAtPut(this.resolvedType.f102482id, z10);
    }

    @Override
    public void generatePostIncrement(BlockScope blockScope, CodeStream codeStream, CompoundAssignment compoundAssignment, boolean z10) {
        this.receiver.generateCode(blockScope, codeStream, true);
        Expression expression = this.receiver;
        if ((expression instanceof CastExpression) && ((CastExpression) expression).innermostCastedExpression().resolvedType == TypeBinding.NULL) {
            codeStream.checkcast(this.receiver.resolvedType);
        }
        this.position.generateCode(blockScope, codeStream, true);
        codeStream.dup2();
        codeStream.arrayAt(this.resolvedType.f102482id);
        if (z10) {
            int i10 = this.resolvedType.f102482id;
            if (i10 == 7 || i10 == 8) {
                codeStream.dup2_x2();
            } else {
                codeStream.dup_x2();
            }
        }
        codeStream.generateImplicitConversion(this.implicitConversion);
        codeStream.generateConstant(compoundAssignment.expression.constant, this.implicitConversion);
        codeStream.sendOperator(compoundAssignment.operator, this.implicitConversion & 15);
        codeStream.generateImplicitConversion(compoundAssignment.preAssignImplicitConversion);
        codeStream.arrayAtPut(this.resolvedType.f102482id, false);
    }

    @Override
    public int nullStatus(FlowInfo flowInfo, FlowContext flowContext) {
        TypeBinding typeBinding = this.resolvedType;
        if (typeBinding != null && (typeBinding.tagBits & TagBits.AnnotationNullMASK) == 0 && typeBinding.isFreeTypeVariable()) {
            return 48;
        }
        return super.nullStatus(flowInfo, flowContext);
    }

    @Override
    public StringBuffer printExpression(int i10, StringBuffer stringBuffer) {
        this.receiver.printExpression(0, stringBuffer).append('[');
        StringBuffer printExpression = this.position.printExpression(0, stringBuffer);
        printExpression.append(JavaElement.JEM_TYPE_PARAMETER);
        return printExpression;
    }

    @Override
    public TypeBinding resolveType(BlockScope blockScope) {
        this.constant = Constant.NotAConstant;
        Expression expression = this.receiver;
        if ((expression instanceof CastExpression) && (((CastExpression) expression).innermostCastedExpression() instanceof NullLiteral)) {
            this.receiver.bits |= 32;
        }
        TypeBinding resolveType = this.receiver.resolveType(blockScope);
        if (resolveType != null) {
            this.receiver.computeConversion(blockScope, resolveType, resolveType);
            if (resolveType.isArrayType()) {
                TypeBinding elementsType = ((ArrayBinding) resolveType).elementsType();
                if ((this.bits & 8192) == 0) {
                    elementsType = elementsType.capture(blockScope, this.sourceStart, this.sourceEnd);
                }
                this.resolvedType = elementsType;
            } else {
                blockScope.problemReporter().referenceMustBeArrayTypeAt(resolveType, this);
            }
        }
        Expression expression2 = this.position;
        BaseTypeBinding baseTypeBinding = TypeBinding.INT;
        TypeBinding resolveTypeExpecting = expression2.resolveTypeExpecting(blockScope, baseTypeBinding);
        if (resolveTypeExpecting != null) {
            this.position.computeConversion(blockScope, baseTypeBinding, resolveTypeExpecting);
        }
        return this.resolvedType;
    }

    @Override
    public void traverse(ASTVisitor aSTVisitor, BlockScope blockScope) {
        if (aSTVisitor.visit(this, blockScope)) {
            this.receiver.traverse(aSTVisitor, blockScope);
            this.position.traverse(aSTVisitor, blockScope);
        }
        aSTVisitor.endVisit(this, blockScope);
    }
}
