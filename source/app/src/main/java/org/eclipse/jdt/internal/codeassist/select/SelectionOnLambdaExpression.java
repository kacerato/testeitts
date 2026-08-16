package org.eclipse.jdt.internal.codeassist.select;

import org.eclipse.jdt.internal.compiler.ast.LambdaExpression;
import org.eclipse.jdt.internal.compiler.lookup.BlockScope;
import org.eclipse.jdt.internal.compiler.lookup.TypeBinding;

public class SelectionOnLambdaExpression extends LambdaExpression {
    public SelectionOnLambdaExpression(LambdaExpression lambdaExpression) {
        super(lambdaExpression.compilationResult(), true);
        this.sourceStart = lambdaExpression.sourceStart;
        this.sourceEnd = lambdaExpression.sourceEnd;
        this.hasParentheses = lambdaExpression.hasParentheses;
        this.statementEnd = lambdaExpression.statementEnd;
        setBody(lambdaExpression.body());
        setArguments(lambdaExpression.arguments());
        setArrowPosition(lambdaExpression.arrowPosition());
    }

    @Override
    public TypeBinding resolveType(BlockScope blockScope, boolean z10) {
        TypeBinding resolveType = super.resolveType(blockScope, z10);
        if (this.expectedType == null || this.original != this) {
            return resolveType;
        }
        throw new SelectionNodeFound(this.descriptor);
    }
}
