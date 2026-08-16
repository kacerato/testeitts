package org.eclipse.jdt.internal.codeassist.complete;

import org.eclipse.jdt.internal.compiler.ast.Annotation;
import org.eclipse.jdt.internal.compiler.ast.SingleTypeReference;
import org.eclipse.jdt.internal.compiler.ast.TypeReference;
import org.eclipse.jdt.internal.compiler.lookup.BlockScope;
import org.eclipse.jdt.internal.compiler.lookup.ReferenceBinding;
import org.eclipse.jdt.internal.compiler.lookup.Scope;
import org.eclipse.jdt.internal.compiler.lookup.TypeBinding;

public class CompletionOnSingleTypeReference extends SingleTypeReference {
    public static final int K_CLASS = 1;
    public static final int K_EXCEPTION = 3;
    public static final int K_INTERFACE = 2;
    public static final int K_TYPE = 0;
    public CompletionOnFieldType fieldTypeCompletionNode;
    public boolean isCompletionNode;
    public boolean isConstructorType;
    private int kind;

    public CompletionOnSingleTypeReference(char[] cArr, long j10) {
        this(cArr, j10, 0);
    }

    @Override
    public void aboutToResolve(Scope scope) {
        getTypeBinding(scope);
    }

    @Override
    public TypeReference augmentTypeWithAdditionalDimensions(int i10, Annotation[][] annotationArr, boolean z10) {
        return this;
    }

    @Override
    public TypeBinding getTypeBinding(Scope scope) {
        if (this.fieldTypeCompletionNode != null) {
            throw new CompletionNodeFound(this.fieldTypeCompletionNode, scope);
        }
        if (this.isCompletionNode) {
            throw new CompletionNodeFound(this, scope);
        }
        return super.getTypeBinding(scope);
    }

    public boolean isClass() {
        return this.kind == 1;
    }

    public boolean isException() {
        return this.kind == 3;
    }

    public boolean isInterface() {
        return this.kind == 2;
    }

    public boolean isSuperType() {
        int i10 = this.kind;
        return i10 == 1 || i10 == 2;
    }

    @Override
    public StringBuffer printExpression(int i10, StringBuffer stringBuffer) {
        int i11 = this.kind;
        if (i11 == 1) {
            stringBuffer.append("<CompleteOnClass:");
        } else if (i11 == 2) {
            stringBuffer.append("<CompleteOnInterface:");
        } else if (i11 != 3) {
            stringBuffer.append("<CompleteOnType:");
        } else {
            stringBuffer.append("<CompleteOnException:");
        }
        stringBuffer.append(this.token);
        stringBuffer.append('>');
        return stringBuffer;
    }

    @Override
    public TypeBinding resolveTypeEnclosing(BlockScope blockScope, ReferenceBinding referenceBinding) {
        if (this.fieldTypeCompletionNode != null) {
            throw new CompletionNodeFound(this.fieldTypeCompletionNode, blockScope);
        }
        if (this.isCompletionNode) {
            throw new CompletionNodeFound(this, referenceBinding, blockScope);
        }
        return super.resolveTypeEnclosing(blockScope, referenceBinding);
    }

    public void setKind(int i10) {
        this.kind = i10;
    }

    public CompletionOnSingleTypeReference(char[] cArr, long j10, int i10) {
        super(cArr, j10);
        this.isCompletionNode = true;
        this.kind = i10;
    }
}
