package org.eclipse.jdt.internal.compiler.ast;

import org.eclipse.jdt.internal.compiler.ASTVisitor;
import org.eclipse.jdt.internal.compiler.classfmt.ClassFileConstants;
import org.eclipse.jdt.internal.compiler.codegen.CodeStream;
import org.eclipse.jdt.internal.compiler.flow.FlowContext;
import org.eclipse.jdt.internal.compiler.flow.FlowInfo;
import org.eclipse.jdt.internal.compiler.flow.UnconditionalFlowInfo;
import org.eclipse.jdt.internal.compiler.impl.CompilerOptions;
import org.eclipse.jdt.internal.compiler.impl.Constant;
import org.eclipse.jdt.internal.compiler.lookup.BaseTypeBinding;
import org.eclipse.jdt.internal.compiler.lookup.Binding;
import org.eclipse.jdt.internal.compiler.lookup.BlockScope;
import org.eclipse.jdt.internal.compiler.lookup.FieldBinding;
import org.eclipse.jdt.internal.compiler.lookup.LocalVariableBinding;
import org.eclipse.jdt.internal.compiler.lookup.ReferenceBinding;
import org.eclipse.jdt.internal.compiler.lookup.TypeBinding;
import org.eclipse.jdt.internal.compiler.lookup.VariableBinding;
import org.eclipse.jdt.internal.compiler.lookup.WildcardBinding;

public class Assignment extends Expression {
    public Expression expression;
    public Expression lhs;

    public Assignment(Expression expression, Expression expression2, int i10) {
        this.lhs = expression;
        expression.bits |= 8192;
        this.expression = expression2;
        this.sourceStart = expression.sourceStart;
        this.sourceEnd = i10;
    }

    @Override
    public FlowInfo analyseCode(BlockScope blockScope, FlowContext flowContext, FlowInfo flowInfo) {
        UnconditionalFlowInfo unconditionalFlowInfo;
        LocalVariableBinding localVariableBinding = this.lhs.localVariableBinding();
        this.expression.checkNPEbyUnboxing(blockScope, flowContext, flowInfo);
        CompilerOptions compilerOptions = blockScope.compilerOptions();
        boolean z10 = localVariableBinding != null && flowInfo.reachMode() == 0 && compilerOptions.analyseResourceLeaks && (FakedTrackingVariable.isAnyCloseable(this.expression.resolvedType) || this.expression.resolvedType == TypeBinding.NULL);
        if (z10) {
            unconditionalFlowInfo = flowInfo.unconditionalCopy();
            FakedTrackingVariable.preConnectTrackerAcrossAssignment(this, localVariableBinding, this.expression, flowInfo);
        } else {
            unconditionalFlowInfo = null;
        }
        UnconditionalFlowInfo unconditionalFlowInfo2 = unconditionalFlowInfo;
        UnconditionalFlowInfo unconditionalInits = ((Reference) this.lhs).analyseAssignment(blockScope, flowContext, flowInfo, this, false).unconditionalInits();
        if (z10) {
            FakedTrackingVariable.handleResourceAssignment(blockScope, unconditionalFlowInfo2, unconditionalInits, flowContext, this, this.expression, localVariableBinding);
        } else {
            FakedTrackingVariable.cleanUpAfterAssignment(blockScope, this.lhs.bits, this.expression);
        }
        int nullStatus = this.expression.nullStatus(unconditionalInits, flowContext);
        if (localVariableBinding != null && (localVariableBinding.type.tagBits & 2) == 0 && nullStatus == 2) {
            flowContext.recordUsingNullReference(blockScope, localVariableBinding, this.lhs, 769, unconditionalInits);
        }
        if (compilerOptions.isAnnotationBasedNullAnalysisEnabled) {
            VariableBinding nullAnnotatedVariableBinding = this.lhs.nullAnnotatedVariableBinding(compilerOptions.sourceLevel >= ClassFileConstants.JDK1_8);
            if (nullAnnotatedVariableBinding != null) {
                Expression expression = this.expression;
                nullStatus = NullAnnotationMatching.checkAssignment(blockScope, flowContext, nullAnnotatedVariableBinding, unconditionalInits, nullStatus, expression, expression.resolvedType);
                if (nullStatus == 4 && (nullAnnotatedVariableBinding instanceof FieldBinding)) {
                    Expression expression2 = this.lhs;
                    if ((expression2 instanceof Reference) && compilerOptions.enableSyntacticNullAnalysisForFields) {
                        flowContext.recordNullCheckedFieldReference((Reference) expression2, (this.bits & 1048576) != 0 ? 2 : 1);
                    }
                }
            }
        }
        if (localVariableBinding != null && (localVariableBinding.type.tagBits & 2) == 0) {
            unconditionalInits.markNullStatus(localVariableBinding, nullStatus);
            flowContext.markFinallyNullStatus(localVariableBinding, nullStatus);
        }
        return unconditionalInits;
    }

