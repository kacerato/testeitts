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

public class QualifiedThisReference extends ThisReference {
    ReferenceBinding currentCompatibleType;
    public TypeReference qualification;

    public QualifiedThisReference(TypeReference typeReference, int i10, int i11) {
        super(i10, i11);
        this.qualification = typeReference;
        typeReference.bits |= 1073741824;
        this.sourceStart = typeReference.sourceStart;
    }

    @Override
    public FlowInfo analyseCode(BlockScope blockScope, FlowContext flowContext, FlowInfo flowInfo) {
        return flowInfo;
    }

    public int findCompatibleEnclosing(ReferenceBinding referenceBinding, TypeBinding typeBinding, BlockScope blockScope) {
        this.currentCompatibleType = referenceBinding;
        int i10 = 0;
        while (true) {
            ReferenceBinding referenceBinding2 = this.currentCompatibleType;
            if (referenceBinding2 == null || !TypeBinding.notEquals(referenceBinding2, typeBinding)) {
                break;
            }
            i10++;
            this.currentCompatibleType = this.currentCompatibleType.isStatic() ? null : this.currentCompatibleType.enclosingType();
        }
        return i10;
    }

    @Override
    public void generateCode(BlockScope blockScope, CodeStream codeStream, boolean z10) {
        int i10 = codeStream.position;
        if (z10) {
            if ((this.bits & ASTNode.DepthMASK) != 0) {
                codeStream.generateOuterAccess(blockScope.getEmulationPath(this.currentCompatibleType, true, false), this, this.currentCompatibleType, blockScope);
            } else {
                codeStream.aload_0();
            }
        }
        codeStream.recordPositionsFrom(i10, this.sourceStart);
    }

    @Override
    public StringBuffer printExpression(int i10, StringBuffer stringBuffer) {
        StringBuffer print = this.qualification.print(0, stringBuffer);
        print.append(".this");
        return print;
    }

    @Override
    public TypeBinding resolveType(BlockScope blockScope) {
        MethodBinding referenceMethodBinding;
        this.constant = Constant.NotAConstant;
        TypeBinding resolveType = this.qualification.resolveType(blockScope, true);
        if (resolveType == null || !resolveType.isValidBinding()) {
            return null;
        }
        TypeBinding erasure = resolveType.erasure();
        if (erasure instanceof ReferenceBinding) {
            this.resolvedType = blockScope.environment().convertToParameterizedType((ReferenceBinding) erasure);
        } else {
            this.resolvedType = erasure;
        }
        int findCompatibleEnclosing = findCompatibleEnclosing(blockScope.referenceType().binding, erasure, blockScope);
        this.bits = (this.bits & (-8161)) | ((findCompatibleEnclosing & 255) << 5);
        ReferenceBinding referenceBinding = this.currentCompatibleType;
        if (referenceBinding == null) {
            if (this.resolvedType.isValidBinding()) {
                blockScope.problemReporter().noSuchEnclosingInstance(erasure, this, false);
            }
            return this.resolvedType;
        }
        blockScope.tagAsAccessingEnclosingInstanceStateOf(referenceBinding, false);
        if (findCompatibleEnclosing == 0) {
            checkAccess(blockScope, null);
        }
        MethodScope namedMethodScope = blockScope.namedMethodScope();
        if (namedMethodScope != null && (referenceMethodBinding = namedMethodScope.referenceMethodBinding()) != null) {
            for (TypeBinding typeBinding = referenceMethodBinding.receiver; typeBinding != null; typeBinding = typeBinding.enclosingType()) {
                if (TypeBinding.equalsEquals(typeBinding, this.resolvedType)) {
                    this.resolvedType = typeBinding;
                    return typeBinding;
                }
            }
        }
        return this.resolvedType;
    }

    @Override
    public void traverse(ASTVisitor aSTVisitor, BlockScope blockScope) {
        if (aSTVisitor.visit(this, blockScope)) {
            this.qualification.traverse(aSTVisitor, blockScope);
        }
        aSTVisitor.endVisit(this, blockScope);
    }

    @Override
    public FlowInfo analyseCode(BlockScope blockScope, FlowContext flowContext, FlowInfo flowInfo, boolean z10) {
        return flowInfo;
    }

    @Override
    public void traverse(ASTVisitor aSTVisitor, ClassScope classScope) {
        if (aSTVisitor.visit(this, classScope)) {
            this.qualification.traverse(aSTVisitor, classScope);
        }
        aSTVisitor.endVisit(this, classScope);
    }
}
