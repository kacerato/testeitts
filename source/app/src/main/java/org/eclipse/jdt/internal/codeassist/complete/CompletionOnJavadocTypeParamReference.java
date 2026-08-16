package org.eclipse.jdt.internal.codeassist.complete;

import org.eclipse.jdt.internal.compiler.ast.JavadocSingleTypeReference;
import org.eclipse.jdt.internal.compiler.lookup.BlockScope;
import org.eclipse.jdt.internal.compiler.lookup.TypeBinding;

public class CompletionOnJavadocTypeParamReference extends JavadocSingleTypeReference implements CompletionOnJavadoc {
    public int completionFlags;
    public char[][] missingParams;

    public CompletionOnJavadocTypeParamReference(char[] cArr, long j10, int i10, int i11) {
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
        stringBuffer.append("<CompletionOnJavadocTypeParamReference:");
        if (this.token != null) {
            super.printExpression(i10, stringBuffer);
        }
        stringBuffer.append('>');
        return stringBuffer;
    }

    public TypeBinding reportError(BlockScope blockScope) {
        return null;
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public CompletionOnJavadocTypeParamReference(JavadocSingleTypeReference javadocSingleTypeReference) {
        super(javadocSingleTypeReference.token, (javadocSingleTypeReference.sourceStart << 32) + javadocSingleTypeReference.sourceEnd, r5, r5);
        int i10 = javadocSingleTypeReference.tagSourceStart;
        this.completionFlags = 1;
    }
}