    public void checkAssignment(BlockScope blockScope, TypeBinding typeBinding, TypeBinding typeBinding2) {
        ReferenceBinding referenceBinding;
        FieldBinding lastField = getLastField(this.lhs);
        if (lastField != null && typeBinding2 != TypeBinding.NULL && typeBinding.kind() == 516 && ((WildcardBinding) typeBinding).boundKind != 2) {
            blockScope.problemReporter().wildcardAssignment(typeBinding, typeBinding2, this.expression);
            return;
        }
        if (lastField != null && !lastField.isStatic() && (referenceBinding = lastField.declaringClass) != null && referenceBinding.isRawType()) {
            blockScope.problemReporter().unsafeRawFieldAssignment(lastField, typeBinding2, this.lhs);
        } else if (typeBinding2.needsUncheckedConversion(typeBinding)) {
            blockScope.problemReporter().unsafeTypeConversion(this.expression, typeBinding2, typeBinding);
        }
    }

    @Override
    public void generateCode(BlockScope blockScope, CodeStream codeStream, boolean z10) {
        int i10 = codeStream.position;
        ((Reference) this.lhs).generateAssignment(blockScope, codeStream, this, z10);
        codeStream.recordPositionsFrom(i10, this.sourceStart);
    }

    public FieldBinding getLastField(Expression expression) {
        if (expression instanceof SingleNameReference) {
            if ((expression.bits & 7) == 1) {
                return (FieldBinding) ((SingleNameReference) expression).binding;
            }
            return null;
        }
        if (expression instanceof FieldReference) {
            return ((FieldReference) expression).binding;
        }
        if (!(expression instanceof QualifiedNameReference)) {
            return null;
        }
        QualifiedNameReference qualifiedNameReference = (QualifiedNameReference) expression;
        FieldBinding[] fieldBindingArr = qualifiedNameReference.otherBindings;
        if (fieldBindingArr != null) {
            return fieldBindingArr[fieldBindingArr.length - 1];
        }
        if ((expression.bits & 7) == 1) {
            return (FieldBinding) qualifiedNameReference.binding;
        }
        return null;
    }

    @Override
    public LocalVariableBinding localVariableBinding() {
        return this.lhs.localVariableBinding();
    }

    @Override
    public int nullStatus(FlowInfo flowInfo, FlowContext flowContext) {
        if ((this.implicitConversion & 512) != 0) {
            return 4;
        }
        return this.expression.nullStatus(flowInfo, flowContext);
    }

    @Override
    public StringBuffer print(int i10, StringBuffer stringBuffer) {
        ASTNode.printIndent(i10, stringBuffer);
        return printExpressionNoParenthesis(i10, stringBuffer);
    }

    @Override
    public StringBuffer printExpression(int i10, StringBuffer stringBuffer) {
        stringBuffer.append('(');
        StringBuffer printExpressionNoParenthesis = printExpressionNoParenthesis(0, stringBuffer);
        printExpressionNoParenthesis.append(')');
        return printExpressionNoParenthesis;
    }

    public StringBuffer printExpressionNoParenthesis(int i10, StringBuffer stringBuffer) {
        this.lhs.printExpression(i10, stringBuffer).append(" = ");
        return this.expression.printExpression(0, stringBuffer);
    }

    @Override
    public StringBuffer printStatement(int i10, StringBuffer stringBuffer) {
        StringBuffer print = print(i10, stringBuffer);
        print.append(';');
        return print;
    }

