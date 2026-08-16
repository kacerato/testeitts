package org.eclipse.jdt.internal.codeassist.select;

import org.eclipse.jdt.internal.compiler.ast.SuperReference;
import org.eclipse.jdt.internal.compiler.lookup.BlockScope;
import org.eclipse.jdt.internal.compiler.lookup.TypeBinding;

public class SelectionOnSuperReference extends SuperReference {
    public SelectionOnSuperReference(int i10, int i11) {
        super(i10, i11);
    }

    @Override
    public StringBuffer printExpression(int i10, StringBuffer stringBuffer) {
        stringBuffer.append("<SelectOnSuper:");
        StringBuffer printExpression = super.printExpression(0, stringBuffer);
        printExpression.append('>');
        return printExpression;
    }

    @Override
    public TypeBinding resolveType(BlockScope blockScope) {
        TypeBinding resolveType = super.resolveType(blockScope);
        if (resolveType == null || !resolveType.isValidBinding()) {
            throw new SelectionNodeFound();
        }
        throw new SelectionNodeFound(resolveType);
    }
}
