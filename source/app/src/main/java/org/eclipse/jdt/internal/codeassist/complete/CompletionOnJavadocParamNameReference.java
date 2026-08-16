package org.eclipse.jdt.internal.codeassist.complete;

import org.eclipse.jdt.internal.compiler.ast.JavadocSingleNameReference;
import org.eclipse.jdt.internal.compiler.lookup.BlockScope;
import org.eclipse.jdt.internal.compiler.lookup.TypeBinding;

public class CompletionOnJavadocParamNameReference extends JavadocSingleNameReference implements CompletionOnJavadoc {
    public int completionFlags;
    public char[][] missingParams;
    public char[][] missingTypeParams;

    public CompletionOnJavadocParamNameReference(char[] cArr, long j10, int i10, int i11) {
        super(cArr, j10, i10, i11);
        this.completionFlags = 1;
    }

    @Override
    public void addCompletionFlags(int i10) {
        this.completionFlags = i10 | this.completionFlags;
    }

    @Override
    public int getCompletionFlags() {
        return this.completionFlags;
    }

    @Override
    public StringBuffer printExpression(int i10, StringBuffer stringBuffer) {
        stringBuffer.append("<CompletionOnJavadocParamNameReference:");
        if (this.token != null) {
            super.printExpression(i10, stringBuffer);
        }
        stringBuffer.append('>');
        return stringBuffer;
    }

    @Override
    public TypeBinding reportError(BlockScope blockScope) {
        return null;
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public CompletionOnJavadocParamNameReference(JavadocSingleNameReference javadocSingleNameReference) {
        super(javadocSingleNameReference.token, (javadocSingleNameReference.sourceStart << 32) + javadocSingleNameReference.sourceEnd, r5, r5);
        int i10 = javadocSingleNameReference.tagSourceStart;
        this.completionFlags = 1;
    }
}
