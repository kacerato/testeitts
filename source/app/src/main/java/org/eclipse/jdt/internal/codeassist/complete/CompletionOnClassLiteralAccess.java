package org.eclipse.jdt.internal.codeassist.complete;

import org.eclipse.jdt.internal.compiler.ast.ClassLiteralAccess;
import org.eclipse.jdt.internal.compiler.ast.TypeReference;
import org.eclipse.jdt.internal.compiler.lookup.BlockScope;
import org.eclipse.jdt.internal.compiler.lookup.TypeBinding;

public class CompletionOnClassLiteralAccess extends ClassLiteralAccess {
    public int classStart;
    public char[] completionIdentifier;

    public CompletionOnClassLiteralAccess(long j10, TypeReference typeReference) {
        super((int) j10, typeReference);
        this.classStart = (int) (j10 >>> 32);
    }

    @Override
    public StringBuffer printExpression(int i10, StringBuffer stringBuffer) {
        stringBuffer.append("<CompleteOnClassLiteralAccess:");
        StringBuffer print = this.type.print(0, stringBuffer);
        print.append('.');
        print.append(this.completionIdentifier);
        print.append('>');
        return print;
    }

    @Override
    public TypeBinding resolveType(BlockScope blockScope) {
        if (super.resolveType(blockScope) == null) {
            throw new CompletionNodeFound();
        }
        throw new CompletionNodeFound(this, this.targetType, blockScope);
    }
}