    @Override
    public TypeBinding resolveType(BlockScope blockScope) {
        this.constant = Constant.NotAConstant;
        Expression expression = this.lhs;
        if (!(expression instanceof Reference) || expression.isThis()) {
            blockScope.problemReporter().expressionShouldBeAVariable(this.lhs);
            return null;
        }
        TypeBinding resolveType = this.lhs.resolveType(blockScope);
        this.expression.setExpressionContext(ExpressionContext.ASSIGNMENT_CONTEXT);
        this.expression.setExpectedType(resolveType);
        if (resolveType != null) {
            Expression expression2 = this.lhs;
            this.resolvedType = resolveType.capture(blockScope, expression2.sourceStart, expression2.sourceEnd);
        }
        LocalVariableBinding localVariableBinding = this.lhs.localVariableBinding();
        if (localVariableBinding != null && (localVariableBinding.isCatchParameter() || localVariableBinding.isParameter())) {
            localVariableBinding.tagBits &= -2049;
        }
        TypeBinding resolveType2 = this.expression.resolveType(blockScope);
        if (resolveType == null || resolveType2 == null) {
            return null;
        }
        Binding directBinding = Expression.getDirectBinding(this.lhs);
        if (directBinding != null && !directBinding.isVolatile() && directBinding == Expression.getDirectBinding(this.expression)) {
            blockScope.problemReporter().assignmentHasNoEffect(this, directBinding.shortReadableName());
        }
        if (TypeBinding.notEquals(resolveType, resolveType2)) {
            blockScope.compilationUnitScope().recordTypeConversion(resolveType, resolveType2);
        }
        if (this.expression.isConstantValueOfTypeAssignableToType(resolveType2, resolveType) || resolveType2.isCompatibleWith(resolveType, blockScope)) {
            this.expression.computeConversion(blockScope, resolveType, resolveType2);
            checkAssignment(blockScope, resolveType, resolveType2);
            Expression expression3 = this.expression;
            if ((expression3 instanceof CastExpression) && (expression3.bits & 16384) == 0) {
                CastExpression.checkNeedForAssignedCast(blockScope, resolveType, (CastExpression) expression3);
            }
            return this.resolvedType;
        }
        if (!isBoxingCompatible(resolveType2, resolveType, this.expression, blockScope)) {
            blockScope.problemReporter().typeMismatchError(resolveType2, resolveType, this.expression, this.lhs);
            return resolveType;
        }
        this.expression.computeConversion(blockScope, resolveType, resolveType2);
        Expression expression4 = this.expression;
        if ((expression4 instanceof CastExpression) && (expression4.bits & 16384) == 0) {
            CastExpression.checkNeedForAssignedCast(blockScope, resolveType, (CastExpression) expression4);
        }
        return this.resolvedType;
    }

    @Override
    public TypeBinding resolveTypeExpecting(BlockScope blockScope, TypeBinding typeBinding) {
        TypeBinding resolveTypeExpecting = super.resolveTypeExpecting(blockScope, typeBinding);
        if (resolveTypeExpecting == null) {
            return null;
        }
        TypeBinding typeBinding2 = this.resolvedType;
        TypeBinding typeBinding3 = this.expression.resolvedType;
        BaseTypeBinding baseTypeBinding = TypeBinding.BOOLEAN;
        if (TypeBinding.equalsEquals(typeBinding, baseTypeBinding) && TypeBinding.equalsEquals(typeBinding2, baseTypeBinding) && (this.lhs.bits & 8192) != 0) {
            blockScope.problemReporter().possibleAccidentalBooleanAssignment(this);
        }
        checkAssignment(blockScope, typeBinding2, typeBinding3);
        return resolveTypeExpecting;
    }

    @Override
    public boolean statementExpression() {
        return (this.bits & ASTNode.ParenthesizedMASK) == 0;
    }

    @Override
    public void traverse(ASTVisitor aSTVisitor, BlockScope blockScope) {
        if (aSTVisitor.visit(this, blockScope)) {
            this.lhs.traverse(aSTVisitor, blockScope);
            this.expression.traverse(aSTVisitor, blockScope);
        }
        aSTVisitor.endVisit(this, blockScope);
    }
}
