package org.eclipse.jdt.internal.compiler.ast;

import org.eclipse.jdt.internal.compiler.ASTVisitor;
import org.eclipse.jdt.internal.compiler.codegen.CodeStream;
import org.eclipse.jdt.internal.compiler.flow.FlowContext;
import org.eclipse.jdt.internal.compiler.flow.FlowInfo;
import org.eclipse.jdt.internal.compiler.impl.Constant;
import org.eclipse.jdt.internal.compiler.lookup.BlockScope;
import org.eclipse.jdt.internal.compiler.lookup.ClassScope;
import org.eclipse.jdt.internal.compiler.lookup.MethodBinding;
import org.eclipse.jdt.internal.compiler.lookup.MethodScope;
import org.eclipse.jdt.internal.compiler.lookup.ReferenceBinding;
import org.eclipse.jdt.internal.compiler.lookup.TypeBinding;

public class ThisReference extends Reference {
    public ThisReference(int i10, int i11) {
        this.sourceStart = i10;
        this.sourceEnd = i11;
    }

    public static ThisReference implicitThis() {
        ThisReference thisReference = new ThisReference(0, 0);
        thisReference.bits |= 4;
        return thisReference;
    }

    @Override
    public FlowInfo analyseAssignment(BlockScope blockScope, FlowContext flowContext, FlowInfo flowInfo, Assignment assignment, boolean z10) {
        return flowInfo;
    }

    public boolean checkAccess(BlockScope blockScope, ReferenceBinding referenceBinding) {
        TypeDeclaration referenceType;
        MethodScope methodScope = blockScope.methodScope();
        if (methodScope.isConstructorCall) {
            methodScope.problemReporter().fieldsOrThisBeforeConstructorInvocation(this);
            return false;
        }
        if (methodScope.isStatic) {
            methodScope.problemReporter().errorThisSuperInStatic(this);
            return false;
        }
        if (isUnqualifiedSuper() && (referenceType = methodScope.referenceType()) != null && TypeDeclaration.kind(referenceType.modifiers) == 2) {
            methodScope.problemReporter().errorNoSuperInInterface(this);
            return false;
        }
        if (referenceBinding == null) {
            return true;
        }
        blockScope.tagAsAccessingEnclosingInstanceStateOf(referenceBinding, false);
        return true;
    }

    @Override
    public boolean checkNPE(BlockScope blockScope, FlowContext flowContext, FlowInfo flowInfo, int i10) {
        return true;
    }

    @Override
    public void generateAssignment(BlockScope blockScope, CodeStream codeStream, Assignment assignment, boolean z10) {
    }

    @Override
    public void generateCode(BlockScope blockScope, CodeStream codeStream, boolean z10) {
        int i10 = codeStream.position;
        if (z10) {
            codeStream.aload_0();
        }
        if ((this.bits & 4) == 0) {
            codeStream.recordPositionsFrom(i10, this.sourceStart);
        }
    }

    @Override
    public void generateCompoundAssignment(BlockScope blockScope, CodeStream codeStream, Expression expression, int i10, int i11, boolean z10) {
    }

    @Override
    public void generatePostIncrement(BlockScope blockScope, CodeStream codeStream, CompoundAssignment compoundAssignment, boolean z10) {
    }

    @Override
    public boolean isImplicitThis() {
        return (this.bits & 4) != 0;
    }

    @Override
    public boolean isThis() {
        return true;
    }

    @Override
    public int nullStatus(FlowInfo flowInfo, FlowContext flowContext) {
        return 4;
    }

    @Override
    public StringBuffer printExpression(int i10, StringBuffer stringBuffer) {
        if (isImplicitThis()) {
            return stringBuffer;
        }
        stringBuffer.append("this");
        return stringBuffer;
    }

    @Override
    public TypeBinding resolveType(BlockScope blockScope) {
        MethodBinding referenceMethodBinding;
        TypeBinding typeBinding;
        this.constant = Constant.NotAConstant;
        ReferenceBinding enclosingReceiverType = blockScope.enclosingReceiverType();
        if (!isImplicitThis() && !checkAccess(blockScope, enclosingReceiverType)) {
            return null;
        }
        this.resolvedType = enclosingReceiverType;
        MethodScope namedMethodScope = blockScope.namedMethodScope();
        if (namedMethodScope != null && (referenceMethodBinding = namedMethodScope.referenceMethodBinding()) != null && (typeBinding = referenceMethodBinding.receiver) != null && TypeBinding.equalsEquals(typeBinding, this.resolvedType)) {
            this.resolvedType = referenceMethodBinding.receiver;
        }
        return this.resolvedType;
    }

    @Override
    public void traverse(ASTVisitor aSTVisitor, BlockScope blockScope) {
        aSTVisitor.visit(this, blockScope);
        aSTVisitor.endVisit(this, blockScope);
    }

    @Override
    public void traverse(ASTVisitor aSTVisitor, ClassScope classScope) {
        aSTVisitor.visit(this, classScope);
        aSTVisitor.endVisit(this, classScope);
    }
}
