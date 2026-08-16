package org.eclipse.jdt.internal.codeassist.select;

import org.eclipse.jdt.internal.compiler.ast.FieldReference;
import org.eclipse.jdt.internal.compiler.lookup.BlockScope;
import org.eclipse.jdt.internal.compiler.lookup.FieldBinding;
import org.eclipse.jdt.internal.compiler.lookup.TypeBinding;

public class SelectionOnFieldReference extends FieldReference {
    public SelectionOnFieldReference(char[] cArr, long j10) {
        super(cArr, j10);
    }

    @Override
    public StringBuffer printExpression(int i10, StringBuffer stringBuffer) {
        stringBuffer.append("<SelectionOnFieldReference:");
        StringBuffer printExpression = super.printExpression(0, stringBuffer);
        printExpression.append('>');
        return printExpression;
    }

    @Override
    public TypeBinding resolveType(BlockScope blockScope) {
        super.resolveType(blockScope);
        FieldBinding fieldBinding = this.binding;
        if (fieldBinding == null || !(fieldBinding.isValidBinding() || this.binding.problemId() == 2 || this.binding.problemId() == 5 || this.binding.problemId() == 6 || this.binding.problemId() == 7)) {
            throw new SelectionNodeFound();
        }
        throw new SelectionNodeFound(this.binding);
    }
}
