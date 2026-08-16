package org.eclipse.jdt.internal.eval;

import org.eclipse.jdt.internal.compiler.ast.Expression;
import org.eclipse.jdt.internal.compiler.ast.ReturnStatement;
import org.eclipse.jdt.internal.compiler.ast.TryStatement;
import org.eclipse.jdt.internal.compiler.codegen.CodeStream;
import org.eclipse.jdt.internal.compiler.codegen.Opcodes;
import org.eclipse.jdt.internal.compiler.flow.FlowContext;
import org.eclipse.jdt.internal.compiler.flow.FlowInfo;
import org.eclipse.jdt.internal.compiler.impl.Constant;
import org.eclipse.jdt.internal.compiler.lookup.BlockScope;
import org.eclipse.jdt.internal.compiler.lookup.InferenceContext18;
import org.eclipse.jdt.internal.compiler.lookup.InvocationSite;
import org.eclipse.jdt.internal.compiler.lookup.MethodBinding;
import org.eclipse.jdt.internal.compiler.lookup.ReferenceBinding;
import org.eclipse.jdt.internal.compiler.lookup.Scope;
import org.eclipse.jdt.internal.compiler.lookup.TypeBinding;

public class CodeSnippetReturnStatement extends ReturnStatement implements InvocationSite, EvaluationConstants {
    MethodBinding setResultMethod;

    public CodeSnippetReturnStatement(Expression expression, int i10, int i11) {
        super(expression, i10, i11);
    }

    @Override
    public FlowInfo analyseCode(BlockScope blockScope, FlowContext flowContext, FlowInfo flowInfo) {
        FlowInfo analyseCode = super.analyseCode(blockScope, flowContext, flowInfo);
        this.expression.bits &= -17;
        return analyseCode;
    }

    @Override
    public InferenceContext18 freshInferenceContext(Scope scope) {
        return null;
    }

    @Override
    public void generateReturnBytecode(CodeStream codeStream) {
        codeStream.return_();
    }

    @Override
    public void generateStoreSaveValueIfNecessary(CodeStream codeStream) {
        TypeBinding typeBinding;
        TypeBinding typeBinding2;
        codeStream.aload_0();
        Expression expression = this.expression;
        if (expression == null || (typeBinding = expression.resolvedType) == TypeBinding.VOID) {
            codeStream.aconst_null();
            codeStream.generateClassLiteralAccessForType(TypeBinding.VOID, null);
        } else {
            int i10 = typeBinding.f102482id;
            if (i10 == 7 || i10 == 8) {
                codeStream.dup_x2();
                codeStream.pop();
            } else {
                codeStream.swap();
            }
            if (this.expression.resolvedType.isBaseType() && (typeBinding2 = this.expression.resolvedType) != TypeBinding.NULL) {
                codeStream.generateBoxingConversion(typeBinding2.f102482id);
            }
            codeStream.generateClassLiteralAccessForType(this.expression.resolvedType, null);
        }
        codeStream.invoke(Opcodes.OPC_invokevirtual, this.setResultMethod, null);
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
    public boolean needValue() {
        return true;
    }

    @Override
    public void prepareSaveValueLocation(TryStatement tryStatement) {
    }

    @Override
    public void resolve(BlockScope blockScope) {
        Expression expression = this.expression;
        if (expression == null || expression.resolveType(blockScope) == null) {
            return;
        }
        ReferenceBinding javaLangClass = blockScope.getJavaLangClass();
        if (!javaLangClass.isValidBinding()) {
            blockScope.problemReporter().codeSnippetMissingClass("java.lang.Class", this.sourceStart, this.sourceEnd);
            return;
        }
        ReferenceBinding javaLangObject = blockScope.getJavaLangObject();
        if (!javaLangObject.isValidBinding()) {
            blockScope.problemReporter().codeSnippetMissingClass("java.lang.Object", this.sourceStart, this.sourceEnd);
            return;
        }
        TypeBinding[] typeBindingArr = {javaLangObject, javaLangClass};
        char[] cArr = EvaluationConstants.SETRESULT_SELECTOR;
        MethodBinding implicitMethod = blockScope.getImplicitMethod(cArr, typeBindingArr, this);
        this.setResultMethod = implicitMethod;
        if (!implicitMethod.isValidBinding()) {
            blockScope.problemReporter().codeSnippetMissingMethod(EvaluationConstants.ROOT_FULL_CLASS_NAME, new String(cArr), new String(EvaluationConstants.SETRESULT_ARGUMENTS), this.sourceStart, this.sourceEnd);
            return;
        }
        Expression expression2 = this.expression;
        Constant constant = expression2.constant;
        if (constant != Constant.NotAConstant) {
            expression2.implicitConversion = constant.typeID() << 4;
        }
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
