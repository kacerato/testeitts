package org.eclipse.jdt.core.dom;

public abstract class Expression extends ASTNode {
    public Expression(AST ast) {
        super(ast);
    }

    public final boolean resolveBoxing() {
        return this.ast.getBindingResolver().resolveBoxing(this);
    }

    public final Object resolveConstantExpressionValue() {
        return this.ast.getBindingResolver().resolveConstantExpressionValue(this);
    }

    public final ITypeBinding resolveTypeBinding() {
        return this.ast.getBindingResolver().resolveExpressionType(this);
    }

    public final boolean resolveUnboxing() {
        return this.ast.getBindingResolver().resolveUnboxing(this);
    }
}
