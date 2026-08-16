package org.eclipse.jdt.internal.codeassist.complete;

import org.eclipse.jdt.internal.compiler.ast.SingleNameReference;
import org.eclipse.jdt.internal.compiler.lookup.BlockScope;
import org.eclipse.jdt.internal.compiler.lookup.MethodScope;
import org.eclipse.jdt.internal.compiler.lookup.TypeBinding;

public class CompletionOnSingleNameReference extends SingleNameReference {
    public boolean canBeExplicitConstructor;
    public boolean isInsideAnnotationAttribute;
    public boolean isPrecededByModifiers;
    public char[][] possibleKeywords;

    public CompletionOnSingleNameReference(char[] cArr, long j10, boolean z10) {
        this(cArr, j10, null, false, z10);
    }

    @Override
    public StringBuffer printExpression(int i10, StringBuffer stringBuffer) {
        stringBuffer.append("<CompleteOnName:");
        StringBuffer printExpression = super.printExpression(0, stringBuffer);
        printExpression.append('>');
        return printExpression;
    }

    @Override
    public TypeBinding resolveType(BlockScope blockScope) {
        if (blockScope instanceof MethodScope) {
            throw new CompletionNodeFound(this, blockScope, ((MethodScope) blockScope).insideTypeAnnotation);
        }
        throw new CompletionNodeFound(this, blockScope);
    }

    public CompletionOnSingleNameReference(char[] cArr, long j10, char[][] cArr2, boolean z10, boolean z11) {
        super(cArr, j10);
        this.possibleKeywords = cArr2;
        this.canBeExplicitConstructor = z10;
        this.isInsideAnnotationAttribute = z11;
    }
}
