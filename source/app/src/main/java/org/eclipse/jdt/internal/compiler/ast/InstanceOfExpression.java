package org.eclipse.jdt.internal.compiler.ast;

import org.eclipse.jdt.internal.compiler.ASTVisitor;
import org.eclipse.jdt.internal.compiler.ast.TypeReference;
import org.eclipse.jdt.internal.compiler.codegen.CodeStream;
import org.eclipse.jdt.internal.compiler.flow.FlowContext;
import org.eclipse.jdt.internal.compiler.flow.FlowInfo;
import org.eclipse.jdt.internal.compiler.flow.UnconditionalFlowInfo;
import org.eclipse.jdt.internal.compiler.impl.Constant;
import org.eclipse.jdt.internal.compiler.lookup.BaseTypeBinding;
import org.eclipse.jdt.internal.compiler.lookup.BlockScope;
import org.eclipse.jdt.internal.compiler.lookup.FieldBinding;
import org.eclipse.jdt.internal.compiler.lookup.LocalVariableBinding;
import org.eclipse.jdt.internal.compiler.lookup.Scope;
import org.eclipse.jdt.internal.compiler.lookup.TypeBinding;

public class InstanceOfExpression extends OperatorExpression {
    public Expression expression;
    public TypeReference type;

    public InstanceOfExpression(Expression expression, TypeReference typeReference) {
        this.expression = expression;
        this.type = typeReference;
        typeReference.bits |= 1073741824;
        this.bits |= 1984;
        this.sourceStart = expression.sourceStart;
        this.sourceEnd = typeReference.sourceEnd;
    }

    @Override
    public FlowInfo analyseCode(BlockScope blockScope, FlowContext flowContext, FlowInfo flowInfo) {
        FieldBinding lastFieldBinding;
        LocalVariableBinding localVariableBinding = this.expression.localVariableBinding();
        if (localVariableBinding != null && (localVariableBinding.type.tagBits & 2) == 0) {
            UnconditionalFlowInfo unconditionalInits = this.expression.analyseCode(blockScope, flowContext, flowInfo).unconditionalInits();
            FlowInfo copy = unconditionalInits.copy();
            copy.markAsComparedEqualToNonNull(localVariableBinding);
            flowContext.recordUsingNullReference(blockScope, localVariableBinding, this.expression, 1025, unconditionalInits);
            return FlowInfo.conditional(copy, unconditionalInits.copy());
        }
        if ((this.expression instanceof Reference) && blockScope.compilerOptions().enableSyntacticNullAnalysisForFields && (lastFieldBinding = ((Reference) this.expression).lastFieldBinding()) != null && (lastFieldBinding.type.tagBits & 2) == 0) {
            flowContext.recordNullCheckedFieldReference((Reference) this.expression, 1);
        }
        return this.expression.analyseCode(blockScope, flowContext, flowInfo).unconditionalInits();
    }

    @Override
    public void generateCode(BlockScope blockScope, CodeStream codeStream, boolean z10) {
        int i10 = codeStream.position;
        this.expression.generateCode(blockScope, codeStream, true);
        TypeReference typeReference = this.type;
        codeStream.instance_of(typeReference, typeReference.resolvedType);
        if (z10) {
            codeStream.generateImplicitConversion(this.implicitConversion);
        } else {
            codeStream.pop();
        }
        codeStream.recordPositionsFrom(i10, this.sourceStart);
    }

    @Override
    public StringBuffer printExpressionNoParenthesis(int i10, StringBuffer stringBuffer) {
        this.expression.printExpression(i10, stringBuffer).append(" instanceof ");
        return this.type.print(0, stringBuffer);
    }

    @Override
    public TypeBinding resolveType(BlockScope blockScope) {
        this.constant = Constant.NotAConstant;
        TypeBinding resolveType = this.expression.resolveType(blockScope);
        TypeBinding resolveType2 = this.type.resolveType(blockScope, true);
        if (resolveType != null && resolveType2 != null && this.type.hasNullTypeAnnotation(TypeReference.AnnotationPosition.ANY) && (!resolveType.isCompatibleWith(resolveType2) || NullAnnotationMatching.analyse(resolveType2, resolveType, -1).isAnyMismatch())) {
            blockScope.problemReporter().nullAnnotationUnsupportedLocation(this.type);
        }
        if (resolveType == null || resolveType2 == null) {
            return null;
        }
        if (!resolveType2.isReifiable()) {
            blockScope.problemReporter().illegalInstanceOfGenericType(resolveType2, this);
        } else if (resolveType2.isValidBinding() && ((resolveType != TypeBinding.NULL && resolveType.isBaseType()) || !checkCastTypesCompatibility(blockScope, resolveType2, resolveType, null))) {
            blockScope.problemReporter().notCompatibleTypesError(this, resolveType, resolveType2);
        }
        BaseTypeBinding baseTypeBinding = TypeBinding.BOOLEAN;
        this.resolvedType = baseTypeBinding;
        return baseTypeBinding;
    }

    @Override
    public void tagAsUnnecessaryCast(Scope scope, TypeBinding typeBinding) {
        if (this.expression.resolvedType != TypeBinding.NULL) {
            scope.problemReporter().unnecessaryInstanceof(this, typeBinding);
        }
    }

    @Override
    public void traverse(ASTVisitor aSTVisitor, BlockScope blockScope) {
        if (aSTVisitor.visit(this, blockScope)) {
            this.expression.traverse(aSTVisitor, blockScope);
            this.type.traverse(aSTVisitor, blockScope);
        }
        aSTVisitor.endVisit(this, blockScope);
    }
}
