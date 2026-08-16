package org.eclipse.jdt.internal.codeassist.complete;

import org.eclipse.jdt.internal.compiler.ast.Annotation;
import org.eclipse.jdt.internal.compiler.ast.QualifiedTypeReference;
import org.eclipse.jdt.internal.compiler.ast.TypeReference;
import org.eclipse.jdt.internal.compiler.lookup.Binding;
import org.eclipse.jdt.internal.compiler.lookup.Scope;
import org.eclipse.jdt.internal.compiler.lookup.TypeBinding;

public class CompletionOnQualifiedTypeReference extends QualifiedTypeReference {
    public static final int K_CLASS = 1;
    public static final int K_EXCEPTION = 3;
    public static final int K_INTERFACE = 2;
    public static final int K_TYPE = 0;
    public char[] completionIdentifier;
    public boolean isConstructorType;
    private int kind;

    public CompletionOnQualifiedTypeReference(char[][] cArr, char[] cArr2, long[] jArr) {
        this(cArr, cArr2, jArr, 0);
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
        Binding typeOrPackage = scope.parent.getTypeOrPackage(this.tokens);
        if (typeOrPackage.isValidBinding()) {
            throw new CompletionNodeFound(this, typeOrPackage, scope);
        }
        scope.problemReporter().invalidType(this, (TypeBinding) typeOrPackage);
        if (typeOrPackage.problemId() == 1) {
            throw new CompletionNodeFound(this, typeOrPackage, scope);
        }
        throw new CompletionNodeFound();
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
        int i12 = 0;
        while (true) {
            char[][] cArr = this.tokens;
            if (i12 >= cArr.length) {
                stringBuffer.append(this.completionIdentifier);
                stringBuffer.append('>');
                return stringBuffer;
            }
            stringBuffer.append(cArr[i12]);
            stringBuffer.append('.');
            i12++;
        }
    }

    public void setKind(int i10) {
        this.kind = i10;
    }

    public CompletionOnQualifiedTypeReference(char[][] cArr, char[] cArr2, long[] jArr, int i10) {
        super(cArr, jArr);
        this.completionIdentifier = cArr2;
        this.kind = i10;
    }
}
