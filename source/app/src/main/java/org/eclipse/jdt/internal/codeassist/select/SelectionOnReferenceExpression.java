package org.eclipse.jdt.internal.codeassist.select;

import org.eclipse.jdt.internal.compiler.ast.ReferenceExpression;
import org.eclipse.jdt.internal.compiler.lookup.BlockScope;
import org.eclipse.jdt.internal.compiler.lookup.TypeBinding;
import org.eclipse.jdt.internal.compiler.parser.Scanner;

public class SelectionOnReferenceExpression extends ReferenceExpression {
    public SelectionOnReferenceExpression(ReferenceExpression referenceExpression, Scanner scanner) {
        super(scanner);
        initialize(referenceExpression.compilationResult, referenceExpression.lhs, referenceExpression.typeArguments, referenceExpression.selector, referenceExpression.sourceEnd);
    }

    @Override
    public TypeBinding resolveType(BlockScope blockScope) {
        TypeBinding resolveType = super.resolveType(blockScope);
        if (this.expectedType == null || this.original != this) {
            return resolveType;
        }
        throw new SelectionNodeFound(this.descriptor);
    }
}
