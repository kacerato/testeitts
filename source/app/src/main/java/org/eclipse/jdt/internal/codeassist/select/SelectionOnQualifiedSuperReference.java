package org.eclipse.jdt.internal.codeassist.select;

import org.eclipse.jdt.internal.compiler.ast.QualifiedSuperReference;
import org.eclipse.jdt.internal.compiler.ast.TypeReference;
import org.eclipse.jdt.internal.compiler.lookup.BlockScope;
import org.eclipse.jdt.internal.compiler.lookup.TypeBinding;

public class SelectionOnQualifiedSuperReference extends QualifiedSuperReference {
    public SelectionOnQualifiedSuperReference(TypeReference typeReference, int i10, int i11) {
        super(typeReference, i10, i11);
    }

    @Override
    public StringBuffer printExpression(int i10, StringBuffer stringBuffer) {
        stringBuffer.append("<SelectOnQualifiedSuper:");
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
