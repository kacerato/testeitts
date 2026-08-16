package org.eclipse.jdt.internal.eval;

import org.eclipse.jdt.internal.compiler.ast.ThisReference;
import org.eclipse.jdt.internal.compiler.codegen.CodeStream;
import org.eclipse.jdt.internal.compiler.codegen.Opcodes;
import org.eclipse.jdt.internal.compiler.impl.Constant;
import org.eclipse.jdt.internal.compiler.lookup.BlockScope;
import org.eclipse.jdt.internal.compiler.lookup.FieldBinding;
import org.eclipse.jdt.internal.compiler.lookup.InferenceContext18;
import org.eclipse.jdt.internal.compiler.lookup.InvocationSite;
import org.eclipse.jdt.internal.compiler.lookup.MethodScope;
import org.eclipse.jdt.internal.compiler.lookup.ReferenceBinding;
import org.eclipse.jdt.internal.compiler.lookup.Scope;
import org.eclipse.jdt.internal.compiler.lookup.SourceTypeBinding;
import org.eclipse.jdt.internal.compiler.lookup.TypeBinding;

public class CodeSnippetThisReference extends ThisReference implements EvaluationConstants, InvocationSite {
    FieldBinding delegateThis;
    EvaluationContext evaluationContext;
    boolean isImplicit;

    public CodeSnippetThisReference(int i10, int i11, EvaluationContext evaluationContext, boolean z10) {
        super(i10, i11);
        this.evaluationContext = evaluationContext;
        this.isImplicit = z10;
    }

    @Override
    public boolean checkAccess(BlockScope blockScope, ReferenceBinding referenceBinding) {
        MethodScope methodScope = blockScope.methodScope();
        EvaluationContext evaluationContext = this.evaluationContext;
        if (evaluationContext.isConstructorCall) {
            methodScope.problemReporter().fieldsOrThisBeforeConstructorInvocation(this);
            return false;
        }
        if (evaluationContext.declaringTypeName == null || evaluationContext.isStatic) {
            methodScope.problemReporter().errorThisSuperInStatic(this);
            return false;
        }
        blockScope.tagAsAccessingEnclosingInstanceStateOf(referenceBinding, false);
        return true;
    }

    @Override
    public InferenceContext18 freshInferenceContext(Scope scope) {
        return null;
    }

    @Override
    public void generateCode(BlockScope blockScope, CodeStream codeStream, boolean z10) {
        int i10 = codeStream.position;
        if (z10) {
            codeStream.aload_0();
            codeStream.fieldAccess(Opcodes.OPC_getfield, this.delegateThis, null);
        }
        codeStream.recordPositionsFrom(i10, this.sourceStart);
    }

    @Override
    public TypeBinding[] genericTypeArguments() {
        return null;
    }

    @Override
    public boolean isSuperAccess() {
        return false;
    }

    @Override
    public boolean isTypeAccess() {
        return false;
    }

    @Override
    public StringBuffer printExpression(int i10, StringBuffer stringBuffer) {
        char[] cArr = this.evaluationContext.declaringTypeName;
        stringBuffer.append('(');
        if (cArr == null) {
            stringBuffer.append("<NO DECLARING TYPE>");
        } else {
            stringBuffer.append(cArr);
        }
        stringBuffer.append(")this");
        return stringBuffer;
    }

    @Override
    public TypeBinding resolveType(BlockScope blockScope) {
        this.constant = Constant.NotAConstant;
        SourceTypeBinding enclosingSourceType = blockScope.enclosingSourceType();
        MethodScope methodScope = blockScope.methodScope();
        if (!this.isImplicit && !checkAccess(blockScope, enclosingSourceType)) {
            return null;
        }
        FieldBinding field = blockScope.getField(enclosingSourceType, EvaluationConstants.DELEGATE_THIS, this);
        this.delegateThis = field;
        if (field == null || !field.isValidBinding()) {
            methodScope.problemReporter().errorThisSuperInStatic(this);
            return null;
        }
        TypeBinding typeBinding = this.delegateThis.type;
        this.resolvedType = typeBinding;
        return typeBinding;
    }

    @Override
    public void setActualReceiverType(ReferenceBinding referenceBinding) {
    }

    @Override
    public void setDepth(int i10) {
    }

    @Override
    public void setFieldIndex(int i10) {
    }
}
