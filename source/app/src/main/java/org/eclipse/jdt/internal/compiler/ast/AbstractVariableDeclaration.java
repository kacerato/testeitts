package org.eclipse.jdt.internal.compiler.ast;

import org.eclipse.jdt.internal.compiler.flow.FlowContext;
import org.eclipse.jdt.internal.compiler.flow.FlowInfo;
import org.eclipse.jdt.internal.compiler.lookup.BlockScope;
import org.eclipse.jdt.internal.compiler.lookup.InferenceContext18;
import org.eclipse.jdt.internal.compiler.lookup.InvocationSite;
import org.eclipse.jdt.internal.compiler.lookup.ReferenceBinding;
import org.eclipse.jdt.internal.compiler.lookup.Scope;
import org.eclipse.jdt.internal.compiler.lookup.TypeBinding;
import org.eclipse.jdt.internal.core.search.indexing.IIndexConstants;
import w2.C15883c;

public abstract class AbstractVariableDeclaration extends Statement implements InvocationSite {
    public static final int ENUM_CONSTANT = 3;
    public static final int FIELD = 1;
    public static final int INITIALIZER = 2;
    public static final int LOCAL_VARIABLE = 4;
    public static final int PARAMETER = 5;
    public static final int TYPE_PARAMETER = 6;
    public Annotation[] annotations;
    public int declarationEnd;
    public int declarationSourceEnd;
    public int declarationSourceStart;
    public int hiddenVariableDepth;
    public Expression initialization;
    public int modifiers;
    public int modifiersSourceStart;
    public char[] name;
    public TypeReference type;

    @Override
    public FlowInfo analyseCode(BlockScope blockScope, FlowContext flowContext, FlowInfo flowInfo) {
        return flowInfo;
    }

    @Override
    public InferenceContext18 freshInferenceContext(Scope scope) {
        return null;
    }

    @Override
    public TypeBinding[] genericTypeArguments() {
        return null;
    }

    public abstract int getKind();

    @Override
    public boolean isSuperAccess() {
        return false;
    }

    @Override
    public boolean isTypeAccess() {
        return false;
    }

    public StringBuffer printAsExpression(int i10, StringBuffer stringBuffer) {
        ASTNode.printIndent(i10, stringBuffer);
        ASTNode.printModifiers(this.modifiers, stringBuffer);
        Annotation[] annotationArr = this.annotations;
        if (annotationArr != null) {
            ASTNode.printAnnotations(annotationArr, stringBuffer);
            stringBuffer.append(C15883c.f126249O);
        }
        TypeReference typeReference = this.type;
        if (typeReference != null) {
            typeReference.print(0, stringBuffer).append(C15883c.f126249O);
        }
        stringBuffer.append(this.name);
        if (getKind() == 3) {
            Expression expression = this.initialization;
            if (expression != null) {
                expression.printExpression(i10, stringBuffer);
            }
        } else if (this.initialization != null) {
            stringBuffer.append(" = ");
            this.initialization.printExpression(i10, stringBuffer);
        }
        return stringBuffer;
    }

    @Override
    public StringBuffer printStatement(int i10, StringBuffer stringBuffer) {
        printAsExpression(i10, stringBuffer);
        if (getKind() != 3) {
            stringBuffer.append(';');
            return stringBuffer;
        }
        stringBuffer.append(IIndexConstants.PARAMETER_SEPARATOR);
        return stringBuffer;
    }

    @Override
    public void resolve(BlockScope blockScope) {
    }

    @Override
    public void setActualReceiverType(ReferenceBinding referenceBinding) {
    }

    @Override
    public void setDepth(int i10) {
        this.hiddenVariableDepth = i10;
    }

    @Override
    public void setFieldIndex(int i10) {
    }
}
